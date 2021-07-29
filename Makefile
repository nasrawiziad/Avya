ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Avya
Avya_LIBRARIES = activator sparkapplist
# Avya_LIBRARIES += sparkapplist

Avya_FILES = Tweak.xm
Avya_CFLAGS = -fobjc-arc
Avya_FRAMEWORKS = UIKit
Avya_EXTRA_FRAMEWORKS += Cephei Alderis


include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += avyapre
include $(THEOS_MAKE_PATH)/aggregate.mk
