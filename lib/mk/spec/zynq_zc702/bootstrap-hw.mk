TMP := $(call select_from_repositories,lib/mk/spec/zynq/core-hw.inc)
BASE_HW_DIR := $(TMP:%lib/mk/spec/zynq/core-hw.inc=%)

INC_DIR += $(REP_DIR)/src/bootstrap/spec/zynq_zc702

SRC_S   += bootstrap/spec/arm/crt0.s

SRC_CC  += bootstrap/spec/arm/cpu.cc
SRC_CC  += bootstrap/spec/arm/cortex_a9_mmu.cc
SRC_CC  += bootstrap/spec/arm/pic.cc
SRC_CC  += bootstrap/spec/zynq/platform.cc
SRC_CC  += hw/spec/arm/arm_v7_cpu.cc
SRC_CC  += hw/spec/32bit/memory_map.cc

NR_OF_CPUS = 2

vpath bootstrap/spec/zynq/platform.cc $(BASE_HW_DIR)/src/

include $(BASE_HW_DIR)/lib/mk/bootstrap-hw.inc

CC_CXX_WARN_STRICT =
