DECLARE

	A number(10);
	

BEGIN
	A :=&NUMBER1;
	
	IF A>0 THEN
		DBMS_OUTPUT.PUT_LINE('POSITIVE NUMBER ');
	ELSIF A<0 THEN
		DBMS_OUTPUT.PUT_LINE('NEGATIVE NUMBER');
	ELSE
		DBMS_OUTPUT.PUT_LINE('ZERO');
	END IF;
END;
/