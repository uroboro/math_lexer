
TOOL_NAME = math_lexer
uroboro_SOURCES = sources
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.c)
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.cpp)
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.m)
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.mm)
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.x)
math_lexer_FILES += $(wildcard $(uroboro_SOURCES)/*.xm)

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tool.mk
