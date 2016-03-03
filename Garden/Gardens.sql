
CREATE ROLE Accounts IDENTIFIED BY Accounts;

GRANT SELECT ON Customer to Accounts;
GRANT INSERT ON Customer to Accounts;
GRANT UPDATE ON Customer to Accounts;

INSERT INTO Location VALUES ( 1, 'Area Magic Shelf 101' ) ;
INSERT INTO Location VALUES ( 2, 'Area Magic Shelf 102' ) ;
INSERT INTO Location VALUES ( 3, 'Area Basic Shelf 101' ) ;
INSERT INTO Location VALUES ( 4, 'Area Basic Shelf 102' ) ;
INSERT INTO Location VALUES ( 5, 'Area Basic Shelf 103' ) ;
INSERT INTO Location VALUES ( 6, 'Area Basic Shelf 201' ) ;

INSERT INTO Product VALUES ( 1, 'Incredibly Basic Gnome', 10.00, 20, 20, 20, 3 ) ;
INSERT INTO Product VALUES ( 2, 'Less Basic Gnome', 40.00, 20, 20, 20, 3 ) ;
INSERT INTO Product VALUES ( 3, 'Slightly Interesting Basic Gnome', 100.00, 20, 20, 20, 4 ) ;
INSERT INTO Product VALUES ( 4, 'Very Dull Gnome', 1000.00, 20, 20, 20, 6 ) ;
INSERT INTO Product VALUES ( 5, 'Golden Gnome', 1400.00, 3, 3, 3, 1 ) ;
INSERT INTO Product VALUES ( 6, 'Ruby Gnome', 2000.00, 5, 5, 5, 1 ) ;
INSERT INTO Product VALUES ( 7, 'Magical Diamond Gnome', 3400.00, 3, 3, 3, 1 ) ;
INSERT INTO Product VALUES ( 8, 'Unicorn Candy Gnome Faerie', 8000.00, 1, 1, 1, 2 ) ;

INSERT INTO GeographicalDistribution VALUES ( 1, 'NORTH001', 20, 0, 16 ) ;
INSERT INTO GeographicalDistribution VALUES ( 2, 'NORTH002', 20, 0, 16 ) ;
INSERT INTO GeographicalDistribution VALUES ( 3, 'EAST001', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 4, 'EAST002', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 5, 'WEST001', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 6, 'WEST002', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 7, 'SOUTH001', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 8, 'SOUTH002', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 9, 'WALES001', 10, 0, 8 ) ;
INSERT INTO GeographicalDistribution VALUES ( 10, 'SCOT001', 10, 0, 8 );
INSERT INTO GeographicalDistribution VALUES ( 11, 'SCOT002', 5, 0, 4 ) ;

INSERT INTO DeliveryAddress VALUES ( 1, '1', 'Pusscat Lane', 'Kitty', 'Puss', 'K1TTS0', 'England', 1 ) ;
INSERT INTO DeliveryAddress VALUES ( 2, '11', 'Street', 'Letchworth Garden City', 'Hertfordshire', 'SG6 OH1', 'England', 2 ) ;

INSERT INTO BillingAddress VALUES ( 1, '1', 'Pusscat Lane', 'Kitty', 'Puss', 'K1TTS0', 'England' ) ;
INSERT INTO BillingAddress VALUES ( 2, '11', 'Street', 'Letchworth Garden City', 'Hertfordshire', 'SG6 OH1', 'England' ) ;

INSERT INTO CardInfo VALUES ( 1234567890123456, 1216, 123, 1 ) ;
INSERT INTO CardInfo VALUES ( 2345678901234567, 1217, 234, 2 ) ;

INSERT INTO Customer VALUES ( 1, 'Cat Smith', to_date('1992-10-03', 'yyyy-mm-dd'), 'active', 'cat@kittens.com', 4476654987740, 1, 1, 2345678901234567 ) ;
INSERT INTO Customer VALUES ( 2, 'Oliver Heald', to_date('1968-12-23', 'yyyy-mm-dd'), 'active', 'tory@kittens.com', 447676537740, 2, 2, 1234567890123456 ) ;

INSERT INTO CallCentreEmployee VALUES ( 201, 'Ray Smithy' ) ;

INSERT INTO CustomerOrder VALUES ( 100001, to_date ('9:05:10 AM 24/03/2015', 'HH:MI:SS AM DD/MM/YYYY'), 1, 201 ) ;
INSERT INTO CustomerOrder VALUES ( 100002, to_date ('01:30:00 PM 05/04/2015', 'HH:MI:SS AM DD/MM/YYYY'), 1, 201 ) ;

INSERT INTO CustomerOrderLine VALUES ( 110001, 10, 0, 0, 'dispatched', 100001, 301, 1 ) ;
INSERT INTO CustomerOrderLine VALUES ( 110002, 1, 0, 0, 'dispatched', 100001, 301, 3 ) ;
INSERT INTO CustomerOrderLine VALUES ( 110003, 1, 1, 1, 'dispatched', 100001, 301, 4 ) ;
INSERT INTO CustomerOrderLine VALUES ( 110004, 1, 1, 1, 'dispatched', 100001, 302, 7 ) ;

INSERT INTO WarehouseEmployee VALUES ( 301, 'Stocker', 0, 'Ben Back' ) ;
INSERT INTO WarehouseEmployee VALUES ( 302, 'Stocker', 1, 'Petunia Snuggles' ) ;
INSERT INTO WarehouseEmployee VALUES ( 303, 'Painter', 0, 'Daisy Petal' ) ;

INSERT INTO CustomerReturn VALUES ( 111001, to_date ('11:05:00 AM 02/04/2015', 'HH:MI:SS AM DD/MM/YYYY'), 'complete', 100001 ) ;

INSERT INTO ReturnOrderLine VALUES ( 111101, 1, 'complete', 111001, 301, 110001 ) ;

INSERT INTO Supplier VALUES ( 400001, 'GnomeScope', 12345678, 123456, 01524867456, 'gnome@scope.com' ) ;

INSERT INTO SupplierInfo VALUES ( 410001, 5.00, 48, 400001, 1 ) ;

INSERT INTO PurchaseOrder VALUES ( 500001, to_date ('10:25:30 AM 20/03/2015', 'HH:MI:SS AM DD/MM/YYYY'), to_date ('09:15:30 AM 23/03/2015', 'HH:MI:SS AM DD/MM/YYYY'), 'complete', 400001 ) ;

INSERT INTO PurchaseOrderLine VALUES ( 510001, 1, 'stocked', 500001, 1, 301 ) ;
INSERT INTO PurchaseOrderLine VALUES ( 510002, 12, 'stocked', 500001, 2, 302 ) ;
INSERT INTO PurchaseOrderLine VALUES ( 510003, 4, 'stocked', 500001, 4, 301 ) ;





















