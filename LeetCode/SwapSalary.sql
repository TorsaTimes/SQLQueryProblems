UPDATE salary 
SET 
    sex = CASE sex
    WHEN 'm' Then 'f'
    ELSE 'm'
    END;
