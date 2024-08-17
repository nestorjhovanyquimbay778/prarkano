SELECT 
    Product, 
    Sub_product, 
    ISNULL([1], 0) AS Q1,  -- Trimestre 1
    ISNULL([2], 0) AS Q2,  -- Trimestre 2
    ISNULL([3], 0) AS Q3,  -- Trimestre 3
    ISNULL([4], 0) AS Q4   -- Trimestre 4
FROM 
    (SELECT 
         Product, 
         Sub_product, 
         DATEPART(QUARTER, Datereceived) AS Trimestre,
         COUNT(*) AS Numero_de_quejas
     FROM 
         ConsumerComplaints
     WHERE 
         YEAR(Datereceived) = 2023
     GROUP BY 
         Product, 
         Sub_product, 
         DATEPART(QUARTER, Datereceived)
    ) AS SourceTable
PIVOT 
    (
        SUM(Numero_de_quejas) 
        FOR Trimestre IN ([1], [2], [3], [4])
    ) AS PivotTable
ORDER BY 
    Product ASC, 
    Sub_product ASC;
