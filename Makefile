.PHONY: all clean 
default: all

git-submodules:
# Check if submodules have been checked out
	@if [ ! -f FreeRTOS/.git ]; then \
		echo git clone submodules; \
		git submodule update --init --recursive; \
	fi


all: git-submodules
	$(MAKE) -C UALink -j
