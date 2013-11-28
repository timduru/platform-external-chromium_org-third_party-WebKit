{# http://www.chromium.org/blink/coding-style#TOC-License #}
/*
 * Copyright (C) 2013 Google Inc. All rights reserved.
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

{# FIXME: Rename to Python when switch #}
// This file has been auto-generated by code_generator_v8.pm. DO NOT MODIFY!

#include "config.h"
{% filter conditional(conditional_string) %}
#include "{{v8_class_name}}.h"

{% for filename in cpp_includes %}
#include "{{filename}}"
{% endfor %}

namespace WebCore {

static void initializeScriptWrappableForInterface({{cpp_class_name}}* object)
{
    if (ScriptWrappable::wrapperCanBeStoredInObject(object))
        ScriptWrappable::setTypeInfoInObject(object, &{{v8_class_name}}::wrapperTypeInfo);
    else
        ASSERT_NOT_REACHED();
}

} // namespace WebCore

// In ScriptWrappable::init, the use of a local function declaration has an issue on Windows:
// the local declaration does not pick up the surrounding namespace. Therefore, we provide this function
// in the global namespace.
// (More info on the MSVC bug here: http://connect.microsoft.com/VisualStudio/feedback/details/664619/the-namespace-of-local-function-declarations-in-c)
void webCoreInitializeScriptWrappableForInterface(WebCore::{{cpp_class_name}}* object)
{
    WebCore::initializeScriptWrappableForInterface(object);
}

namespace WebCore {
{% set to_active_dom_object = '%s::toActiveDOMObject' % v8_class_name
                              if is_active_dom_object else '0' %}
{% set visit_dom_wrapper = '%s::visitDOMWrapper' % v8_class_name
                           if has_visit_dom_wrapper else '0' %}
const WrapperTypeInfo {{v8_class_name}}::wrapperTypeInfo = { gin::kEmbedderBlink, {{v8_class_name}}::GetTemplate, {{v8_class_name}}::derefObject, {{to_active_dom_object}}, 0, {{visit_dom_wrapper}}, {{v8_class_name}}::installPerContextEnabledMethods, 0, WrapperTypeObjectPrototype };

namespace {{cpp_class_name}}V8Internal {

template <typename T> void V8_USE(T) { }

{# Attributes #}
{% from 'attributes.cpp' import attribute_getter, attribute_getter_callback,
       attribute_setter, attribute_setter_callback
   with context %}
{% for attribute in attributes if not attribute.constructor_type %}
{% for world_suffix in attribute.world_suffixes %}
{% if not attribute.has_custom_getter %}
{{attribute_getter(attribute, world_suffix)}}
{% endif %}
{{attribute_getter_callback(attribute, world_suffix)}}
{% if not attribute.is_read_only %}
{% if not attribute.has_custom_setter %}
{{attribute_setter(attribute, world_suffix)}}
{% endif %}
{{attribute_setter_callback(attribute, world_suffix)}}
{% endif %}
{% endfor %}
{% endfor %}
{% block constructor_getter %}{% endblock %}
{% block replaceable_attribute_setter_and_callback %}{% endblock %}
{% block security_check_functions %}{% endblock %}
{# Methods #}
{% from 'methods.cpp' import generate_method, overload_resolution_method,
       method_callback, origin_safe_method_getter with context %}
{% for method in methods %}
{% for world_suffix in method.world_suffixes %}
{% if not method.is_custom %}
{{generate_method(method, world_suffix)}}
{% endif %}
{% if method.overloads %}
{{overload_resolution_method(method.overloads, world_suffix)}}
{% endif %}
{% if not method.overload_index or method.overloads %}
{# A single callback is generated for overloaded methods #}
{{method_callback(method, world_suffix)}}
{% endif %}
{% if method.is_do_not_check_security %}
{{origin_safe_method_getter(method, world_suffix)}}
{% endif %}
{% endfor %}
{% endfor %}
{% block origin_safe_method_setter %}{% endblock %}
} // namespace {{cpp_class_name}}V8Internal

{% block class_attributes %}{% endblock %}
{% block class_accessors %}{% endblock %}
{% block class_methods %}{% endblock %}
{% block configure_class_template %}{% endblock %}
{% block get_template %}{% endblock %}
{% block has_instance_and_has_instance_in_any_world %}{% endblock %}
{% block install_per_context_attributes %}{% endblock %}
{% block install_per_context_methods %}{% endblock %}
{% block to_active_dom_object %}{% endblock %}
{% block create_wrapper_and_deref_object %}{% endblock %}
} // namespace WebCore
{% endfilter %}
