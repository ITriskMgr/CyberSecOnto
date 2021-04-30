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

**Here is an exaple of the queru used for this test:**

prefix stardogapi: <tag:stardog:api:>

select ?entity ?doc ?mention ?type ?label where 

{

?doc stardogapi:property:textMatch 

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

?doc stardog:docs:hasEntity ?entity .

?entity <http://purl.org/dc/terms/references> ?mention
   }

?mention a ?type ; rdfs:label ?label
}

Order by ?doc
