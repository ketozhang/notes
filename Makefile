BUILD_PATH = _site
NOTEBOOKS = Astrophysics Computer_Science Data_Science Finance Mathematics Physics Others


all : docs

docs :
	-mkdir docs/
	+$(MAKE) $(NOTEBOOKS)

.PHONY: $(NOTEBOOKS)
$(NOTEBOOKS):
	jb toc from-project $@ -f jb-book > $@/_toc.yml
	jb build $@ --path-output $(BUILD_PATH)/$@

clean:
	-rm -rf $(BUILD_PATH)