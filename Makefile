SRC_PATH = src/Notes
BUILD_PATH = _build
SITE_PATH = _site
_NOTEBOOKS = Astrophysics Computer_Science Data_Science Physics Others # Finance Mathematics

NOTEBOOKS = $(_NOTEBOOKS:%=$(SITE_PATH)/%)  # e.g., _site/Astrophyics/
TOCS = $(_NOTEBOOKS:%=%/_toc.yml)

.PHONY: all build help tocs

build : $(NOTEBOOKS)

help:
	@echo "build    Same as make all"
	@echo "clean    remove build files"
	@echo "tocs     build _toc.yml for each notebook"
	@echo $(NOTEBOOKS)

  clean:
	-rm -rf $(BUILD_PATH)
	-rm -rf $(SITE_PATH)

########################################


tocs : $(TOCS)

$(SITE_PATH)/%: $(SITE_PATH) $(BUILD_PATH)/%
	mv $(BUILD_PATH)/$*/_build/html $(SITE_PATH)/$*

.PRECIOUS: $(BUILD_PATH)/%
$(BUILD_PATH)/%: $(SRC_PATH)/% $(SRC_PATH)/%/_toc.yml
	jb build $< --path-output $@

$(SITE_PATH) $(BUILD_PATH):
	mkdir $@

%/_toc.yml: $(SRC_PATH)/%
	jb toc from-project $< -f jb-book > $@
