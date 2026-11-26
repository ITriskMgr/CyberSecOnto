**Running the queries**

The queries were run in a triple store with a SPARQL workspace. They can be run in any SPARQL-capable store loaded with the ontology (`Ontology/CyberSecCompetencies_2_5a.owl`).
The study used two document sets: one annotated with the store's text markup (CyberSec003) and one processed with CoreNLP (CyberSec004).

**Test 1**

The external validity test compares the CVs of individual actors, extracted from the LinkedIn profiles of participants in the study, all of whom had previously signed informed consent to take part in this research. Each CV is analysed in text format (extracted from PDF and processed with CoreNLP, as explained previously). The same query also provides the data for the second test, which compares cybersecurity job postings from Canadian companies with the ontology in order to classify them.

> Note: full-text search over annotated documents is a feature specific to the triple store used in the study. The `fts:` pattern below is illustrative and must be adapted to the full-text function of your own store.

**Test 1 query**

```sparql
prefix fts: <urn:store-specific-full-text-search:>

SELECT * WHERE {
  ?class a owl:Class ;
         rdfs:label ?keyword .
  service fts:textMatch {
    [] fts:query "object of the search" ;
       fts:score ?score ;
       fts:result ?result .
  }
}
ORDER BY DESC(?score)
```
