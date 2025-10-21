## Customize Makefile settings for sf
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

## Module for ontology: lp (slme)
$(IMPORTDIR)/lp_import.owl: $(MIRRORDIR)/lp.owl $(IMPORTDIR)/lp_terms.txt | all_robot_plugins
	$(ROBOT) annotate --input $< --remove-annotations \
		 odk:normalize --add-source true \
		 extract --term-file $(IMPORTDIR)/lp_terms.txt \
		         --copy-ontology-annotations true --force true \
		         --individuals include \
		         --method SUBSET \
		 remove $(foreach p, $(ANNOTATION_PROPERTIES), --term $(p)) \
		        --term rdfs:label \
		        --term IAO:0000115 \
		        --term OMO:0002000 \
		        --term-file $(IMPORTDIR)/lp_terms.txt \
		        --select complement --select annotation-properties \
		 odk:normalize --base-iri https://w3id.org/schulfach \
		               --subset-decls true --synonym-decls true \
		 repair --merge-axiom-annotations true \
		 $(ANNOTATE_CONVERT_FILE)



## Module for ontology: lp (slme)
$(IMPORTDIR)/lp_import.owl: $(MIRRORDIR)/lp.owl $(IMPORTDIR)/lp_terms.txt | all_robot_plugins
	$(ROBOT) extract --input $< --upper-terms $(IMPORTDIR)/lp_terms.txt --lower-terms $(IMPORTDIR)/lp_terms.txt  \
		         --copy-ontology-annotations true --force true \
		         --individuals include \
		         --method MIREOT \
		 $(ANNOTATE_CONVERT_FILE)


$(TEMPLATEDIR)/bw-subjects.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=949672233&output=tsv' -o $@

$(TEMPLATEDIR)/hb-subjects.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1932405643&output=tsv' -o $@

$(TEMPLATEDIR)/he-subjects.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=117904402&output=tsv' -o $@


$(IMPORTDIR)/kim_import.owl: 
	echo "update KIM manually if needed (see imports directory)"

sf-%-skos.ttl: 
	$(ROBOT) remove --input sf-edit.owl  --select imports --trim false merge --input components/$*-subjects.owl --output $(TMPDIR)/$*-schulfach.ttl  
	echo "<https://w3id.org/schulfach/$(shell echo $* | tr  '[:lower:]' '[:upper:]')_000000> <http://purl.org/dc/terms/created> \"2025-10-21\" ."  >> $(TMPDIR)/$*-schulfach.ttl 
	$(ROBOT) merge --input $(TMPDIR)/$*-schulfach.ttl query --update ../sparql/skos1.sparql query --query ../sparql/skos2.sparql $@


