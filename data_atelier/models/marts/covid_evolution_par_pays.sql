SELECT 
    pays, 
    date, 
    statut, 
    SUM(nombre_cas) AS total_cas

FROM {{ ref("JHU_COVID_19_TIMESERIES") }} 

GROUP BY pays, date, statut
ORDER BY pays, date