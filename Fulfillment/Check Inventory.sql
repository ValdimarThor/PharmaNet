USE [PharmaNet.Fulfillment.SQL.FulfillmentDB]

BEGIN TRAN

SELECT
	SUM(Quantity),
    Warehouse_Id,
    Product_ProductId
FROM PickLists
GROUP BY Warehouse_Id, Product_ProductId
  
SELECT
	SUM(QuantityOnHand),
	WarehouseId,
	ProductId
FROM Inventories
GROUP BY WarehouseId, ProductId

COMMIT
