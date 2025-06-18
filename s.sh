while IFS= read -r path; do
  if [ -L "$path" ]; then
    echo "Removing symlink: $path"
    git rm --cached "$path"
  fi

  if [ -e "$path" ]; then
    echo "Adding real content: $path"
    git add "$path"
  else
    echo "⚠️  Not found: $path"
  fi
done <<EOF
kernel/locking/oplus_locking
kernel/oplus_cpu
include/soc/oplus/system/oplus_mm_kevent_fb.h
include/soc/oplus/dft
include/soc/oplus/boot
include/soc/oplus/dfr
include/kunit/fff.h
include/dt-bindings/input/linux-event-codes.h
include/dt-bindings/clock/qcom,dispcc-sm8150.h
include/linux/mtk_panel_ext.h
include/linux/mtk_disp_notify.h
net/oplus_modules
sound/soc/codecs/audio
mm/oplus_mm
arch/arm/boot/dts/sun8i-a33-ippo-q8h-v1.2.dts
arch/arm/boot/dts/sun8i-a23-ippo-q8h-v1.2.dts
arch/arm/boot/dts/sun8i-a23-ippo-q8h-v5.dts
arch/arm/boot/dts/sun8i-a33-et-q8-v1.6.dts
arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
Documentation/Changes
drivers/input/fp_drivers
drivers/input/uff_fp_drivers
drivers/input/touchscreen/oplus_touchscreen_v2
drivers/input/touchscreen/tp_hbp
drivers/input/touchscreen/synaptics_hbp
drivers/power/oplus
drivers/soc/oplus/oplus_mm_fb
drivers/soc/oplus/dft
drivers/soc/oplus/midas
drivers/soc/oplus/storage
drivers/soc/oplus/uad
drivers/soc/oplus/boot
drivers/soc/oplus/dfr
drivers/soc/oplus/hans
drivers/android/oplus_binder
drivers/misc/mediatek/sensor/2.0/oplus_sensor_feedback
drivers/misc/mediatek/sensor/2.0/oplus_sensor_devinfo
drivers/misc/mediatek/sensor/2.0/oplus_consumer_ir
drivers/misc/sim detect
drivers/misc/oplus_gpio
drivers/base/power/power_diag
drivers/base/kernelFwUpdate
drivers/dma-buf/heaps/mm_boost_pool
scripts/dtc/include-prefixes/h8300
scripts/dtc/include-prefixes/c6x
scripts/dtc/include-prefixes/powerpc
scripts/dtc/include-prefixes/sh
scripts/dtc/include-prefixes/openrisc
scripts/dtc/include-prefixes/arm
scripts/dtc/include-prefixes/arm64
scripts/dtc/include-prefixes/nios2
scripts/dtc/include-prefixes/dt-bindings
scripts/dtc/include-prefixes/microblaze
scripts/dtc/include-prefixes/mips
scripts/dtc/include-prefixes/arc
scripts/dtc/include-prefixes/xtensa
scripts/dummy-tools/nm
scripts/dummy-tools/objcopy
tools/testing/selftests/powerpc/primitives/asm/asm-compat.h
tools/testing/selftests/powerpc/primitives/asm/asm-const.h
tools/testing/selftests/powerpc/primitives/asm/ppc_asm.h
tools/testing/selftests/powerpc/primitives/asm/feature-fixups.h
tools/testing/selftests/powerpc/primitives/word-at-a-time.h
tools/testing/selftests/powerpc/copyloops/memcpy_power7.S
tools/testing/selftests/powerpc/copyloops/memcpy_64.S
tools/testing/selftests/powerpc/copyloops/copy_mc_64.S
tools/testing/selftests/powerpc/copyloops/copyuser_power7.S
tools/testing/selftests/powerpc/copyloops/copyuser_64.S
tools/testing/selftests/powerpc/vphn/asm/lppaca.h
tools/testing/selftests/powerpc/vphn/vphn.c
tools/testing/selftests/powerpc/nx-gzip/include/vas-api.h
tools/testing/selftests/powerpc/stringloops/memcmp_64.S
tools/testing/selftests/powerpc/stringloops/strlen_32.S
tools/testing/selftests/powerpc/stringloops/memcmp_32.S
EOF
