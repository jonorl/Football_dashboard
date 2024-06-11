# Football_dashboard
Sample of data manipulation and data presentation on PowerBI


SQL data manipulation


Converted Altura (Height in M) to float.

Converted Fichado (date) to YYYY-MM-DD format

Converted Valor de mercado (market value) to money

Edad (Age) should be integers but there are values with the deceased symbol (†) so those were moved to a new boolean (bit) column. Age was then converted to int

Pie (right/left handed) was also converted to boolean for 1 for right handed, 0 for left handed - ambidexterous were ignored and assumed as the rest of NULL values.

Renamed all 'Portero' positions on the positions column to 'Arquero'

The attached query was a ranking of the youngest players per club, using CTE, RANK and OVER/PARTITION


PowerBI Dashboard


A new Column with a calculation was added to know when a player comes from the club seeds. Viene de inferiores? = IF(CONTAINSSTRING([Equipo_Anterior],"Inferiores"),True,False)

The tab for Age shows average age, median age, avg player value, age distribution, scattered plot of age and value and indexed table of average age and its avg value.

The tab for Height shows the average and median heights in meters, height distribution and scatter plot for height and value.

The tab for Position shows the number of players and their position in the field, the distribution and the average value per position.

The tab for Club shows the number of players per club, the number coming from seed and the percentage. The two last ones as calculated fields. Then there's the number of players by club, the right/left hand distribution and percentages also using calculated fields and the right v left column chart.

The tab for Date shows stats per date of transfer, counting players per year, on both a table and a columns chart plus the average value per year.
