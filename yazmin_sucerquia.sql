--------------------------------------------------------
-- Archivo creado  - miÃ©rcoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYS"."FUNCTION_1" (a IN NUMBER,b IN NUMBER,c IN NUMBER)
RETURN VARCHAR2 IS 
  concatenated VARCHAR2(50); --DECLARACION VARIABLES
  
BEGIN      
  IF (b >= c) THEN
    concatenated :=  a ||'/' || a * b || '/andres';
  ELSE
    concatenated := a ||'/' || a * b || '/martinez';
  END IF;
  
  RETURN concatenated;
END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYS"."FUNCTION_2" (n IN NUMBER)
RETURN NUMBER IS 
  nth NUMBER := 0; --DECLARACION VARIABLES
  first number:=0;
  second number:=1;
  third number;
  
BEGIN      
  FOR i IN 1..n LOOP
    third:=first+second;
    first:=second;
    second:=third;
    --DBMS_OUTPUT.PUT_LINE(third);
  END LOOP;  
   
    
  RETURN nth;
END;

