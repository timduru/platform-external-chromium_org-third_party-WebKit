/*
 * Copyright (C) 2012 Google Inc. All rights reserved.
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

#ifndef FakeWebPlugin_h
#define FakeWebPlugin_h

#include "WebPlugin.h"

namespace blink {

class WebDragData;
class WebFrame;
class WebInputEvent;
class WebPluginContainer;
class WebURL;
class WebURLRequest;
class WebURLResponse;

class FakeWebPlugin : public WebPlugin {
public:
    FakeWebPlugin(blink::WebFrame*, const blink::WebPluginParams&);
    virtual ~FakeWebPlugin();

    // WebPlugin methods:
    virtual bool initialize(blink::WebPluginContainer*) OVERRIDE;
    virtual void destroy() OVERRIDE;
    virtual NPObject* scriptableObject() OVERRIDE { return 0; }
    virtual bool canProcessDrag() const OVERRIDE { return false; }
    virtual void paint(blink::WebCanvas*, const blink::WebRect&) OVERRIDE { }
    virtual void updateGeometry(const blink::WebRect& frameRect, const blink::WebRect& clipRect, const blink::WebVector<blink::WebRect>& cutOutsRects, bool isVisible) OVERRIDE { }
    virtual void updateFocus(bool) OVERRIDE { }
    virtual void updateVisibility(bool) OVERRIDE { }
    virtual bool acceptsInputEvents() OVERRIDE { return true; }
    virtual bool handleInputEvent(const blink::WebInputEvent&, blink::WebCursorInfo&) OVERRIDE { return false; }
    virtual bool handleDragStatusUpdate(blink::WebDragStatus, const blink::WebDragData&, blink::WebDragOperationsMask, const blink::WebPoint& position, const blink::WebPoint& screenPosition) OVERRIDE { return false; }
    virtual void didReceiveResponse(const blink::WebURLResponse&) OVERRIDE { }
    virtual void didReceiveData(const char* data, int dataLength) OVERRIDE { }
    virtual void didFinishLoading() OVERRIDE { }
    virtual void didFailLoading(const blink::WebURLError&) OVERRIDE { }
    virtual void didFinishLoadingFrameRequest(const blink::WebURL&, void* notifyData) OVERRIDE { }
    virtual void didFailLoadingFrameRequest(const blink::WebURL&, void* notifyData, const blink::WebURLError&) OVERRIDE { }
    virtual bool isPlaceholder() OVERRIDE { return false; }

private:
    WebFrame* m_frame;
    WebPluginContainer* m_container;
};

} // namespace blink

#endif // FakeWebPlugin_h
