# Website handoff: CyberSecOnto page on leger.ca

**For:** the website management agent for leger.ca (GoDaddy-hosted, bilingual FR/EN).
**Task:** add a page presenting CyberSecOnto, in French and English, next to the existing CRGO and FCGO pages (leger.ca/crgo, leger.ca/fcgo).
**Source of truth:** https://github.com/ITriskMgr/CyberSecOnto (branch `main`). Take every figure from this document or the repository, never from memory.

## 1. What CyberSecOnto is (use this wording as the base)

**EN:** CyberSecOnto is an OWL 2 ontology of cybersecurity professional competencies. It integrates the NIST NICE / NCWF framework, MITRE ATT&CK, CISSP and organisational job profiles so they can be queried together for talent management. It was developed at the Université du Québec en Outaouais with an Action Design Research methodology, for the financial services industry in Canada. The repository also holds the source data, SPARQL queries and test results.

**FR :** CyberSecOnto est une ontologie OWL 2 des compétences professionnelles en cybersécurité. Elle intègre le cadre NICE / NCWF du NIST, MITRE ATT&CK, CISSP et des profils métiers d'organisation, afin de les interroger ensemble pour la gestion des talents. Elle a été développée à l'Université du Québec en Outaouais selon une méthodologie de recherche Action Design, pour l'industrie des services financiers au Canada. Le dépôt contient aussi les données sources, les requêtes SPARQL et les résultats des tests.

## 2. Key facts (ontology version 2.5a)

| Item | Value |
|---|---|
| Classes | 5,700 |
| Object properties | 23 |
| Data properties | 11 |
| Named individuals | 30 |
| Format | RDF/XML, authored in WebProtégé |
| Licence | CC BY-NC-SA 4.0 |
| Status | Research artefact; not maintained against later NICE or ATT&CK releases |
| Ontology IRI | `https://w3id.org/cyberseconto/cyberseconto` (redirect rules prepared in `w3id/`; not yet registered with w3id.org, so do not present it as resolving) |

## 3. Mandatory messages

1. **Research artefact.** Present it as the result of a research project, not as a maintained standard.
2. **Non-commercial licence.** CC BY-NC-SA 4.0. Say that commercial or other reuse must be discussed with the project team (marcandre@leger.ca).
3. **No endorsement.** Not affiliated with or endorsed by NIST, MITRE or (ISC)². Do not use their logos.
4. **No public query endpoint.** There is no public SPARQL service; do not suggest one.
5. **Independence.** CyberSecOnto is separate from CRGO and FCGO. Do not claim integration.

Short banner (EN): *Research artefact, version 2.5a. Licensed CC BY-NC-SA 4.0.*
Bannière (FR) : *Artefact de recherche, version 2.5a. Licence CC BY-NC-SA 4.0.*

## 4. Suggested page structure

1. Title, one-sentence summary, status banner.
2. What it covers (NICE/NCWF, MITRE ATT&CK, CISSP, job profiles; know-what, know-how, know-how-to-be).
3. Key numbers (table above).
4. Method and context (Action Design Research, UQO, Canadian financial services).
5. Downloads and links (section 5).
6. How to use it (Protégé or any RDF library; SPARQL in any triple store).
7. Limitations (section 3).
8. Licence, third-party attribution and how to cite.
9. Related projects: CRGO, FCGO, MOACCO (separate projects).
10. Contact: marcandre@leger.ca or GitHub issues.

Match the structure, tone and navigation of the existing CRGO and FCGO pages; reuse their layout and styles. Create both languages with reciprocal language links, following however the site already handles FR/EN.

## 5. Links (all under https://github.com/ITriskMgr/CyberSecOnto)

| Purpose | Path |
|---|---|
| Repository | `/` |
| Ontology, RDF/XML | `/blob/main/Ontology/CyberSecCompetencies_2_5a.owl` (raw: `https://raw.githubusercontent.com/ITriskMgr/CyberSecOnto/main/Ontology/CyberSecCompetencies_2_5a.owl`) |
| Queries and results | `/tree/main/Queries` |
| Source data | `/tree/main/Competency` and `/tree/main/KSA-001` |
| Changelog | `/blob/main/CHANGELOG.md` |
| Licence | `/blob/main/LICENSE.md` |
| Issues | `/issues` |

Link to GitHub rather than copying files onto the site, unless the owner asks otherwise.

## 6. Citation

Léger, M.-A. (2026). *CyberSecOnto: cybersecurity competencies ontology*, version 2.5a. https://github.com/ITriskMgr/CyberSecOnto

Thesis: Léger, M.-A. (2021). *Implementing information technology management with an ontology of cybersecurity professional skills* [Doctoral thesis, Université du Québec en Outaouais]. https://di.uqo.ca/id/eprint/1497 (PDF: https://di.uqo.ca/id/eprint/1497/1/Leger_Marc-Andre_2021_these.pdf). Link to it on the page.

## 7. Attribution text for the page

EN: "Released under CC BY-NC-SA 4.0. NIST NICE, MITRE ATT&CK® and CISSP material remains subject to its owners' terms."
FR : « Diffusée sous licence CC BY-NC-SA 4.0. Les contenus NIST NICE, MITRE ATT&CK® et CISSP demeurent soumis aux conditions de leurs détenteurs. »

## 8. SEO and metadata hints

- Titles: "CyberSecOnto: Cybersecurity Competencies Ontology | leger.ca" / "CyberSecOnto : ontologie des compétences en cybersécurité | leger.ca".
- Keywords: cybersecurity competencies ontology, OWL 2, NICE framework, MITRE ATT&CK, talent management; FR: ontologie, compétences en cybersécurité, gestion des talents, cadre NICE.
- Add `lang` and `hreflang` pairs.
- Optional schema.org `Dataset` markup: name, description, license `https://creativecommons.org/licenses/by-nc-sa/4.0/`, creator Marc-André Léger, `distribution` pointing at the raw OWL URL, `inLanguage` ["en","fr"].

## 9. What the agent should not do

- Do not alter the repository or any other ontology page.
- Do not invent statistics, endorsements, adopters or roadmap dates.
- Do not publish to social media or announce the release; the owner decides.
- Show the owner a preview before the page goes live.

## 10. Acceptance checklist

- [ ] FR and EN pages exist, linked to each other.
- [ ] Status banner and licence notice visible without scrolling.
- [ ] Every figure matches section 2.
- [ ] All links in section 5 open.
- [ ] Licence, third-party attribution and citation present.
- [ ] No claim of endorsement, maintenance or integration with CRGO/FCGO.
- [ ] Page added to the ontologies index next to CRGO and FCGO.
