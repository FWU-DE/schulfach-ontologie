# German school subjects ontology

The **German school subjects ontology** provides a standardized framework for **describing the subjects taught in schools across Germany**. Its primary purpose is to create a shared vocabulary that enables consistent identification, classification, and linking of school subjects accross the individual federal states (Bundesländer). By defining school subjects as structured concepts within an ontology, it supports the interoperability of educational data and systems, ensuring that digital learning resources, curricula, and administrative datasets can refer to subjects in a uniform and machine-readable way.

This ontology plays a crucial role in advancing data integration and research in education. Because school subjects are defined with unique identifiers and formal relationships, educational platforms, researchers, and policymakers can more easily compare curricula, link learning materials to specific subjects, and conduct analyses across regions and educational contexts. 
The German school subjects ontology contributes to greater transparency, comparability, and interoperability in educational data management. It serves as a foundational component for the digital transformation of education in Germany — enabling a shared understanding of what is being taught, where, and how, across the diverse landscape of German schooling.

##
The ontology currently represents the school subjects of the following German federal states:

* BW (Baden-Württemberg)
* HB (Bremen)
* HE (Hesse)
* MV (Mecklenburg-Vorpommern)
* NI (Lower Saxony)
* NW (North Rhine-Westphalia)
* SH (Schleswig-Holstein)
* SL (Saarland)
* ST (Saxony-Anhalt)

Each school subject is assigned to its corresponding federal state.
Additionally, where possible, a mapping has been created to elements of the [KIM school subjects](https://github.com/dini-ag-kim/schulfaecher).

As additional release artifacts, SKOS Concept Schemas have been generated for each federal state.
These can be found in the SKOS directory `/skos`.

The school subject ontology is closely linked to the [Curriculum Ontology](https://github.com/dini-ag-kim/school-curriculum-pg) by importing concepts from there.

## Documentation

A Widoco generated list of classes, properties and individuals can be found [here](https://fwu-de.github.io/schulfach-ontologie/).

## Repository Structure

The repository is organized as follows:

```
schulfach-ontologie/
├── .github/workflows/     # GitHub Actions for CI/CD (automated validation and deployment)
├── docs/                  # Documentation for the ontology (used for the GitHub Pages site)
├── skos/                  # SKOS-based representations derived from the ontology
├── src/                   # Source files and scripts for building or maintaining the ontology
├── .gitignore             # Git ignore configuration
├── README.md              # Overview and usage instructions (this file)
├── mkdocs.yaml            # MkDocs configuration for building the documentation site
├── sf.owl                 # Ontology in OWL format 
└── sf.ttl                 # Ontology in Turtle (TTL)
```


## Contribution

Please use this GitHub repository's Issue tracker to request new terms/classes or report errors or specific concerns related to the ontology.
  
  
## Acknowledgements
This ontology repository was created using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).