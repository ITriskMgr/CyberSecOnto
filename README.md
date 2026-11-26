# CyberSecOnto — Cybersecurity Competencies Ontology

An OWL 2 ontology that integrates cybersecurity professional-competency frameworks (NIST NICE / NCWF, MITRE ATT&CK, CISSP and organisational job profiles) so they can be queried together for talent management. It was developed by Marc-André Léger at the Université du Québec en Outaouais (UQO) as his doctoral thesis using an Action Design Research methodology, with a focus on the financial services industry in Canada.

This repository holds the ontology, the source data, the queries and the test results used in the project. They are provided to reviewers to document the process and the results.

*Résumé en français : CyberSecOnto est une ontologie OWL 2 des compétences professionnelles en cybersécurité. Elle intègre des référentiels (NICE/NCWF du NIST, MITRE ATT&CK, CISSP, profils métiers) afin de faciliter la gestion des talents dans les grandes organisations, notamment les services financiers au Canada. Le dépôt contient l'ontologie, les données sources, les requêtes SPARQL et les résultats des tests.*

> **Status: research artefact (version 2.5a).** The ontology reflects the state of the frameworks at the time of the study. It has not been maintained against later releases of NICE or ATT&CK. Any reuse of this material must be discussed with the project team (see Licence).

## What is in it

| | |
|---|---|
| Classes | 5,700 |
| Object properties | 23 |
| Data properties | 11 |
| Named individuals | 30 |
| Triples | 44,446 |
| Format | RDF/XML (`Ontology/CyberSecCompetencies_2_5a.owl`), authored in WebProtégé, identifiers under `https://w3id.org/cyberseconto/` |
| Competency model | Know-what, know-how and know-how-to-be, with KSAs, tasks, roles and certifications |
| Frameworks integrated | NIST SP 800-181 NICE / NCWF, MITRE ATT&CK (Enterprise, ICS, Mobile), CISSP, business job profiles |

Counts were obtained by loading the OWL file with rdflib on 2026-11-26.

## Repository layout

| Path | Contents |
|---|---|
| `Ontology/` | The ontology (`CyberSecCompetencies_2_5a.owl`) and the data import rules (`ImportRules/*.json`) |
| `Competency/` | Source and working data as CSV and SQL: NICE roles, tasks, KSAs and competencies; CISSP; business job profiles; MITRE ATT&CK tables for Enterprise, ICS and Mobile |
| `KSA-001/` | Working documents for the NIST NCWF / NICE framework, including per-role KSA and task lists, the master lists, `NIST.SP.800-181r1.pdf` and the `CompetencyData_v3-0c/0d` workbooks |
| `MITRE_Att&ck/` | The ATT&CK Enterprise STIX file (`enterprise-attack.json`) used in the ontology |
| `w3id/` | Redirect rules and instructions for the `https://w3id.org/cyberseconto/` identifiers |
| `Queries/` | The initial queries, the five validation tests (SPARQL results) and the classification workbooks, with a README describing each test |
| Root `.docx` / `.pptx` | Competency mapping documents, question pairs and scale descriptions that accompany the study |

Each folder carries a copy of the licence, and most have a short README.

## Using the ontology

Open `Ontology/CyberSecCompetencies_2_5a.owl` in Protégé, or load it with any RDF library.

**Identifiers.** Terms use opaque identifiers under `https://w3id.org/cyberseconto/` (for example `https://w3id.org/cyberseconto/R3gN1PNpJvG0Zl5HixPNl`); the ontology IRI is `https://w3id.org/cyberseconto/cyberseconto` and version 2.5a is `https://w3id.org/cyberseconto/2.5a/cyberseconto`. The redirect rules are in `w3id/`; see `w3id/HOWTO.md` for their registration status. The earlier WebProtégé addresses are no longer used.

## Running the queries

The queries in `Queries/` were run in a SPARQL-capable triple store loaded with the ontology. To reproduce them, load `Ontology/CyberSecCompetencies_2_5a.owl` into a store of your choice (Apache Jena Fuseki, GraphDB, Oxigraph and others) and run the queries described in `Queries/README.md`. The full-text search used in the document-matching tests is store-specific and must be adapted to your store. The summary of calculations and formulas is in `Queries/Results_Classification_v1-2e.xlsx`.

## Licence and attribution

The material created for this project (ontology, queries, results and documents) is released under **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)**; see `LICENSE.md`. Commercial use or any reuse beyond the licence must be discussed with the project team.

Third-party material keeps its own terms (see `NOTICE.md`) and is included here only as source data for the study: NIST SP 800-181 and the NICE Framework (NIST), MITRE ATT&CK® (MITRE Corporation; used under MITRE's ATT&CK terms of use), and the CISSP (ISC)². No affiliation with or endorsement by NIST, MITRE or (ISC)² is implied.

## How to cite

See `CITATION.cff` (GitHub shows a "Cite this repository" button). In short:

Léger, M.-A. (2026). *CyberSecOnto: cybersecurity competencies ontology*, version 2.5a. https://github.com/ITriskMgr/CyberSecOnto

The study behind it: Léger, M.-A. (2021). *Implementing information technology management with an ontology of cybersecurity professional skills* [Doctoral thesis, Université du Québec en Outaouais]. Dépôt institutionnel de l'UQO. https://di.uqo.ca/id/eprint/1497 ([PDF](https://di.uqo.ca/id/eprint/1497/1/Leger_Marc-Andre_2021_these.pdf))

## Related projects

- [CyberRiskGuardian](https://github.com/ITriskMgr/CyberRiskGuardian) — cybersecurity risk assessment
- [CyberRiskGuardian-Ontology (CRGO)](https://github.com/ITriskMgr/CyberRiskGuardian-Ontology) — OWL 2 ontology for cybersecurity risk assessment, aligned with BFO-2020 ([documentation site](https://itriskmgr.github.io/CyberRiskGuardian-Ontology/))
- [FinancialCrimeOntology (FCGO)](https://github.com/ITriskMgr/FinancialCrimeOntology) — financial crime ontology
- [MOACCO](https://github.com/ITriskMgr/MOACCO) — earlier ontology, retired and replaced by CRGO

CyberSecOnto is an independent project; none of these ontologies imports or depends on the others.

## Contact

Marc-André Léger — marcandre@leger.ca — https://www.leger.ca. Corrections and questions are welcome through GitHub issues.
