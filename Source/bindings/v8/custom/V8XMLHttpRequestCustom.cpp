/*
 * Copyright (C) 2008, 2009, 2010 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "V8XMLHttpRequest.h"

#include "V8ArrayBuffer.h"
#include "V8ArrayBufferView.h"
#include "V8Blob.h"
#include "V8Document.h"
#include "V8FormData.h"
#include "V8HTMLDocument.h"
#include "bindings/v8/V8Binding.h"
#include "bindings/v8/V8Utilities.h"
#include "bindings/v8/custom/V8ArrayBufferCustom.h"
#include "core/dom/Document.h"
#include "core/inspector/InspectorInstrumentation.h"
#include "core/page/Frame.h"
#include "core/workers/WorkerGlobalScope.h"
#include "core/xml/XMLHttpRequest.h"
#include "wtf/ArrayBuffer.h"

namespace WebCore {

void V8XMLHttpRequest::constructorCustom(const v8::FunctionCallbackInfo<v8::Value>& args)
{
    ScriptExecutionContext* context = getScriptExecutionContext();

    RefPtr<SecurityOrigin> securityOrigin;
    if (context->isDocument()) {
        if (DOMWrapperWorld* world = isolatedWorldForEnteredContext())
            securityOrigin = world->isolatedWorldSecurityOrigin();
    }

    RefPtr<XMLHttpRequest> xmlHttpRequest = XMLHttpRequest::create(context, securityOrigin);

    v8::Handle<v8::Object> wrapper = args.Holder();
    V8DOMWrapper::associateObjectWithWrapper(xmlHttpRequest.release(), &info, wrapper, args.GetIsolate(), WrapperConfiguration::Dependent);
    args.GetReturnValue().Set(wrapper);
}

void V8XMLHttpRequest::responseTextAttrGetterCustom(v8::Local<v8::String> name, const v8::PropertyCallbackInfo<v8::Value>& info)
{
    XMLHttpRequest* xmlHttpRequest = V8XMLHttpRequest::toNative(info.Holder());
    ExceptionCode ec = 0;
    ScriptValue text = xmlHttpRequest->responseText(ec);
    if (ec) {
        setDOMException(ec, info.GetIsolate());
        return;
    }
    if (text.hasNoValue()) {
        v8SetReturnValue(info, v8String(emptyString(), info.GetIsolate()));
        return;
    }
    v8SetReturnValue(info, text.v8Value());
}

void V8XMLHttpRequest::responseAttrGetterCustom(v8::Local<v8::String> name, const v8::PropertyCallbackInfo<v8::Value>& info)
{
    XMLHttpRequest* xmlHttpRequest = V8XMLHttpRequest::toNative(info.Holder());

    switch (xmlHttpRequest->responseTypeCode()) {
    case XMLHttpRequest::ResponseTypeDefault:
    case XMLHttpRequest::ResponseTypeText:
        responseTextAttrGetterCustom(name, info);
        return;

    case XMLHttpRequest::ResponseTypeDocument:
        {
            ExceptionCode ec = 0;
            Document* document = xmlHttpRequest->responseXML(ec);
            if (ec) {
                setDOMException(ec, info.GetIsolate());
                return;
            }
            v8SetReturnValue(info, toV8Fast(document, info, xmlHttpRequest));
            return;
        }

    case XMLHttpRequest::ResponseTypeBlob:
        {
            ExceptionCode ec = 0;
            Blob* blob = xmlHttpRequest->responseBlob(ec);
            if (ec) {
                setDOMException(ec, info.GetIsolate());
                return;
            }
            v8SetReturnValue(info, toV8Fast(blob, info, xmlHttpRequest));
            return;
        }

    case XMLHttpRequest::ResponseTypeArrayBuffer:
        {
            ExceptionCode ec = 0;
            ArrayBuffer* arrayBuffer = xmlHttpRequest->responseArrayBuffer(ec);
            if (ec) {
                setDOMException(ec, info.GetIsolate());
                return;
            }
            if (arrayBuffer && !arrayBuffer->hasDeallocationObserver()) {
                arrayBuffer->setDeallocationObserver(V8ArrayBufferDeallocationObserver::instance());
                v8::V8::AdjustAmountOfExternalAllocatedMemory(arrayBuffer->byteLength());
            }
            v8SetReturnValue(info, toV8Fast(arrayBuffer, info, xmlHttpRequest));
            return;
        }
    }
}

void V8XMLHttpRequest::openMethodCustom(const v8::FunctionCallbackInfo<v8::Value>& args)
{
    // Four cases:
    // open(method, url)
    // open(method, url, async)
    // open(method, url, async, user)
    // open(method, url, async, user, passwd)

    if (args.Length() < 2) {
        throwNotEnoughArgumentsError(args.GetIsolate());
        return;
    }

    XMLHttpRequest* xmlHttpRequest = V8XMLHttpRequest::toNative(args.Holder());

    String method = toWebCoreString(args[0]);
    String urlstring = toWebCoreString(args[1]);

    ScriptExecutionContext* context = getScriptExecutionContext();
    KURL url = context->completeURL(urlstring);

    ExceptionCode ec = 0;

    if (args.Length() >= 3) {
        bool async = args[2]->BooleanValue();

        if (args.Length() >= 4 && !args[3]->IsUndefined()) {
            String user = toWebCoreStringWithNullCheck(args[3]);
            
            if (args.Length() >= 5 && !args[4]->IsUndefined()) {
                String passwd = toWebCoreStringWithNullCheck(args[4]);
                xmlHttpRequest->open(method, url, async, user, passwd, ec);
            } else
                xmlHttpRequest->open(method, url, async, user, ec);
        } else
            xmlHttpRequest->open(method, url, async, ec);
    } else
        xmlHttpRequest->open(method, url, ec);

    if (!ec)
        return;
    setDOMException(ec, args.GetIsolate());
}

static bool isDocumentType(v8::Handle<v8::Value> value, v8::Isolate* isolate, WrapperWorldType currentWorldType)
{
    // FIXME: add other document types.
    return V8Document::HasInstance(value, isolate, currentWorldType) || V8HTMLDocument::HasInstance(value, isolate, currentWorldType);
}

void V8XMLHttpRequest::sendMethodCustom(const v8::FunctionCallbackInfo<v8::Value>& args)
{
    XMLHttpRequest* xmlHttpRequest = V8XMLHttpRequest::toNative(args.Holder());

    InspectorInstrumentation::willSendXMLHttpRequest(xmlHttpRequest->scriptExecutionContext(), xmlHttpRequest->url());

    ExceptionCode ec = 0;
    if (args.Length() < 1)
        xmlHttpRequest->send(ec);
    else {
        v8::Handle<v8::Value> arg = args[0];
        WrapperWorldType currentWorldType = worldType(args.GetIsolate());
        if (isUndefinedOrNull(arg))
            xmlHttpRequest->send(ec);
        else if (isDocumentType(arg, args.GetIsolate(), currentWorldType)) {
            v8::Handle<v8::Object> object = v8::Handle<v8::Object>::Cast(arg);
            Document* document = V8Document::toNative(object);
            ASSERT(document);
            xmlHttpRequest->send(document, ec);
        } else if (V8Blob::HasInstance(arg, args.GetIsolate(), currentWorldType)) {
            v8::Handle<v8::Object> object = v8::Handle<v8::Object>::Cast(arg);
            Blob* blob = V8Blob::toNative(object);
            ASSERT(blob);
            xmlHttpRequest->send(blob, ec);
        } else if (V8FormData::HasInstance(arg, args.GetIsolate(), currentWorldType)) {
            v8::Handle<v8::Object> object = v8::Handle<v8::Object>::Cast(arg);
            DOMFormData* domFormData = V8FormData::toNative(object);
            ASSERT(domFormData);
            xmlHttpRequest->send(domFormData, ec);
        } else if (V8ArrayBuffer::HasInstance(arg, args.GetIsolate(), currentWorldType)) {
            v8::Handle<v8::Object> object = v8::Handle<v8::Object>::Cast(arg);
            ArrayBuffer* arrayBuffer = V8ArrayBuffer::toNative(object);
            ASSERT(arrayBuffer);
            xmlHttpRequest->send(arrayBuffer, ec);
        } else if (V8ArrayBufferView::HasInstance(arg, args.GetIsolate(), currentWorldType)) {
            v8::Handle<v8::Object> object = v8::Handle<v8::Object>::Cast(arg);
            ArrayBufferView* arrayBufferView = V8ArrayBufferView::toNative(object);
            ASSERT(arrayBufferView);
            xmlHttpRequest->send(arrayBufferView, ec);
        } else
            xmlHttpRequest->send(toWebCoreStringWithNullCheck(arg), ec);
    }

    if (!ec)
        return;

    setDOMException(ec, args.GetIsolate());
}

} // namespace WebCore