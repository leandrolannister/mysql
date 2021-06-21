use glpi;
SELECT DISTINCT TABLE_NAME  
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE COLUMN_NAME LIKE 'serial%'
        AND TABLE_SCHEMA='glpi';
