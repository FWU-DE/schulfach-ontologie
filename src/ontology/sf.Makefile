## Customize Makefile settings for sf
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile



$(COMPONENTSDIR)/bw-subjects.owl: $(TEMPLATEDIR)/bw-subjects.tsv $(TMPDIR)/stamp-component-bw-subjects.owl
	$(ROBOT) template --input sf-edit.owl  \
		 --template $(TEMPLATEDIR)/bw-subjects.tsv \
		 $(ANNOTATE_CONVERT_FILE)
.PRECIOUS: $(COMPONENTSDIR)/bw-subjects.owl


$(IMPORTDIR)/kim_import.owl: 
	echo "update KIM manually if needed (see imports directory)"