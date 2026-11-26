# Making https://w3id.org/cyberseconto/ resolve

**Status: not yet submitted.** The identifiers in the ontology already use this namespace; they resolve only after the redirect is registered.

1. Fork https://github.com/perma-id/w3id.org (the fork ITriskMgr/w3id.org exists; update it first).
2. Copy the folder `w3id/cyberseconto/` of this repository (`.htaccess` and `README.md`) into the fork as `ids/cyberseconto/`.
3. Commit both files in one commit with a descriptive message, for example "Add redirect for cyberseconto (CyberSecOnto)". w3id.org rejects GitHub's default messages. The checker can be run locally: `node tools/check/bin/w3id-check.js ids/cyberseconto`.
4. Open a pull request titled "Add /cyberseconto (CyberSecOnto)" on perma-id/w3id.org.
5. After the merge, check: `curl -sIL -H "Accept: application/rdf+xml" https://w3id.org/cyberseconto/cyberseconto` should end at the OWL file in this repository.

If the ontology file is renamed or a new version is released, edit `ids/cyberseconto/.htaccess` through a new pull request.
