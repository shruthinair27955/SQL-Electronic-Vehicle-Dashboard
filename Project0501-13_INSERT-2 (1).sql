DELETE FROM [Optimus.Location]
DELETE FROM [Optimus.Driver]
DELETE FROM [Optimus.Drives]
DELETE FROM [Optimus.Makes]
DELETE FROM [Optimus.Parks]
DELETE FROM [Optimus.Payment]
DELETE FROM [Optimus.Station]
DELETE FROM [Optimus.Vehicle]


INSERT INTO [Optimus.Location] VALUES
	('L000000001','Lot MV','4116 Mowatt Ln College Park MD 20740'),
	('L000000002','Capital One Field','90 Stadium Dr College Park MD 20742'),
	('L000000003','McKeldin Library','7649 Library Ln College Park MD 20742'), 
	('L000000004','Xfinity Center','College Park MD 20742'),
	('L000000005','Regents Drive Garage','College Park MD 20742'),
	('L000000006','Denton Dining Hall','7093 Preinkert Dr College Park MD 20740'),
	('L000000007','Ellicott Dining Hall','7093 Preinkert Dr College Park MD 20740'),
	('L000000008','Lacrosse Field','8483 Paint Branch Dr College Park MD 20742'),
	('L000000009','Clarice Smith','8270 Alumni Dr College Park MD 20742'),
	('L000000010','Union Lane Garage','214 Campus Dr College Park MD 20742');

INSERT INTO [Optimus.Driver] VALUES
	('D000000001','James','Potter','Yes'),
	('D000000002','Lily','Potter','Yes'),
	('D000000003','Harry','Potter','No'), 
	('D000000004','Albus','Potter','Yes'),
	('D000000005','Ron','Weasley','Yes'),
	('D000000006','Fred','Weasley','No'),
	('D000000007','George','Weasley','No'),
	('D000000008','Ginny','Weasley','Yes'),
	('D000000009','Tom','Riddle','No'),
	('D000000010','Cho','Chang','Yes');


INSERT INTO [Optimus.Vehicle] VALUES
	('M992446','Yes'),
	('M987666','Yes'),
	('M882446','Yes'),
	('M892036','No'),
	('M992226','No'),
    ('M456786','No'),
	('M446678','No'),
	('M992111','Yes'),
	('M992123','Yes'),
	('M432446','No');

INSERT INTO [Optimus.Payment] VALUES
	('P000000001','ParkMobile','9.00'),
	('P000000011','Meter','6.00'),
	('P000000012','ParkMobile','6.00'),
	('P000000002','Meter','6.00'),
	('P000000013','ParkMobile','3.00'),
	('P000000014','ParkMobile','18.00'),
	('P000000015','Meter','15.00'),
	('P000000016','Pay Station','3.00'),
	('P000000003','ParkMobile','12.00'),
	('P000000017','Meter','15.00'),
	('P000000018','ParkMobile','18.00'),
	('P000000019','Meter','9.00'), 
	('P000000004','ParkMobile','0.00'),
	('P000000020','ParkMobile','12.00'),
	('P000000021','ParkMobile','6.00'),
	('P000000005','Pay Station','3.00'),
	('P000000006','Meter','21.00'),
	('P000000022','Meter','27.00'),
	('P000000007','Meter','21.00'),
	('P000000023','Meter','15.00'),
	('P000000024','Meter','30.00'),
	('P000000025','Meter','18.00'),
	('P000000026','Meter','21.00'),
	('P000000027','Meter','21.00'),
	('P000000008','ParkMobile','12.00'),
	('P000000028','Pay Station','0.00'),
	('P000000029','ParkMobile','18.00'),
	('P000000009','Meter','6.00'),
	('P000000010','Pay Station','15.00');


INSERT INTO [Optimus.Station] VALUES
	('S000000001','L000000001','2'),
	('S000000011','L000000001','4'),
	('S000000012','L000000001','2'),
	('S000000013','L000000001','4'),
	('S000000014','L000000001','4'),
	('S000000002','L000000002','6'),
	('S000000015','L000000002','6'),
	('S000000016','L000000002','4'),
	('S000000017','L000000002','8'),
	('S000000003','L000000003','1'),
	('S000000018','L000000003','2'),
	('S000000019','L000000003','1'),
	('S000000004','L000000004','1'),
	('S000000020','L000000004','1'),
	('S000000005','L000000005','4'),
	('S000000021','L000000005','4'),
	('S000000022','L000000005','2'),
	('S000000023','L000000005','2'),
	('S000000006','L000000006','2'),
	('S000000024','L000000006','2'),
	('S000000007','L000000007','2'),
	('S000000025','L000000007','4'),
	('S000000008','L000000008','4'),
	('S000000026','L000000008','4'),
	('S000000027','L000000008','4'),
	('S000000028','L000000008','4'),
	('S000000009','L000000009','2'),
	('S000000010','L000000010','2');

INSERT INTO [Optimus.Drives] VALUES
	('D000000001','M992446'),
	('D000000002','M987666'),
	('D000000003','M882446'),
	('D000000004','M892036'),
	('D000000005','M992226'),
    ('D000000006','M456786'),
	('D000000007','M446678'),
	('D000000008','M992111'),
	('D000000009','M992123'),
	('D000000010','M432446');

INSERT INTO [Optimus.Makes] VALUES
	('D000000001','M992446','P000000001','12','4','2019','6','3'),
	('D000000001','M992446','P000000011','11','4','2019','4','2'),
	('D000000001','M992446','P000000012','10','4','2019','6','4'),
	('D000000002','M987666','P000000002','12','17','2019','5','3'),
	('D000000002','M987666','P000000013','9','16','2019','5','4'),
	('D000000002','M987666','P000000014','7','1','2019','7','1'),
	('D000000002','M987666','P000000015','5','7','2019','8','3'),
	('D000000002','M987666','P000000016','11','27','2019','4','3'),
	('D000000003','M882446','P000000003','10','20','2019','4','2'),
	('D000000003','M882446','P000000017','8','21','2019','5','2'),
	('D000000003','M882446','P000000018','4','2','2019','6','2'),
	('D000000003','M882446','P000000019','3','30','2019','3','2'),
	('D000000004','M892036','P000000004','2','14','2019','1','1'),
	('D000000004','M892036','P000000020','1','13','2019','5','1'),
	('D000000004','M892036','P000000021','4','12','2019','4','2'),
	('D000000005','M992226','P000000005','11','9','2019','2','1'),
    ('D000000006','M456786','P000000006','3','4','2019','7','4'),
	('D000000006','M456786','P000000022','4','5','2019','9','6'),
	('D000000007','M446678','P000000007','2','26','2019','7','3'),
	('D000000007','M446678','P000000023','3','6','2019','5','2'),
	('D000000007','M446678','P000000024','4','30','2019','10','8'),
	('D000000007','M446678','P000000025','4','19','2019','6','4'),
	('D000000007','M446678','P000000026','10','6','2019','7','6'),
	('D000000007','M446678','P000000027','11','11','2019','7','2'),
	('D000000008','M992111','P000000008','7','10','2019','5','1'),
	('D000000008','M992111','P000000028','8','3','2019','3','3'),
	('D000000008','M992111','P000000029','11','12','2019','7','1'),
	('D000000009','M992123','P000000009','5','12','2019','2','2'),
	('D000000010','M432446','P000000010','8','21','2019','8','3');


INSERT INTO [Optimus.Parks] VALUES
	('M992446','S000000001'),
	('M987666','S000000002'),
	('M882446','S000000003'),
	('M892036','S000000004'),
	('M992226','S000000005'),
    ('M456786','S000000006'),
	('M446678','S000000007'),
	('M992111','S000000008'),
	('M992123','S000000009'),
	('M432446','S000000010');

SELECT * FROM [Optimus.Payment]