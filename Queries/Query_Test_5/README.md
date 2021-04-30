This directory contains the excell file with the results of test 5. This test is pretty much the same as test 4 
but rather than manually extracting the mitigation measures, we automate the process.
The MITRE Atta&ck tactic is used to extract the Mitigation measures from the ontology
From there the mitigation measures are used to identify the job descriptions and roles
Finallym theses are matched to the graph.

Here is an example of the queries used:

PREFIX : <http://webprotege.stanford.edu/> 

PREFIX fts: <tag:stardog:api:property:textmatch:> 

PREFIX fots: <tag:stardog:api:search:> 

PREFIX  dc: <http://purl.org/dc/terms/> 

SELECT ?tactic ?mitigation ?doc ?score

(GROUP_CONCAT(?mention; SEPARATOR=",") as ?mentions)

WHERE { 

  FILTER(?tactic = "T1199") 
  
  FILTER(?property = :R9FIH0JGU0cP0BhCagaD9vG) 

  ?subject rdfs:subClassOf ?bNode ;
  
          rdfs:label ?tactic .

  ?bNode owl:onProperty ?property ;
  
         owl:someValuesFrom ?value .
  
  ?value rdfs:label ?mitigation .

  service fots:textMatch {
  
    [] fots:query ?mitigation ;
    
       fots:score ?score ;
       
       fots:result ?doc .
  }

  graph ?doc {
  
    ?entity dc:references ?reference .
  }

 ?reference rdfs:label ?mention .
}
GROUP BY ?tactic ?mitigation ?doc ?score 

ORDER BY desc(?score) 
