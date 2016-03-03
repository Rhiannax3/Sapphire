
CREATE ROLE Accounts IDENTIFIED BY Accounts;

GRANT SELECT ON Customer to Accounts;
GRANT INSERT ON Customer to Accounts;
GRANT UPDATE ON Customer to Accounts;

INSERT INTO WarehouseLocation VALUES ( 'Area Magic Shelf 101', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Magic Shelf 102', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Magic Shelf 201', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Magic Shelf 202', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Basic Shelf 101', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Basic Shelf 102', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Basic Shelf 103', 20, 0 ) ;
INSERT INTO WarehouseLocation VALUES ( 'Area Basic Shelf 201', 20, 0 ) ;

INSERT INTO Product VALUES ( 600001, 'Incredibly Basic Gnome',           10,   20, 20, 20, 0, 'Area Basic Shelf 101' );
INSERT INTO Product VALUES ( 600002, 'Less Basic Gnome',                 40,   20, 20, 20, 0, 'Area Basic Shelf 101' );
INSERT INTO Product VALUES ( 600003, 'Slightly Interesting Basic Gnome', 100,  20, 20, 20, 0, 'Area Basic Shelf 102' );
INSERT INTO Product VALUES ( 600004, 'Very Dull Gnome',                  1000, 20, 20, 20, 0, 'Area Basic Shelf 201' );
INSERT INTO Product VALUES ( 600005, 'Golden Gnome',                     1400, 3,  3,  3,  0, 'Area Magic Shelf 101' );
INSERT INTO Product VALUES ( 600006, 'Ruby Gnome',                       2000, 5,  5,  5,  0, 'Area Magic Shelf 101' );
INSERT INTO Product VALUES ( 600007, 'Magical Diamond Gnome',            3400, 3,  3,  3,  0, 'Area Magic Shelf 102' );
INSERT INTO Product VALUES ( 600008, 'Unicorn Candy Gnome Faerie',       8000, 1,  1,  1,  0, 'Area Magic Shelf 201' );
INSERT INTO Product VALUES ( 600009, 'Not So Great Gnome',               3000, 0,  0,  0,  1, 'Area Magic Shelf 202' );

INSERT INTO GeoDistribution VALUES ( 'NORTH001', 20, 0, 16 );
INSERT INTO GeoDistribution VALUES ( 'NORTH002', 20, 0, 16 );
INSERT INTO GeoDistribution VALUES ( 'EAST001',  10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'EAST002',  10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'WEST001',  10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'WEST002',  10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'SOUTH001', 10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'SOUTH002', 10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'WALES001', 10, 0, 8 );
INSERT INTO GeoDistribution VALUES ( 'SCOT001',  10, 0, 8 );

INSERT INTO Address VALUES ( '1', 'Pusscat Lane', 'Kitty', 'Puss', 'K1TTS0' ) ;
INSERT INTO Address VALUES ( '11', 'Street', 'Letchworth Garden City', 'Hertfordshire', 'SG6 OH1' ) ;

INSERT INTO PaymentDetails VALUES ( 1234567890123456, 1216, 123 ) ;
INSERT INTO PaymentDetails VALUES ( 2345678901234567, 1217, 234 ) ;

INSERT INTO Customer VALUES ( 1, 'Cat Smith',    to_date('1992-10-03', 'yyyy-mm-dd'), 'active', 'cat@kittens.com',  4476654987740, 2345678901234567, 234 );
INSERT INTO Customer VALUES ( 2, 'Oliver Heald', to_date('1968-12-23', 'yyyy-mm-dd'), 'active', 'tory@kittens.com', 4476765377407, 1234567890123456, 123 );

ALTER TABLE PaymentDetails
  Add Address_addressHouse    VARCHAR2 (45) NOT NULL
  
ALTER TABLE 
  
    Address_addressPostcode VARCHAR2 (8) NOT NULL

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

