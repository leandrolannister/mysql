use workflow;
SELECT
     FD.D001_FormulariosDataID,
     OW.D001_OcorrenciasWorkflowID,
    CONCAT(
     CASE FD.D001_FormulariosFieldsID
       WHEN 16 THEN CONCAT(SUBSTR(OW.DataAbetura, 9, 2), '/', SUBSTR(OW.DataAbetura, 6, 2), '/', SUBSTR(OW.DataAbetura, 1, 4), ' ', SUBSTR(OW.DataAbetura, 12, 8))
       WHEN 48 THEN CONCAT(SUBSTR(OW.DataAbetura, 9, 2), '/', SUBSTR(OW.DataAbetura, 6, 2), '/', SUBSTR(OW.DataAbetura, 1, 4), ' ', SUBSTR(OW.DataAbetura, 12, 8))
       WHEN 18 THEN CONCAT(SUBSTR(OW.DataEncerramento, 9, 2), '/', SUBSTR(OW.DataEncerramento, 6, 2), '/', SUBSTR(OW.DataEncerramento, 1, 4), ' ', SUBSTR(OW.DataEncerramento, 12, 8))
       WHEN 51 THEN CONCAT(SUBSTR(OW.DataEncerramento, 9, 2), '/', SUBSTR(OW.DataEncerramento, 6, 2), '/', SUBSTR(OW.DataEncerramento, 1, 4), ' ', SUBSTR(OW.DataEncerramento, 12, 8))
     END) AS 'nova_data',
     FD.Descricao
FROM D001_FormulariosData FD
INNER JOIN D001_OcorrenciasWorkflow OW ON (FD.D001_OcorrenciasWorkflowID = OW.D001_OcorrenciasWorkflowID)
WHERE FD.D001_FormulariosFieldsID IN (16, 18, 48, 51)
AND FD.Descricao != ''
AND FD.Descricao REGEXP '^[0-9]{2}\/[0-9]{2}\/[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2}' = 0
AND (
    FD.D001_FormulariosFieldsID IN (16, 48)
    AND OW.DataAbetura IS NOT NULL
)
AND DATE(FD.Created_at) >= '2021-01-01'
ORDER BY FD.Created_at DESC