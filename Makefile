
TESTDIR = test
BINDIR = bin

SUBDIRS = $(TESTDIR)

all:
	@echo "[pygtk-xml] building"
	-mkdir $(BINDIR)
	for i in $(SUBDIRS) ; do \
		( cd $$i ; make ) ; \
	done
	@echo "[pygtk-xml] Done"

clean:
	@echo "[pygtk-xml] cleaning"
	-rm $(BINDIR)/*
	for i in $(SUBDIRS); do \
		( cd $$i; make clean ); \
	done
	@echo "[pygtk-xml] done"
