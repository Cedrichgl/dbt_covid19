SELECT 
    pays, 
    SUM(nombre_cas) AS total_cas

FROM {{ ref("JHU_COVID_19_TIMESERIES") }}
WHERE statut = 'Confirmed'

GROUP BY pays
ORDER BY total_cas DESC
LIMIT 30