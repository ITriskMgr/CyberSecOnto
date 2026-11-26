This first scenario-based test, SC1, is done to evaluate the quality of the results for the intended purpose. 
As initial research at the onset of the study should indicate what cybersecurity competencies must be part of the ontology, 
the validation will confirm what parts are accurately reflective of the numerous categories of activities and 
tasks that could be viewed as attributes of a successful cybersecurity function. 
These include detailed and structured information about cybersecurity job positions, 
knowledge, skills, abilities, soft-skills, certifications, education and others. 
As such, this part of the testing process focuses on using the ontology as a Human Resources Management (HRM) tool,
primarily as a tool for talent management and team staffing. 
This requires the organization to equate the successful individual for a job role by using a combination 
of the attributes, within certain ranges of acceptable minimal and optimal combinations, 
given typical cybersecurity scenarios with specific requirements based on real-world situations. 

**Running the queries**

The queries were run in a SPARQL-capable triple store loaded with the ontology. The study used two document sets: one annotated with the store's text markup (CyberSec003) and one processed with CoreNLP (CyberSec004).

The queries that will be used to in the first test can be executed. As indicated, the external validity test will be comparing the CV of individual actors, extracted from the LinkedIn profiles of participants in the study, all of which had previously signed informed consents to participate in this research. This is done by analyzing the CV in a text format, in this case extracted as a PDF file and processed using CoreNLP, as explained previously. The same query also makes it possible to obtain the data for the second test, which compares cybersecurity job posting from Canadian compagnies to the ontology in order to classify them.

> Note: the `fts:textMatch` full-text search is specific to the triple store used in the study; adapt it to your own store.

**Here is an example of the query used for this test:**

prefix fts: <urn:store-specific-full-text-search:>

select ?entity ?doc ?mention ?type ?label where 

{

?doc fts:textMatch 

"System Security Analyst",

"Ensure that the application of security patches for commercial products" ,

"Integrate automated capabilities for updating or patching system software" ,

"Implement security measures to resolve vulnerabilities, mitigate risks, and recommend security changes to system or system components as needed" ,

"Knowledge of vulnerability information dissemination sources" ,

"Knowledge of operating systems" ,

"Knowledge of systems security testing and evaluation methods" ,

"Knowledge of how to use network analysis tools to identify vulnerabilities" ,

"Skill in designing the integration of hardware and software solutions" ,

"Skill in determining how a security system should work" ,

"Skill in developing and applying security system access controls" ,

"Skill in evaluating the adequacy of security designs" ,

"Skill in assessing security systems designs" ,

"Skill in recognizing vulnerabilities in security systems" .

graph ?doc

{

?doc docs:hasEntity ?entity .

?entity <http://purl.org/dc/terms/references> ?mention
   }

?mention a ?type ; rdfs:label ?label
}

Order by ?doc
