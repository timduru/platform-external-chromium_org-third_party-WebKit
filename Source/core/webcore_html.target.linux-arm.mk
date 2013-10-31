# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_WebKit_Source_core_webcore_html_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_core_webcore_prerequisites_gyp)/webcore_prerequisites.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp)/skia_skia_library_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/WebKit/Source/core/html/ClassList.cpp \
	third_party/WebKit/Source/core/html/DOMFormData.cpp \
	third_party/WebKit/Source/core/html/FormAssociatedElement.cpp \
	third_party/WebKit/Source/core/html/FormDataList.cpp \
	third_party/WebKit/Source/core/html/HTMLAllCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLAnchorElement.cpp \
	third_party/WebKit/Source/core/html/HTMLAppletElement.cpp \
	third_party/WebKit/Source/core/html/HTMLAreaElement.cpp \
	third_party/WebKit/Source/core/html/HTMLAudioElement.cpp \
	third_party/WebKit/Source/core/html/HTMLBRElement.cpp \
	third_party/WebKit/Source/core/html/HTMLBaseElement.cpp \
	third_party/WebKit/Source/core/html/HTMLBodyElement.cpp \
	third_party/WebKit/Source/core/html/HTMLButtonElement.cpp \
	third_party/WebKit/Source/core/html/HTMLCanvasElement.cpp \
	third_party/WebKit/Source/core/html/HTMLCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLDListElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDataListElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDetailsElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDialogElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDimension.cpp \
	third_party/WebKit/Source/core/html/HTMLDirectoryElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDivElement.cpp \
	third_party/WebKit/Source/core/html/HTMLDocument.cpp \
	third_party/WebKit/Source/core/html/HTMLElement.cpp \
	third_party/WebKit/Source/core/html/HTMLEmbedElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFieldSetElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFontElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFormControlsCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLFormControlElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFormControlElementWithState.cpp \
	third_party/WebKit/Source/core/html/HTMLFormElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFrameElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFrameElementBase.cpp \
	third_party/WebKit/Source/core/html/HTMLFrameOwnerElement.cpp \
	third_party/WebKit/Source/core/html/HTMLFrameSetElement.cpp \
	third_party/WebKit/Source/core/html/HTMLHRElement.cpp \
	third_party/WebKit/Source/core/html/HTMLHeadElement.cpp \
	third_party/WebKit/Source/core/html/HTMLHeadingElement.cpp \
	third_party/WebKit/Source/core/html/HTMLHtmlElement.cpp \
	third_party/WebKit/Source/core/html/HTMLIFrameElement.cpp \
	third_party/WebKit/Source/core/html/HTMLImageElement.cpp \
	third_party/WebKit/Source/core/html/HTMLImageLoader.cpp \
	third_party/WebKit/Source/core/html/HTMLImport.cpp \
	third_party/WebKit/Source/core/html/HTMLImportsController.cpp \
	third_party/WebKit/Source/core/html/HTMLImportLoader.cpp \
	third_party/WebKit/Source/core/html/HTMLInputElement.cpp \
	third_party/WebKit/Source/core/html/HTMLKeygenElement.cpp \
	third_party/WebKit/Source/core/html/HTMLLIElement.cpp \
	third_party/WebKit/Source/core/html/HTMLLabelElement.cpp \
	third_party/WebKit/Source/core/html/HTMLLegendElement.cpp \
	third_party/WebKit/Source/core/html/HTMLLinkElement.cpp \
	third_party/WebKit/Source/core/html/HTMLMapElement.cpp \
	third_party/WebKit/Source/core/html/HTMLMarqueeElement.cpp \
	third_party/WebKit/Source/core/html/HTMLMediaElement.cpp \
	third_party/WebKit/Source/core/html/HTMLMenuElement.cpp \
	third_party/WebKit/Source/core/html/HTMLMeterElement.cpp \
	third_party/WebKit/Source/core/html/HTMLModElement.cpp \
	third_party/WebKit/Source/core/html/HTMLNameCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLOListElement.cpp \
	third_party/WebKit/Source/core/html/HTMLObjectElement.cpp \
	third_party/WebKit/Source/core/html/HTMLOptGroupElement.cpp \
	third_party/WebKit/Source/core/html/HTMLOptionElement.cpp \
	third_party/WebKit/Source/core/html/HTMLOptionsCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLOutputElement.cpp \
	third_party/WebKit/Source/core/html/HTMLParagraphElement.cpp \
	third_party/WebKit/Source/core/html/HTMLParamElement.cpp \
	third_party/WebKit/Source/core/html/HTMLPlugInElement.cpp \
	third_party/WebKit/Source/core/html/HTMLPreElement.cpp \
	third_party/WebKit/Source/core/html/HTMLProgressElement.cpp \
	third_party/WebKit/Source/core/html/HTMLQuoteElement.cpp \
	third_party/WebKit/Source/core/html/HTMLScriptElement.cpp \
	third_party/WebKit/Source/core/html/HTMLSelectElement.cpp \
	third_party/WebKit/Source/core/html/HTMLSourceElement.cpp \
	third_party/WebKit/Source/core/html/HTMLSpanElement.cpp \
	third_party/WebKit/Source/core/html/HTMLStyleElement.cpp \
	third_party/WebKit/Source/core/html/HTMLSummaryElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableCaptionElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableCellElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableColElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTablePartElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableRowElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTableRowsCollection.cpp \
	third_party/WebKit/Source/core/html/HTMLTableSectionElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTemplateElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTextAreaElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTextFormControlElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTitleElement.cpp \
	third_party/WebKit/Source/core/html/HTMLTrackElement.cpp \
	third_party/WebKit/Source/core/html/HTMLUListElement.cpp \
	third_party/WebKit/Source/core/html/HTMLVideoElement.cpp \
	third_party/WebKit/Source/core/html/HTMLViewSourceDocument.cpp \
	third_party/WebKit/Source/core/html/ImageData.cpp \
	third_party/WebKit/Source/core/html/ImageDocument.cpp \
	third_party/WebKit/Source/core/html/LabelableElement.cpp \
	third_party/WebKit/Source/core/html/LabelsNodeList.cpp \
	third_party/WebKit/Source/core/html/LinkImport.cpp \
	third_party/WebKit/Source/core/html/LinkRelAttribute.cpp \
	third_party/WebKit/Source/core/html/LinkResource.cpp \
	third_party/WebKit/Source/core/html/MediaController.cpp \
	third_party/WebKit/Source/core/html/MediaDocument.cpp \
	third_party/WebKit/Source/core/html/MediaFragmentURIParser.cpp \
	third_party/WebKit/Source/core/html/MediaKeyEvent.cpp \
	third_party/WebKit/Source/core/html/HTMLMediaSource.cpp \
	third_party/WebKit/Source/core/html/PluginDocument.cpp \
	third_party/WebKit/Source/core/html/PublicURLManager.cpp \
	third_party/WebKit/Source/core/html/RadioNodeList.cpp \
	third_party/WebKit/Source/core/html/TextDocument.cpp \
	third_party/WebKit/Source/core/html/TimeRanges.cpp \
	third_party/WebKit/Source/core/html/ValidityState.cpp \
	third_party/WebKit/Source/core/html/canvas/ANGLEInstancedArrays.cpp \
	third_party/WebKit/Source/core/html/canvas/Canvas2DContextAttributes.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasContextAttributes.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasGradient.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasPathMethods.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasPattern.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasRenderingContext.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasRenderingContext2D.cpp \
	third_party/WebKit/Source/core/html/canvas/CanvasStyle.cpp \
	third_party/WebKit/Source/core/html/canvas/DataView.cpp \
	third_party/WebKit/Source/core/html/canvas/EXTFragDepth.cpp \
	third_party/WebKit/Source/core/html/canvas/EXTTextureFilterAnisotropic.cpp \
	third_party/WebKit/Source/core/html/canvas/OESStandardDerivatives.cpp \
	third_party/WebKit/Source/core/html/canvas/OESTextureFloat.cpp \
	third_party/WebKit/Source/core/html/canvas/OESTextureFloatLinear.cpp \
	third_party/WebKit/Source/core/html/canvas/OESTextureHalfFloat.cpp \
	third_party/WebKit/Source/core/html/canvas/OESTextureHalfFloatLinear.cpp \
	third_party/WebKit/Source/core/html/canvas/OESVertexArrayObject.cpp \
	third_party/WebKit/Source/core/html/canvas/OESElementIndexUint.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLBuffer.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLCompressedTextureATC.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLCompressedTexturePVRTC.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLCompressedTextureS3TC.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLContextAttributes.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLContextEvent.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLContextGroup.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLContextObject.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLDebugRendererInfo.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLDebugShaders.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLDepthTexture.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLDrawBuffers.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLExtension.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLFramebuffer.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLGetInfo.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLLoseContext.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLObject.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLProgram.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLRenderbuffer.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLRenderingContext.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLShader.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLShaderPrecisionFormat.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLSharedObject.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLTexture.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLUniformLocation.cpp \
	third_party/WebKit/Source/core/html/canvas/WebGLVertexArrayObjectOES.cpp \
	third_party/WebKit/Source/core/html/forms/BaseButtonInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseCheckableInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseChooserOnlyDateAndTimeInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseClickableWithKeyInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseDateAndTimeInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseMultipleFieldsDateAndTimeInputType.cpp \
	third_party/WebKit/Source/core/html/forms/BaseTextInputType.cpp \
	third_party/WebKit/Source/core/html/forms/ButtonInputType.cpp \
	third_party/WebKit/Source/core/html/forms/CheckboxInputType.cpp \
	third_party/WebKit/Source/core/html/forms/CheckedRadioButtons.cpp \
	third_party/WebKit/Source/core/html/forms/ColorInputType.cpp \
	third_party/WebKit/Source/core/html/forms/DateInputType.cpp \
	third_party/WebKit/Source/core/html/forms/DateTimeFieldsState.cpp \
	third_party/WebKit/Source/core/html/forms/DateTimeLocalInputType.cpp \
	third_party/WebKit/Source/core/html/forms/EmailInputType.cpp \
	third_party/WebKit/Source/core/html/forms/FileInputType.cpp \
	third_party/WebKit/Source/core/html/forms/FormController.cpp \
	third_party/WebKit/Source/core/html/forms/HiddenInputType.cpp \
	third_party/WebKit/Source/core/html/forms/ImageInputType.cpp \
	third_party/WebKit/Source/core/html/forms/InputType.cpp \
	third_party/WebKit/Source/core/html/forms/InputTypeNames.cpp \
	third_party/WebKit/Source/core/html/forms/InputTypeView.cpp \
	third_party/WebKit/Source/core/html/forms/MonthInputType.cpp \
	third_party/WebKit/Source/core/html/forms/NumberInputType.cpp \
	third_party/WebKit/Source/core/html/forms/PasswordInputType.cpp \
	third_party/WebKit/Source/core/html/forms/RadioInputType.cpp \
	third_party/WebKit/Source/core/html/forms/RangeInputType.cpp \
	third_party/WebKit/Source/core/html/forms/ResetInputType.cpp \
	third_party/WebKit/Source/core/html/forms/SearchInputType.cpp \
	third_party/WebKit/Source/core/html/forms/StepRange.cpp \
	third_party/WebKit/Source/core/html/forms/SubmitInputType.cpp \
	third_party/WebKit/Source/core/html/forms/TelephoneInputType.cpp \
	third_party/WebKit/Source/core/html/forms/TextFieldInputType.cpp \
	third_party/WebKit/Source/core/html/forms/TextInputType.cpp \
	third_party/WebKit/Source/core/html/forms/TimeInputType.cpp \
	third_party/WebKit/Source/core/html/forms/TypeAhead.cpp \
	third_party/WebKit/Source/core/html/forms/URLInputType.cpp \
	third_party/WebKit/Source/core/html/forms/ValidationMessage.cpp \
	third_party/WebKit/Source/core/html/forms/WeekInputType.cpp \
	third_party/WebKit/Source/core/html/parser/BackgroundHTMLParser.cpp \
	third_party/WebKit/Source/core/html/parser/BackgroundHTMLInputStream.cpp \
	third_party/WebKit/Source/core/html/parser/CSSPreloadScanner.cpp \
	third_party/WebKit/Source/core/html/parser/CompactHTMLToken.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLConstructionSite.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLDocumentParser.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLElementStack.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLEntityParser.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLEntitySearch.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLFormattingElementList.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLIdentifier.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLMetaCharsetParser.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLParserIdioms.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLParserOptions.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLParserScheduler.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLParserThread.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLPreloadScanner.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLResourcePreloader.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLScriptRunner.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLSourceTracker.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLSrcsetParser.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLTokenizer.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLTreeBuilder.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLTreeBuilderSimulator.cpp \
	third_party/WebKit/Source/core/html/parser/HTMLViewSourceParser.cpp \
	third_party/WebKit/Source/core/html/parser/TextDocumentParser.cpp \
	third_party/WebKit/Source/core/html/parser/XSSAuditor.cpp \
	third_party/WebKit/Source/core/html/parser/XSSAuditorDelegate.cpp \
	third_party/WebKit/Source/core/html/shadow/PickerIndicatorElement.cpp \
	third_party/WebKit/Source/core/html/shadow/ClearButtonElement.cpp \
	third_party/WebKit/Source/core/html/shadow/DateTimeEditElement.cpp \
	third_party/WebKit/Source/core/html/shadow/DateTimeFieldElement.cpp \
	third_party/WebKit/Source/core/html/shadow/DateTimeFieldElements.cpp \
	third_party/WebKit/Source/core/html/shadow/DateTimeNumericFieldElement.cpp \
	third_party/WebKit/Source/core/html/shadow/DateTimeSymbolicFieldElement.cpp \
	third_party/WebKit/Source/core/html/shadow/DetailsMarkerControl.cpp \
	third_party/WebKit/Source/core/html/shadow/HTMLContentElement.cpp \
	third_party/WebKit/Source/core/html/shadow/HTMLShadowElement.cpp \
	third_party/WebKit/Source/core/html/shadow/MediaControls.cpp \
	third_party/WebKit/Source/core/html/shadow/MediaControlElementTypes.cpp \
	third_party/WebKit/Source/core/html/shadow/MediaControlElements.cpp \
	third_party/WebKit/Source/core/html/shadow/MediaControlsChromium.cpp \
	third_party/WebKit/Source/core/html/shadow/MediaControlsChromiumAndroid.cpp \
	third_party/WebKit/Source/core/html/shadow/MeterShadowElement.cpp \
	third_party/WebKit/Source/core/html/shadow/PasswordGeneratorButtonElement.cpp \
	third_party/WebKit/Source/core/html/shadow/ProgressShadowElement.cpp \
	third_party/WebKit/Source/core/html/shadow/ShadowElementNames.cpp \
	third_party/WebKit/Source/core/html/shadow/SliderThumbElement.cpp \
	third_party/WebKit/Source/core/html/shadow/SpinButtonElement.cpp \
	third_party/WebKit/Source/core/html/shadow/TextControlInnerElements.cpp \
	third_party/WebKit/Source/core/html/ime/Composition.cpp \
	third_party/WebKit/Source/core/html/ime/InputMethodContext.cpp \
	third_party/WebKit/Source/core/html/track/InbandTextTrack.cpp \
	third_party/WebKit/Source/core/html/track/LoadableTextTrack.cpp \
	third_party/WebKit/Source/core/html/track/TextTrack.cpp \
	third_party/WebKit/Source/core/html/track/TextTrackCue.cpp \
	third_party/WebKit/Source/core/html/track/TextTrackCueList.cpp \
	third_party/WebKit/Source/core/html/track/TextTrackList.cpp \
	third_party/WebKit/Source/core/html/track/TextTrackRegion.cpp \
	third_party/WebKit/Source/core/html/track/TextTrackRegionList.cpp \
	third_party/WebKit/Source/core/html/track/TrackEvent.cpp \
	third_party/WebKit/Source/core/html/track/WebVTTElement.cpp \
	third_party/WebKit/Source/core/html/track/WebVTTParser.cpp \
	third_party/WebKit/Source/core/html/track/WebVTTTokenizer.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_DEFS_Debug := \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DBLINK_IMPLEMENTATION=1' \
	'-DINSIDE_BLINK' \
	'-DENABLE_CSS3_TEXT=0' \
	'-DENABLE_CSS_EXCLUSIONS=1' \
	'-DENABLE_CSS_REGIONS=1' \
	'-DENABLE_CUSTOM_SCHEME_HANDLER=0' \
	'-DENABLE_ENCRYPTED_MEDIA_V2=1' \
	'-DENABLE_SVG_FONTS=1' \
	'-DENABLE_GDI_FONTS_ON_WINDOWS=0' \
	'-DENABLE_TOUCH_ICON_LOADING=1' \
	'-DWTF_USE_CONCATENATED_IMPULSE_RESPONSES=1' \
	'-DENABLE_CALENDAR_PICKER=0' \
	'-DENABLE_FAST_MOBILE_SCROLLING=1' \
	'-DENABLE_INPUT_SPEECH=0' \
	'-DENABLE_LEGACY_NOTIFICATIONS=0' \
	'-DENABLE_MEDIA_CAPTURE=1' \
	'-DENABLE_ORIENTATION_EVENTS=1' \
	'-DENABLE_NAVIGATOR_CONTENT_UTILS=0' \
	'-DENABLE_OPENTYPE_VERTICAL=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DLIBXML_STATIC' \
	'-DLIBXSLT_STATIC' \
	'-DUSE_SYSTEM_LIBJPEG' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(gyp_shared_intermediate_dir)/blink \
	$(gyp_shared_intermediate_dir)/blink/bindings \
	$(LOCAL_PATH)/third_party/angle_dx11/include \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/libxml/linux/include \
	$(LOCAL_PATH)/third_party/libxml/src/include \
	$(LOCAL_PATH)/third_party/libxslt \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/sqlite \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/external/jpeg \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-c++0x-compat \
	-Wno-deprecated \
	-Wno-abi \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

MY_DEFS_Release := \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DBLINK_IMPLEMENTATION=1' \
	'-DINSIDE_BLINK' \
	'-DENABLE_CSS3_TEXT=0' \
	'-DENABLE_CSS_EXCLUSIONS=1' \
	'-DENABLE_CSS_REGIONS=1' \
	'-DENABLE_CUSTOM_SCHEME_HANDLER=0' \
	'-DENABLE_ENCRYPTED_MEDIA_V2=1' \
	'-DENABLE_SVG_FONTS=1' \
	'-DENABLE_GDI_FONTS_ON_WINDOWS=0' \
	'-DENABLE_TOUCH_ICON_LOADING=1' \
	'-DWTF_USE_CONCATENATED_IMPULSE_RESPONSES=1' \
	'-DENABLE_CALENDAR_PICKER=0' \
	'-DENABLE_FAST_MOBILE_SCROLLING=1' \
	'-DENABLE_INPUT_SPEECH=0' \
	'-DENABLE_LEGACY_NOTIFICATIONS=0' \
	'-DENABLE_MEDIA_CAPTURE=1' \
	'-DENABLE_ORIENTATION_EVENTS=1' \
	'-DENABLE_NAVIGATOR_CONTENT_UTILS=0' \
	'-DENABLE_OPENTYPE_VERTICAL=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DLIBXML_STATIC' \
	'-DLIBXSLT_STATIC' \
	'-DUSE_SYSTEM_LIBJPEG' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(gyp_shared_intermediate_dir)/blink \
	$(gyp_shared_intermediate_dir)/blink/bindings \
	$(LOCAL_PATH)/third_party/angle_dx11/include \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/libxml/linux/include \
	$(LOCAL_PATH)/third_party/libxml/src/include \
	$(LOCAL_PATH)/third_party/libxslt \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/sqlite \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/external/jpeg \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-c++0x-compat \
	-Wno-deprecated \
	-Wno-abi \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,--fatal-warnings \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--fatal-warnings \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	skia_skia_library_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_core_webcore_html_gyp

# Alias gyp target name.
.PHONY: webcore_html
webcore_html: third_party_WebKit_Source_core_webcore_html_gyp

include $(BUILD_STATIC_LIBRARY)
