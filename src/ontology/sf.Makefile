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

$(TEMPLATEDIR)/subjects-by.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=750307268&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-bw.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=949672233&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-hb.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1932405643&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-he.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=117904402&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-hh.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1268565878&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-mv.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1177344865&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-ni.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=184614800&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-nw.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=33460254&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-rp.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1675863626&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-sl.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=378379644&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-sn.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1881400790&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-st.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=174422951&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-sh.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=1314666209&output=tsv' -o $@

$(TEMPLATEDIR)/subjects-th.tsv:
	curl -L 'http://docs.google.com/spreadsheets/d/e/2PACX-1vSzRNSKTRnjC2E2XnYSXuX17RtIoQ3ZW2qvZnRQjREtZdtkXdcrPtXXeb5m8MXIzz_uImm-2oS2m7Dj/pub?gid=2035558748&output=tsv' -o $@


$(IMPORTDIR)/kim_import.owl: 
	echo "update KIM manually if needed (see imports directory)"


skos-%.ttl: 
	$(ROBOT) remove --input sf-edit.owl  --select imports --trim false merge --input components/subjects-$*.owl --output $(TMPDIR)/schulfach-$*.ttl  
	echo "<https://w3id.org/schulfach/$(shell echo $* | tr  '[:lower:]' '[:upper:]')_0000000> <http://purl.org/dc/terms/created> \"2025-10-21\" ."  >> $(TMPDIR)/schulfach-$*.ttl 
	$(ROBOT) merge --input $(TMPDIR)/schulfach-$*.ttl query --update ../sparql/skos1.sparql query --query ../sparql/skos2.sparql $@



CITATION="'German School Subjects Ontology. Version $(VERSION), https://w3id.org/schulfach/'"

ALL_ANNOTATIONS=--annotate-defined-by false \
	--ontology-iri https://w3id.org/schulfach/ -V https://w3id.org/schulfach/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
#	--link-annotation owl:priorVersion https://w3id.org/lehrplan/ontology/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../sf.owl $(ALL_ANNOTATIONS) --output ../../sf.owl && \
	$(ROBOT) annotate --input ../../sf.ttl $(ALL_ANNOTATIONS) --output ../../sf.ttl && \
	$(ROBOT) annotate --input ../../sf-full.owl $(ALL_ANNOTATIONS) --output ../../sf-full.owl && \
	$(ROBOT) annotate --input ../../sf-full.ttl $(ALL_ANNOTATIONS) --output ../../sf-full.ttl 




