This directory contains the files for the initial queries in the ontology. 
These SPARQL queries are don in Protégé, installed on the desktop, as WebProtégé does not have SPARQL support at this time.
**
Query 1: **
PREFIX CyberSecOnto: <http://webprotege.stanford.edu/project/DpeZFWjjTksyFnolG1b70o#>
SELECT DISTINCT ?Know_How
WHERE { 
?analyst a <http://webprotege.stanford.edu/RDT0Br1r5F6LW8Aeq9bAcuh>.
?analyst CyberSecOnto:hasKnowHow ?Know_How. 
} 

