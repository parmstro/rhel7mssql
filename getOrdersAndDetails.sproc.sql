DROP PROCEDURE testschema.getOrderAndDetails
GO

CREATE PROCEDURE testschema.getOrderAndDetails (@OrderID INT)
AS
BEGIN
  SELECT
    O.id AS OrderID,
    E.id AS EmployeeID,
    C.id AS CustomerID,
    E.name AS EmployeeName, 
    L.cityname AS EmployeeLocation,
    L.imageURL AS EmployeeMap, 
    C.name AS CustomerName, 
    L2.cityname AS CustomerCity, 
    L2.countryname AS CustomerCountry,
    L2.imageURL AS CustomerMap,
    O.dateordered AS DateOrdered
  FROM
    testschema.orders AS O
  INNER JOIN testschema.employees AS E ON E.id = O.employeeid 
  INNER JOIN testschema.locations AS L ON E.locationid = L.id
  INNER JOIN testschema.customers AS C ON C.id = O.customerid
  INNER JOIN testschema.locations AS L2 ON C.locationid = L2.id
  WHERE O.id = @OrderID

  SELECT
    I.id AS ItemID,
    OD.qty AS Qty,
    M.name As UnitOfMeasure,
    I.name AS ItemName, 
    I.ImageURL AS ItemPicture,		
    OD.picked AS ItemPickedForDelivery
  FROM
    orderdetails AS OD
  INNER JOIN testschema.measures AS M ON M.id = OD.measureid
  INNER JOIN testschema.items AS I ON I.id = OD.itemid
  WHERE OD.orderid = @OrderID
END
;

GO
