30/3
#30/3 - JSON Contains Path

CREATE TABLE X (Y JSON);

INSERT INTO X VALUES ('{"nome": "Roberto", "telefone":"1234-5678"}');
INSERT INTO X VALUES ('{"nome": "Maria"}');
INSERT INTO X VALUES ('{"nome": "Alberto", "endereço":"Rua x numero y"}');
INSERT INTO X VALUES ('{"nome": "Leticia", "endereço":"Rua x numero y",
"telefone":"1234-5678"}');
SELECT Y FROM X;
SELECT JSON_CONTAINS_PATH(Y,"ONE",'$.nome','$.endereço') FROM X; 
SELECT JSON_CONTAINS_PATH(Y,"ALL",'$.nome','$.endereço') 
FROM X; 

SELECT JSON_CONTAINS(Y, '"1234-5678"',"$.telefone") FROM X;
SELECT * FROM X JSON_CONTAINS(Y, '"1234-5678"',"$.telefone") FROM X;
SELECT *FROM X WHERE
 JSON_CONTAINS(Y, '"1234-5678"',"$.telefone") = 1;
 
SELECT JSON_SEARCH(Y, "ONE",'"Maria') FROM X;
SELECT JSON_SEARCH(Y, "ALL",'"Rua x numero y"') FROM X; 
