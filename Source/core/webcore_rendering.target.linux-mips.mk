# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_WebKit_Source_core_webcore_rendering_gyp
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
	third_party/WebKit/Source/core/rendering/AbstractInlineTextBox.cpp \
	third_party/WebKit/Source/core/rendering/AutoTableLayout.cpp \
	third_party/WebKit/Source/core/rendering/BidiRun.cpp \
	third_party/WebKit/Source/core/rendering/ClipRect.cpp \
	third_party/WebKit/Source/core/rendering/CompositedLayerMapping.cpp \
	third_party/WebKit/Source/core/rendering/CounterNode.cpp \
	third_party/WebKit/Source/core/rendering/EllipsisBox.cpp \
	third_party/WebKit/Source/core/rendering/FilterEffectRenderer.cpp \
	third_party/WebKit/Source/core/rendering/FixedTableLayout.cpp \
	third_party/WebKit/Source/core/rendering/FloatingObjects.cpp \
	third_party/WebKit/Source/core/rendering/FlowThreadController.cpp \
	third_party/WebKit/Source/core/rendering/TextAutosizer.cpp \
	third_party/WebKit/Source/core/rendering/HitTestingTransformState.cpp \
	third_party/WebKit/Source/core/rendering/HitTestLocation.cpp \
	third_party/WebKit/Source/core/rendering/HitTestResult.cpp \
	third_party/WebKit/Source/core/rendering/InlineBox.cpp \
	third_party/WebKit/Source/core/rendering/InlineFlowBox.cpp \
	third_party/WebKit/Source/core/rendering/InlineTextBox.cpp \
	third_party/WebKit/Source/core/rendering/ImageQualityController.cpp \
	third_party/WebKit/Source/core/rendering/LayoutState.cpp \
	third_party/WebKit/Source/core/rendering/OrderIterator.cpp \
	third_party/WebKit/Source/core/rendering/LayoutIndicator.cpp \
	third_party/WebKit/Source/core/rendering/LayoutRepainter.cpp \
	third_party/WebKit/Source/core/rendering/LineWidth.cpp \
	third_party/WebKit/Source/core/rendering/Pagination.cpp \
	third_party/WebKit/Source/core/rendering/PointerEventsHitRules.cpp \
	third_party/WebKit/Source/core/rendering/RenderApplet.cpp \
	third_party/WebKit/Source/core/rendering/RenderBR.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlock.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlockFlow.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlockLineLayout.cpp \
	third_party/WebKit/Source/core/rendering/RenderBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderBoxModelObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderButton.cpp \
	third_party/WebKit/Source/core/rendering/RenderCombineText.cpp \
	third_party/WebKit/Source/core/rendering/RenderCounter.cpp \
	third_party/WebKit/Source/core/rendering/RenderDeprecatedFlexibleBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderDetailsMarker.cpp \
	third_party/WebKit/Source/core/rendering/RenderEmbeddedObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderFieldset.cpp \
	third_party/WebKit/Source/core/rendering/RenderFileUploadControl.cpp \
	third_party/WebKit/Source/core/rendering/RenderFlexibleBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderFrame.cpp \
	third_party/WebKit/Source/core/rendering/RenderFrameSet.cpp \
	third_party/WebKit/Source/core/rendering/RenderFullScreen.cpp \
	third_party/WebKit/Source/core/rendering/RenderGrid.cpp \
	third_party/WebKit/Source/core/rendering/RenderGeometryMap.cpp \
	third_party/WebKit/Source/core/rendering/RenderHTMLCanvas.cpp \
	third_party/WebKit/Source/core/rendering/RenderIFrame.cpp \
	third_party/WebKit/Source/core/rendering/RenderImage.cpp \
	third_party/WebKit/Source/core/rendering/RenderImageResource.cpp \
	third_party/WebKit/Source/core/rendering/RenderImageResourceStyleImage.cpp \
	third_party/WebKit/Source/core/rendering/RenderInline.cpp \
	third_party/WebKit/Source/core/rendering/RenderInputSpeech.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayer.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerClipper.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerCompositor.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerFilterInfo.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerScrollableArea.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerStackingNode.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerStackingNodeIterator.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerReflectionInfo.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerRepainter.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerModelObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderLineBoxList.cpp \
	third_party/WebKit/Source/core/rendering/RenderListBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderListItem.cpp \
	third_party/WebKit/Source/core/rendering/RenderListMarker.cpp \
	third_party/WebKit/Source/core/rendering/RenderMarquee.cpp \
	third_party/WebKit/Source/core/rendering/RenderMedia.cpp \
	third_party/WebKit/Source/core/rendering/RenderMediaControlElements.cpp \
	third_party/WebKit/Source/core/rendering/RenderMediaControls.cpp \
	third_party/WebKit/Source/core/rendering/RenderMenuList.cpp \
	third_party/WebKit/Source/core/rendering/RenderMeter.cpp \
	third_party/WebKit/Source/core/rendering/RenderMultiColumnBlock.cpp \
	third_party/WebKit/Source/core/rendering/RenderMultiColumnFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderMultiColumnSet.cpp \
	third_party/WebKit/Source/core/rendering/RenderNamedFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderObjectChildList.cpp \
	third_party/WebKit/Source/core/rendering/RenderPart.cpp \
	third_party/WebKit/Source/core/rendering/RenderProgress.cpp \
	third_party/WebKit/Source/core/rendering/RenderQuote.cpp \
	third_party/WebKit/Source/core/rendering/RenderRegion.cpp \
	third_party/WebKit/Source/core/rendering/RenderRegionSet.cpp \
	third_party/WebKit/Source/core/rendering/RenderReplaced.cpp \
	third_party/WebKit/Source/core/rendering/RenderReplica.cpp \
	third_party/WebKit/Source/core/rendering/RenderRuby.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyBase.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyRun.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyText.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbar.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbarPart.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbarTheme.cpp \
	third_party/WebKit/Source/core/rendering/RenderSearchField.cpp \
	third_party/WebKit/Source/core/rendering/RenderSlider.cpp \
	third_party/WebKit/Source/core/rendering/RenderTable.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCaption.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCell.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCol.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableRow.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableSection.cpp \
	third_party/WebKit/Source/core/rendering/RenderText.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControl.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControlMultiLine.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControlSingleLine.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextFragment.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextTrackCue.cpp \
	third_party/WebKit/Source/core/rendering/RenderTheme.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumAndroid.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumDefault.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumFontProvider.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumFontProviderLinux.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumSkia.cpp \
	third_party/WebKit/Source/core/rendering/RenderTreeAsText.cpp \
	third_party/WebKit/Source/core/rendering/RenderVideo.cpp \
	third_party/WebKit/Source/core/rendering/RenderView.cpp \
	third_party/WebKit/Source/core/rendering/RenderWidget.cpp \
	third_party/WebKit/Source/core/rendering/RenderWordBreak.cpp \
	third_party/WebKit/Source/core/rendering/RenderingConfiguration.cpp \
	third_party/WebKit/Source/core/rendering/RootInlineBox.cpp \
	third_party/WebKit/Source/core/rendering/ScrollBehavior.cpp \
	third_party/WebKit/Source/core/rendering/SubtreeLayoutScope.cpp \
	third_party/WebKit/Source/core/rendering/break_lines.cpp \
	third_party/WebKit/Source/core/rendering/animation/WebAnimationProvider.cpp \
	third_party/WebKit/Source/core/rendering/shapes/PolygonShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/RasterShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/RectangleShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/Shape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/ShapeInfo.cpp \
	third_party/WebKit/Source/core/rendering/shapes/ShapeInsideInfo.cpp \
	third_party/WebKit/Source/core/rendering/shapes/ShapeOutsideInfo.cpp \
	third_party/WebKit/Source/core/rendering/style/BasicShapes.cpp \
	third_party/WebKit/Source/core/rendering/style/ContentData.cpp \
	third_party/WebKit/Source/core/rendering/style/CounterDirectives.cpp \
	third_party/WebKit/Source/core/rendering/style/FillLayer.cpp \
	third_party/WebKit/Source/core/rendering/style/KeyframeList.cpp \
	third_party/WebKit/Source/core/rendering/style/NinePieceImage.cpp \
	third_party/WebKit/Source/core/rendering/style/QuotesData.cpp \
	third_party/WebKit/Source/core/rendering/style/RenderStyle.cpp \
	third_party/WebKit/Source/core/rendering/style/ShadowData.cpp \
	third_party/WebKit/Source/core/rendering/style/ShadowList.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleBackgroundData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFetchedImage.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFetchedImageSet.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFetchedShader.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleCustomFilterProgramCache.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleCustomFilterProgram.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleDeprecatedFlexibleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFilterData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFlexibleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGeneratedImage.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGridData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGridItemData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleMarqueeData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleMultiColData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleRareInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleRareNonInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleSurroundData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleTransformData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleVisualData.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-EL \
	-mhard-float \
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
	-Wno-uninitialized \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-EL \
	-mhard-float \
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
	-Wno-uninitialized \
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
	-EL \
	-Wl,--no-keep-memory \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
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
	-EL \
	-Wl,--no-keep-memory \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
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
gyp_all_modules: third_party_WebKit_Source_core_webcore_rendering_gyp

# Alias gyp target name.
.PHONY: webcore_rendering
webcore_rendering: third_party_WebKit_Source_core_webcore_rendering_gyp

include $(BUILD_STATIC_LIBRARY)
