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

**Connecting to Stardog**

Prior to executing the queries, it is necessary to connect to the server. This is done by following the following steps:

Start Stardog studio and Connect to Stardog server, in this study the server is http://dev2.gagnontech.org:5820. A valid user account and password are required.

It is then possible to connect to the ontology database instance. From there the Workspace is accessed by using the left side menu. This is where SPARQL queries can be created and executed. This requires users to select the database against which to execute the query. In this study, as mentioned, there are two, using Stardog markup (CyberSec003) and the data using CoreNLP (CyberSec004).

**Executing the queries with Stardog search**

Once connected to Stardog, the queries that will be used to in the first test can be executed. As indicated, the external validity test will be comparing the CV of individual actors, extracted from the LinkedIn profiles of participants in the study, all of which had previously signed informed consents to participate in this research. This is done by analyzing the CV in a text format, in this case extracted as a PDF file and processed using CoreNLP, as explained previously. The same query also makes it possible to obtain the data for the second test, which compares cybersecurity job posting from Canadian compagnies to the ontology in order to classify them.

**Here is an exaple of the query used for this test:**

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
