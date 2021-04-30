This is the F1-test that is used to demonstrate the repeatability of the Stardog query results in the ontology. 
The ontology is used to identify the job descriptions and work roles that are best suited to handle a security incident.
The security incidents are based on the MITRE Att&ck framework scenarios, in particular the Tactics, such as T1199. 
The tactics are mitigated by mitigation measure recommendations in the MITRE framework, such as M1030.

**Here is an example of the SPARQL queries used in Stardog for this test:**

prefix stardogapi: <tag:stardog:api:>
select ?entity ?doc ?mention ?type ?label where {
# find something that has a textual match with any one or more of the given string values
?doc stardogapi:property:textMatch 
  "System Security Analyst",
  "Application isolation will limit what other processes and system features the exploited target can access.",
  "Web Application Firewalls may be used to limit exposure of applications to prevent exploit traffic from reaching the application.",
  "Segment externally facing servers and services from the rest of the network with a DMZ or on separate hosting infrastructure.",
  "Use least privilege for service accounts will limit what permissions the exploited process gets on the rest of the system.",
  "Regularly scan externally facing systems for vulnerabilities and establish procedures to rapidly patch systems when critical vulnerabilities are discovered through scanning and through public disclosure.",
  "Regularly scan externally facing systems for vulnerabilities and establish procedures to rapidly patch systems when critical vulnerabilities are discovered through scanning and through public disclosure.".
# get the subgraph (aka named graph) for that something
graph ?doc  {
# where it has the property `hasEntity` whose value is something
?doc stardog:docs:hasEntity ?entity .
# and find the mention of that resource by the `references` property
?entity <http://purl.org/dc/terms/references> ?mention }
# get the type and label of the found mention
?mention a ?type ; rdfs:label ?label }
# order rows by this variable (default ascending)
Order by ?doc
![image](https://user-images.githubusercontent.com/12799898/116684285-c9b52f00-a97e-11eb-8d56-c4044e40ec4b.png)
