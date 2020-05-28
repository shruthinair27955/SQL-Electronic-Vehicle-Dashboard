/*What are the total number of transactions by month?*/
SELECT m.month, COUNT(m.month) AS 'No. of Transactions'
FROM [Optimus.Makes] m
GROUP BY m.month

/*What is the total revenue by month?*/
SELECT m.month, SUM(p.paymentAmount) AS 'Total Revenue'
FROM [Optimus.Makes] m,[Optimus.Payment] p
WHERE m.paymentId=p.paymentId
GROUP BY  m.month

/*How are different locations performing in terms of revenue?*/
SELECT s.locationId, SUM(p.paymentAmount) AS 'Total Revenue'
FROM [Optimus.Parks] k,[Optimus.Payment] p,[Optimus.Station] s, [Optimus.Makes] m
WHERE s.stationId=k.stationId AND k.vehicleNumber=m.vehicleNumber AND m.paymentId=p.paymentId
GROUP BY  s.locationId

/*How are different locations performing in terms of transactions?*/
SELECT s.locationId, COUNT(p.paymentAmount) AS 'No. of Transactions'
FROM [Optimus.Parks] k,[Optimus.Payment] p,[Optimus.Station] s, [Optimus.Makes] m
WHERE s.stationId=k.stationId AND k.vehicleNumber=m.vehicleNumber AND m.paymentId=p.paymentId
GROUP BY  s.locationId

/*Which is the most popular payment mode how much revenue is being generated by each payment mode?*/
SELECT p.paymentMode, COUNT(p.paymentAmount) AS 'No. of Transactions',
((COUNT(p.paymentAmount)*100)/29) AS 'Percent', SUM(p.paymentAmount) AS 'Total Revenue'
FROM [Optimus.Payment] p
GROUP BY p.paymentMode

/*What is the revenue distribution amongst drivers with and without a campus permit?*/
SELECT d.permit, SUM(p.paymentAmount) AS 'Payment Amount'
FROM [Optimus.Payment] p,[Optimus.Driver] d, [Optimus.Makes] m
WHERE m.driverId=d.driverId AND m.paymentId=p.paymentId
GROUP BY d.permit

/*What is the number of stations at each location?*/
SELECT s.locationId, COUNT(s.stationId) AS 'No. of Stations'
FROM [Optimus.Station] s
GROUP BY s.locationId

/*How many vehicles have an equipped plug in  and how many don't?*/
SELECT v.equippedPlugin, COUNT(v.equippedPlugin) as 'No. of Drivers'
FROM [Optimus.Vehicle] v
GROUP BY v.equippedPlugin