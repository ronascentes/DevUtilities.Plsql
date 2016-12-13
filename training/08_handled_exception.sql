DECLARE
    e_TooManyStudents EXCEPTION;
    v_CurrentStudents NUMBER := 15;
    v_MaxStudents     NUMBER := 10;
BEGIN
    IF v_CurrentStudents > v_MaxStudents THEN
        RAISE e_TooManyStudents;
    END IF;
EXCEPTION
    WHEN e_TooManyStudents THEN
        DBMS_OUTPUT.PUT_LINE ('ERROR: Students'' limit excessed !');
END;
