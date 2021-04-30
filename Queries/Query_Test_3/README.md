The second scenario-based test investigated the role of a blue team analyst responding to a security incident. 
In the ontology this is role is described by the ontology class Blue Team, a sub-class of the Cybersecurity Technical class
in the ontology and also described by the Blue Team Analyst, defined as an ontology individual. 
This is linked to query 4 looking for the know-what required for the role of Blue Team Analyst, 
the results of which are presented in table 9 in the dissertation. 
The Blue Team Analyst was also used in Q8, Q12 and Q19.

Here is an example of the query that is used:

From the tasks and KSAs identified the SPARQL query was created, which is presented below: 

prefix fts: <tag:stardog:api:property:textmatch:>

prefix stardogapi: <tag:stardog:api:>

select ?entity ?doc ?mention ?type ?label 
where {
  
  
?doc stardogapi:property:textMatch 
    "Blue Team Analyst",
    "Develop and implement network backup and recovery procedures" ,
    "Perform backup and recovery of databases to ensure data integrity" ,
    "Supports incident management, change management, release management continuity management, and availability management for databases and data management systems" ,
    "Ensure the execution of disaster recovery and continuity of operations" ,
    "Knowledge of data backup and recovery" ,
    "Knowledge of business continuity and disaster recovery continuity of operations plans" ,
    "Knowledge of vulnerability information dissemination sources" ,
    "Knowledge of data backup and restoration concepts" ,
    "Knowledge of the operations and processes for incident, problem and event management" ,
    "Knowledge of basic software applications and the types of vulnerabilities that have been found in those applications" ,
    "Skill in conducting vulnerability scans and recognizing vulnerabilities in security systems" ,
    "Skill in operating system administration" ,
    "Skill in interpreting vulnerability scanner results to identify vulnerabilities" ,
    "Ability to conduct vulnerability scans and recognize vulnerabilities in security systems" .


graph ?doc
  {
       
       
?doc stardog:docs:hasEntity ?entity .


?entity <http://purl.org/dc/terms/references> ?mention
   }
  	
    ?mention a ?type ; rdfs:label ?label
}
Order by ?doc
