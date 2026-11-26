This directory contains the files for the initial queries in the ontology. 
These SPARQL queries are don in Protégé, installed on the desktop, as WebProtégé does not have SPARQL support at this time.

If you want to use the SPARQL queries to run theses tests, you need to view the file as RAW to avoid formatting errors.

**Query 1**

PREFIX CyberSecOnto: <https://w3id.org/cyberseconto/>

SELECT DISTINCT ?Know_How

WHERE { 

?analyst a <https://w3id.org/cyberseconto/RDT0Br1r5F6LW8Aeq9bAcuh>.

?analyst CyberSecOnto:hasKnowHow ?Know_How. 

} 


**Query 2**

PREFIX CyberSecOnto: <https://w3id.org/cyberseconto/> 

SELECT DISTINCT ?knowledge 

WHERE { 

?analyst a <https://w3id.org/cyberseconto/RDR1JnLSCzLfwVkxsVDjaVu>. 

?analyst CyberSecOnto:hasKnowledge ?knowledge. 

}


**Query 3**

PREFIX CyberSecOnto: <https://w3id.org/cyberseconto/> 

SELECT ?knowhow 

WHERE { <https://w3id.org/cyberseconto/R7bGEqPo69Ee7iBx0OvVlJD>


CyberSecOnto:hasKnowHow ?knowhow. 

}

**Query 4**

PREFIX CyberSecOnto: <https://w3id.org/cyberseconto/>
 
SELECT ?knowwhat 

WHERE { <https://w3id.org/cyberseconto/RCfgS40OzkThXlfF7h8NCS4>

CyberSecOnto:hasKnowWhat ?knowwhat. 

}


