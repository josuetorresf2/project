# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := histogram
DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DV8_COMPRESS_POINTERS' \
	'-DV8_31BIT_SMIS_ON_64BIT_ARCH' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DOPENSSL_THREADS' \
	'-DOPENSSL_NO_ASM' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-fvisibility=hidden \
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
	-I$(srcdir)/deps/histogram/src

DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DV8_COMPRESS_POINTERS' \
	'-DV8_31BIT_SMIS_ON_64BIT_ARCH' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DOPENSSL_THREADS' \
	'-DOPENSSL_NO_ASM'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-gdwarf-2 \
	-fvisibility=hidden \
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
	-I$(srcdir)/deps/histogram/src

OBJS := \
	$(obj).target/$(TARGET)/deps/histogram/src/hdr_histogram.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug :=

LDFLAGS_Release := \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release :=

LIBS :=

$(builddir)/libhistogram.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/libhistogram.a: LIBS := $(LIBS)
$(builddir)/libhistogram.a: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/libhistogram.a: TOOLSET := $(TOOLSET)
$(builddir)/libhistogram.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/libhistogram.a
# Add target alias
.PHONY: histogram
histogram: $(builddir)/libhistogram.a

# Add target alias to "all" target.
.PHONY: all
all: histogram

