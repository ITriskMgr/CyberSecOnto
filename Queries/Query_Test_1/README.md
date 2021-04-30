**Connecting to Stardog**

Prior to executing the queries, it is necessary to connect to the server. 
This is done by following the following steps:

Start Stardog studio and Connect to Stardog server, in this study the server is http://dev2.gagnontech.org:5820. 
A valid user account and password are required. 

It is then possible to connect to the ontology database instance.
From there the Workspace is accessed by using the left side menu. 
This is where SPARQL queries can be created and executed. 
This requires users to select the database against which to execute the query. 
In this study, as mentioned, there are two, using Stardog markup (CyberSec003) and the data using CoreNLP (CyberSec004).

**Executing the queries with Stardog search**

Once connected to Stardog, the queries that will be used to in the first test can be executed. 
As indicated, the external validity test will be comparing the CV of individual actors, extracted 
from the LinkedIn profiles of participants in the study, all of which had previously signed 
informed consents to participate in this research. This is done by analyzing the CV in a text format,
in this case extracted as a PDF file and processed using CoreNLP, as explained previously. 
The same query also makes it possible to obtain the data for the second test, which compares 
cybersecurity job posting from Canadian compagnies to the ontology in order to classify them. 

**Test 1 query**

prefix fts: <tag:stardog:api:search:>

SELECT * WHERE {

?class a owl:Class ;

rdfs:label ?keyword .  
 
service fts:textMatch {

[] fts:query "object of the search" ;

fts:score ?score ;

fts:result ?result ;

}

}

order by desc(?score) 
