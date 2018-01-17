DEBUG=1

ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

SRC = $(wildcard ../../VideoTweak/videotweak/src/*.m)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = newstweak
newstweak_FILES = $(wildcard ../../VideoTweak/videotweak/src/*.m) ../../VideoTweak/videotweak/src/Tweak.xm
newstweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 News"
