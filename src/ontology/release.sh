

VERSION=1.0.0
PRIOR_VERSION=1.0.0
ONTBASE=https://w3id.org/schulfach
ANNOTATE_ONTOLOGY_VERSION="annotate -V $ONTBASE/$VERSION/\$@ --annotation owl:versionInfo $VERSION"


sh run.sh make -B VERSION=$VERSION ONTBASE=$ONTBASE ANNOTATE_ONTOLOGY_VERSION="$ANNOTATE_ONTOLOGY_VERSION" prepare_release

sh run.sh make VERSION=$VERSION ONTBASE=$ONTBASE ANNOTATE_ONTOLOGY_VERSION="$ANNOTATE_ONTOLOGY_VERSION" update-ontology-annotations


#sh run.sh make skos-bb.ttl
#sh run.sh make skos-be.ttl
sh run.sh make skos-bw.ttl
#sh run.sh make skos-by.ttl
sh run.sh make skos-hb.ttl
sh run.sh make skos-he.ttl
#sh run.sh make skos-hh.ttl
sh run.sh make skos-mv.ttl
sh run.sh make skos-ni.ttl
sh run.sh make skos-nw.ttl
s#h run.sh make skos-rp.ttl
sh run.sh make skos-sh.ttl
sh run.sh make skos-sl.ttl
#sh run.sh make skos-sn.ttl
sh run.sh make skos-st.ttl
#sh run.sh make skos-th.ttl

mv skos-* ../../skos/