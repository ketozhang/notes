SRC_PATH = src/Notes
BUILD_PATH = _site
_NOTEBOOKS = Astrophysics Computer_Science Data_Science Finance Mathematics Physics Others

ROOT_PAGES = $(_ROOT_PAGES:%=$(BUILD_PATH)/%)
NOTEBOOKS = $(_NOTEBOOKS:%=$(BUILD_PATH)/%)  # _site/Astrophyics
TOCS = $(_NOTEBOOKS:%=%/_toc.yml)

all : build

help:
	@echo "all      Build site"
	@echo "build    Same as make all"
	@echo "clean    remove build files"
	@echo "tocs     build _toc.yml for each notebook"

clean:
	-rm -rf $(BUILD_PATH)

########################################

build : $(NOTEBOOKS)
	pip freeze > requirements.lock

tocs : $(TOCS)

$(BUILD_PATH)/%: $(SRC_PATH)/% $(SRC_PATH)/%/_toc.yml
	jb build $< --path-output $@

%/_toc.yml: $(SRC_PATH)/%
	jb toc from-project $< -f jb-book > $@

$(BUILD_PATH)/%.html :
	cp $(@F) $(BUILD_PATH)
