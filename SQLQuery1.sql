WITH CTE AS(
SELECT
       [Jugadores]
	  ,Edad
      ,RANK() OVER(PARTITION BY Club ORDER BY MIN([Edad]), Jugadores) AS RANKING
	  ,Club
  FROM [VillaDalmine].[dbo].[futbolargentino]
  GROUP BY Jugadores, Edad, Club
)
SELECT
Jugadores, Edad, Club
FROM CTE
WHERE RANKING = '1'
ORDER BY Edad ASC