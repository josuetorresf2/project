# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := gen-regexp-special-case
DEFS_Debug := \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-DV8_COMPRESS_POINTERS' \
	'-DV8_31BIT_SMIS_ON_64BIT_ARCH' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DOPENSSL_THREADS' \
	'-DOPENSSL_NO_ASM' \
	'-DV8_TARGET_ARCH_ARM64' \
	'-DV8_EMBEDDER_STRING="-node.28"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DENABLE_MINOR_MC' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_SNAPSHOT_COMPRESSION' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS' \
	'-DVERIFY_HEAP' \
	'-DV8_TRACE_MAPS' \
	'-DV8_ENABLE_ALLOCATION_TIMEOUT' \
	'-DV8_ENABLE_FORCE_SLOW_PATH' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O3 \
	-gdwarf-2 \
	-fstrict-aliasing \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++1y \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common

DEFS_Release := \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-DV8_COMPRESS_POINTERS' \
	'-DV8_31BIT_SMIS_ON_64BIT_ARCH' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DOPENSSL_THREADS' \
	'-DOPENSSL_NO_ASM' \
	'-DV8_TARGET_ARCH_ARM64' \
	'-DV8_EMBEDDER_STRING="-node.28"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DENABLE_MINOR_MC' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_SNAPSHOT_COMPRESSION' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-gdwarf-2 \
	-fstrict-aliasing \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++1y \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common

OBJS := \
	$(obj).target/$(TARGET)/deps/v8/src/regexp/gen-regexp-special-case.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libv8_libbase.a $(obj).target/tools/v8_gypfiles/v8_maybe_icu.stamp $(obj).target/tools/v8_gypfiles/v8_headers.stamp $(obj).target/tools/v8_gypfiles/v8_version.stamp $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(obj).target/tools/icu/icu_implementation.stamp $(obj).target/tools/icu/icu_uconfig.stamp $(obj).target/tools/icu/icu_uconfig_target.stamp $(obj).target/tools/icu/icuuc.stamp $(builddir)/libicudata.a $(obj).host/tools/icu/icu_implementation.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug := \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release := \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/gen-regexp-special-case: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/gen-regexp-special-case: LIBS := $(LIBS)
$(builddir)/gen-regexp-special-case: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/gen-regexp-special-case: LD_INPUTS := $(OBJS) $(builddir)/libv8_libbase.a $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(builddir)/libicudata.a
$(builddir)/gen-regexp-special-case: TOOLSET := $(TOOLSET)
$(builddir)/gen-regexp-special-case: $(OBJS) $(builddir)/libv8_libbase.a $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(builddir)/libicudata.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/gen-regexp-special-case
# Add target alias
.PHONY: gen-regexp-special-case
gen-regexp-special-case: $(builddir)/gen-regexp-special-case

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/gen-regexp-special-case

