SRC_PATH = src/Notes
BUILD_PATH = _build
SITE_PATH = _site
_NOTEBOOKS = Astrophysics Computer_Science Data_Science Physics Others # Finance Mathematics

ROOT_PAGE = $(SITE_PATH)/index.html
NOTEBOOKS = $(_NOTEBOOKS:%=$(SITE_PATH)/%)  # _site/Astrophyics
TOCS = $(_NOTEBOOKS:%=%/_toc.yml)

build : $(ROOT_PAGE) $(NOTEBOOKS)

help:
	@echo "all      Build site"
	@echo "build    Same as make all"
	@echo "clean    remove build files"
	@echo "tocs     build _toc.yml for each notebook"

clean:
	-rm -rf $(BUILD_PATH)

########################################


tocs : $(TOCS)

$(ROOT_PAGE): index.html
	mkdir -p $(@D)
	cp $< $@

$(SITE_PATH)/%: $(BUILD_PATH)/%
	mkdir -p $(@D)
	mv $(<)/_build/html $@

$(BUILD_PATH)/%: $(SRC_PATH)/% $(SRC_PATH)/%/_toc.yml
	jb build $< --path-output $@

%/_toc.yml: $(SRC_PATH)/%
	jb toc from-project $< -f jb-book > $@

$(BUILD_PATH)/%.html :
	cp $(@F) $(BUILD_PATH)
