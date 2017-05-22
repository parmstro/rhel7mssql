IF EXISTS (SELECT COUNT(*) FROM sys.objects WHERE name = 'generateOrder' AND type = 'P') 
BEGIN 
	DROP PROCEDURE testschema.generateOrder
END;
GO

CREATE PROCEDURE testschema.generateOrder 
AS
BEGIN

DECLARE @totalEmployees INT    -- the total number of employees
DECLARE @totalCustomers INT    -- the total number of customers
DECLARE @totalItems INT        -- the total number of items

DECLARE @EmployeeID INT        -- the employee that made the order
DECLARE @CustomerID INT        -- the customer that gets the order
DECLARE @OrderID INT           -- the orderID for the items to be attached to
DECLARE @ItemID INT            -- the itemID of the item to order
DECLARE @MeasureID INT         -- the measurement units that the quantity of the order item is in.
DECLARE @countItems INT        -- random number of items in the order
DECLARE @counter INT 	       -- an iterator
DECLARE @Qty INT					 -- the number of items of a given itemid to be ordered.

-- Generate a random order of items for a random customer and assign it to a random employee
SET @totalEmployees = (SELECT COUNT(*) FROM testschema.employees)
SET @totalCustomers = (SELECT COUNT(*) FROM testschema.customers)
SET @totalItems = (SELECT COUNT(*) FROM testschema.items)

WHILE (@EmployeeID IS NULL)
  BEGIN
    SET @EmployeeID = (SELECT id FROM testschema.employees WHERE id = (SELECT FLOOR(RAND()*(@totalEmployees-1)+1)))
  END

WHILE (@CustomerID IS NULL)
  BEGIN
    SET @CustomerID = (SELECT id FROM customers WHERE id = (SELECT FLOOR(RAND()*(@totalCustomers-1)+1)))
  END

SET @countItems = (SELECT FLOOR(RAND()*(20-1)+1))

BEGIN TRANSACTION
  INSERT INTO testschema.orders (EmployeeID, CustomerID, DateOrdered) VALUES
  (@EmployeeID, @CustomerID, GETDATE())
  SET @OrderID = (SELECT @@IDENTITY)
  SET @counter = 1
  WHILE (@counter <= @countItems)
    BEGIN
      WHILE (@ItemID IS NULL)
        BEGIN
          SET @ItemID = (SELECT id FROM testschema.items WHERE id = (SELECT FLOOR(RAND()*(@totalItems-1)+1)))
        END -- WHILE
      SET @MeasureID = (SELECT measureid FROM testschema.items WHERE id = @ItemID)
      SET @Qty = (SELECT FLOOR(RAND()*(20-1)+1))
      INSERT INTO testschema.orderdetails (OrderID, Qty, MeasureID, ItemID) VALUES
      (@OrderID, @Qty, @MeasureID, @ItemID)
      SET @counter = @counter + 1
      SET @ItemID = NULL
    END -- WHILE
COMMIT TRANSACTION

SELECT @OrderID AS OrderID

END -- SPROC
;
GO

EXEC testschema.generateOrder;
GO
