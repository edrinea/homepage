DOCS=index misc

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

.PHONY : update
update : $(PHDOCS)
	@echo -n 'Copying to server...'
	# insert code for copying to server here.
	@echo ' done.'

html/%.html : %.jemdoc
	python jemdoc.py -o $@ $<

.PHONY : clean
clean :
	-rm -f html/*.html
