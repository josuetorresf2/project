# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_text_start
### Rules for final target.
$(obj).target/node_text_start.stamp: TOOLSET := $(TOOLSET)
$(obj).target/node_text_start.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/node_text_start.stamp
# Add target alias
.PHONY: node_text_start
node_text_start: $(obj).target/node_text_start.stamp

# Add target alias to "all" target.
.PHONY: all
all: node_text_start

