/*
 * Copyright (C) 2009 Google Inc. All rights reserved.
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
#include "V8Worker.h"

#include "bindings/v8/ExceptionMessages.h"
#include "bindings/v8/ExceptionState.h"
#include "bindings/v8/SerializedScriptValue.h"
#include "bindings/v8/V8Binding.h"
#include "bindings/v8/V8Utilities.h"
#include "core/workers/Worker.h"
#include "core/workers/WorkerGlobalScope.h"
#include "wtf/ArrayBuffer.h"

namespace WebCore {

void V8Worker::postMessageMethodCustom(const v8::FunctionCallbackInfo<v8::Value>& args)
{
    Worker* worker = V8Worker::toNative(args.Holder());
    MessagePortArray ports;
    ArrayBufferArray arrayBuffers;
    if (args.Length() > 1) {
        const int transferablesArgIndex = 1;
        bool notASequence = false;
        if (!extractTransferables(args[transferablesArgIndex], ports, arrayBuffers, notASequence, args.GetIsolate())) {
            if (notASequence)
                throwTypeError(ExceptionMessages::failedToExecute("postMessage", "Worker", ExceptionMessages::notAnArrayTypeArgumentOrValue(transferablesArgIndex + 1)), args.GetIsolate());
            return;
        }
    }
    bool didThrow = false;
    RefPtr<SerializedScriptValue> message =
        SerializedScriptValue::create(args[0],
                                      &ports,
                                      &arrayBuffers,
                                      didThrow,
                                      args.GetIsolate());
    if (didThrow)
        return;
    ExceptionState es(args.GetIsolate());
    worker->postMessage(message.release(), &ports, es);
    es.throwIfNeeded();
}

} // namespace WebCore
