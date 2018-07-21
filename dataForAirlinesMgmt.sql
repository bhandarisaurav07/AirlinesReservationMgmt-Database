INSERT INTO airport VALUES('A1','LAX','Los Angeles','USA');
INSERT INTO airport VALUES('A2','IAH','Atlanta','USA');
INSERT INTO airport VALUES('A3','IAH','Houston','USA');
INSERT INTO airport VALUES('A4','DFW','Dallas','USA');
INSERT INTO airport VALUES('A5','JFK','NewYork','USA');
INSERT INTO airport VALUES('A6','DEN','Denver','USA');
INSERT INTO airport VALUES('A7','MIA','Miami','USA');
INSERT INTO airport VALUES('A8','ORD','Chicago','USA');
INSERT INTO airport VALUES('A9','MSY','New Orleans','USA');

select * from airport;


INSERT INTO client VALUES('01','MARK','CUBAN', '17642181', 'A1','FA');
INSERT INTO client VALUES('02','JIM','BEAM', '18042151', 'A2','FB');
INSERT INTO client VALUES('03','GEORGE','WASHINGTON', '31532182', 'A1','FG');
INSERT INTO client VALUES('04','PAUL','HEYMAN', '43624111', 'A4','FD');
INSERT INTO client VALUES('05','LUCI','JOHNSON', '92222085', 'A5','FE');
INSERT INTO client VALUES('06','MARIA','FRIGGIE', '92015583', 'A3','FC');
INSERT INTO client VALUES('07','MORGAN','BRANTLY', '03532180', 'A1','FG');
INSERT INTO client VALUES('08','LUKAS','PODOLSKI', '08902180', 'A6','FI');
INSERT INTO client VALUES('09','AB','DEVILLIERS', '03534321', 'A7','FJ');
INSERT INTO client VALUES('10','STEVE','SMITH', '03789080', 'A7','FO');
INSERT INTO client VALUES('11','JASON','ROY', '03566555', 'A8','FL');
INSERT INTO client VALUES('12','ELLYSE','PERRY', '98755580', 'A9','FM');
INSERT INTO client VALUES('13','JENNA','MUSE', '45222121', 'A3','FC');

select * FROM client;

INSERT INTO phone VALUES('3345671245','01');
INSERT INTO phone VALUES('3342126107','02');
INSERT INTO phone VALUES('3345675021','02');
INSERT INTO phone VALUES('4050377602','03');
INSERT INTO phone VALUES('3341272345','03');
INSERT INTO phone VALUES('3349421735','04');
INSERT INTO phone VALUES('8325315024','05');
INSERT INTO phone VALUES('8325319999','06');
INSERT INTO phone VALUES('8325314561','07');
INSERT INTO phone VALUES('8325311234','08');
INSERT INTO phone VALUES('8325310000','09');
INSERT INTO phone VALUES('8325319635','10');
INSERT INTO phone VALUES('8325317456','11');
INSERT INTO phone VALUES('8325317894','12');
INSERT INTO phone VALUES('8325316547','13');
select * FROM phone;

INSERT INTO spouse VALUES('21','Mary','01','01246971');
INSERT INTO spouse VALUES('22','Amber','02','01254521');
INSERT INTO spouse VALUES('23','Jenna','03','21244913');
INSERT INTO spouse VALUES('24','Megan','04','31542371');
INSERT INTO spouse VALUES('25','Marcus','05','52216341');
select * FROM spouse;

INSERT INTO booking VALUES('00001','01',1502.33);
INSERT INTO booking VALUES('00002','02',1634.21);
INSERT INTO booking VALUES('00003','03',2025.28);
INSERT INTO booking VALUES('00004','04',3012.11);
INSERT INTO booking VALUES('00005','05',4045.21);
INSERT INTO booking VALUES('00006','06',3048.91);
INSERT INTO booking VALUES('00007','07',4125.27);
INSERT INTO booking VALUES('00008','08',4045.00);
INSERT INTO booking VALUES('00009','09',2585.21);
INSERT INTO booking VALUES('00010','10',1998.50);
INSERT INTO booking VALUES('00011','11',2075.00);
INSERT INTO booking VALUES('00012','12',2818.27);
INSERT INTO booking VALUES('00013','13',1990.85);

select * from booking;

INSERT INTO airlines VALUES('41','SPIRIT','BOSTON');
INSERT INTO airlines VALUES('42','DELTA','ATLANTA')
INSERT INTO airlines VALUES('43','AMERICAN','HAWAII');
INSERT INTO airlines VALUES('44','JETBLUE','DALLAS');
INSERT INTO airlines VALUES('45','ALASKA','ALASKA');
select * FROM airlines;

INSERT INTO flightstatus VALUES('S1','17:30', '01/Jan/2019', '5:30', '1/Jan/2019');
INSERT INTO flightstatus VALUES('S2','11:25', '02/Feb/2019', '2:45','02/Feb/2019');
INSERT INTO flightstatus VALUES('S3','13:30', '08/Aug/2018', '3:20','07/Aug/2018');
INSERT INTO flightstatus VALUES('S4','14:30', '10/Aug/2018', '4:20','10/Aug/2018');
INSERT INTO flightstatus VALUES('S5','15:30', '29/May/2018', '5:45','28/May/2018');
INSERT INTO flightstatus VALUES('S6','11:30', '06/May/2018', '5:35','07/May/2018');
INSERT INTO flightstatus VALUES('S7','6:40', '09/June/2018', '7:50','09/June/2018');
INSERT INTO flightstatus VALUES('S8','8:30', '28/Nov/2018', '11:00','28/Nov/2018');
select * from flightstatus;

INSERT INTO flight VALUES('FA','A1', 'A3', 'S1', '41','FC');
INSERT INTO flight VALUES('FB','A2', 'A4', 'S2', '42', NULL);
INSERT INTO flight VALUES('FC','A3', 'A1', 'S3', '43', NULL);
INSERT INTO flight VALUES('FD','A4', 'A5', 'S3', '44','FE');
INSERT INTO flight VALUES('FE','A5', 'A4', 'S5', '45', NULL);
INSERT INTO flight VALUES('FF','A2', 'A1', 'S6', '41', NULL);
INSERT INTO flight VALUES('FG','A1', 'A5', 'S4', '44','FH');
INSERT INTO flight VALUES('FH','A5', 'A1', 'S7', '45', NULL);
INSERT INTO flight VALUES('FI','A6', 'A1', 'S8', '41', NULL);
INSERT INTO flight VALUES('FJ','A7', 'A9', 'S8', '44','FM');
INSERT INTO flight VALUES('FK','A4', 'A6', 'S1', '45', NULL);
INSERT INTO flight VALUES('FL','A8', 'A7', 'S2', '41', NULL);
INSERT INTO flight VALUES('FM','A9', 'A7', 'S4', '44', NULL);
INSERT INTO flight VALUES('FN','A6', 'A4', 'S6', '45', 'FK');
INSERT INTO flight VALUES('FO','A7', 'A1', 'S4', '41', NULL);
select * FROM flight;

INSERT INTO aircraft VALUES('AA','A380', 'FA');
INSERT INTO aircraft VALUES('AB','A330', 'FB');
INSERT INTO aircraft VALUES('AC','B787', 'FC');
INSERT INTO aircraft VALUES('AD','B777', 'FD');
INSERT INTO aircraft VALUES('AE','B777X', 'FE');
INSERT INTO aircraft VALUES('AF','B767', 'FF');
INSERT INTO aircraft VALUES('AG','A380', 'FG');
INSERT INTO aircraft VALUES('AH','A330', 'FH');
INSERT INTO aircraft VALUES('AI','B787', 'FI');
INSERT INTO aircraft VALUES('AJ','B777', 'FJ');
INSERT INTO aircraft VALUES('AK','B777X', 'FK');
INSERT INTO aircraft VALUES('AL','B767', 'FL');
INSERT INTO aircraft VALUES('AM','B777', 'FM');
INSERT INTO aircraft VALUES('AN','B777X', 'FN');
INSERT INTO aircraft VALUES('AO','B767', 'FO');
select * from aircraft;


INSERT INTO components VALUES('C11','Wings');
INSERT INTO components VALUES('C12','Propeller');
INSERT INTO components VALUES('C13','Jet Engine');
INSERT INTO components VALUES('C14','Cockpit');
select * from components;

INSERT INTO manufracturer VALUES('1x1','Airbus');
INSERT INTO manufracturer VALUES('2x2','Boeing');
select * from manufracturer;


INSERT INTO provides VALUES('1x1','C11', 'AA');
INSERT INTO provides VALUES('1x1','C12', 'AB');
INSERT INTO provides VALUES('1x1','C14', 'AC');
INSERT INTO provides VALUES('2x2','C13', 'AD');
INSERT INTO provides VALUES('2x2','C12', 'AD');
INSERT INTO provides VALUES('2x2','C14', 'AE');
INSERT INTO provides VALUES('2x2','C11', 'AF');
INSERT INTO provides VALUES('1x1','C11', 'AG');
INSERT INTO provides VALUES('1x1','C12', 'AH');
INSERT INTO provides VALUES('1x1','C14', 'AI');
INSERT INTO provides VALUES('1x1','C13', 'AJ');
INSERT INTO provides VALUES('2x2','C12', 'AK');
INSERT INTO provides VALUES('1x1','C14', 'AL');
INSERT INTO provides VALUES('2x2','C11', 'AM');
INSERT INTO provides VALUES('1x1','C12', 'AN');
INSERT INTO provides VALUES('1x1','C14', 'AO');
INSERT INTO provides VALUES('2x2','C13', 'AB');
INSERT INTO provides VALUES('2x2','C12', 'AC');
INSERT INTO provides VALUES('2x2','C14', 'AD');
INSERT INTO provides VALUES('2x2','C11', 'AA');
select * from provides;


INSERT INTO advertisements VALUES('Ad11','VS Lingerie');
INSERT INTO advertisements VALUES('Ad12','Gallo wine');
INSERT INTO advertisements VALUES('Ad13','Trump Hotel');
INSERT INTO advertisements VALUES('Ad14','Airbnb');
INSERT INTO advertisements VALUES('Ad15','Four Loko beer');

select * from advertisements;



INSERT INTO travelclass VALUES('C1','Economic','regular',NULL);
INSERT INTO travelclass VALUES('C2','Business','private cabins',NULL);
INSERT INTO travelclass VALUES('C3','First','bed and bath', 'champagne');
select * from travelclass;

INSERT INTO offers VALUES('C1','Ad15', NULL);
INSERT INTO offers VALUES('C1','Ad14', NULL);
INSERT INTO offers VALUES('C2','Ad11', '5%');
INSERT INTO offers VALUES('C2','Ad13', '10%');
INSERT INTO offers VALUES('C3','Ad12', NULL);
INSERT INTO offers VALUES('C3','Ad13', '10%');

select * from offers;

INSERT INTO aircraftseat VALUES('1111','AA', 'C1');
INSERT INTO aircraftseat VALUES('1211','AB', 'C1');
INSERT INTO aircraftseat VALUES('1321','AC', 'C2');
INSERT INTO aircraftseat VALUES('1322','AC', 'C2');
INSERT INTO aircraftseat VALUES('1431','AD', 'C3');
INSERT INTO aircraftseat VALUES('1531','AE', 'C3');
INSERT INTO aircraftseat VALUES('1631','AF', 'C3');
INSERT INTO aircraftseat VALUES('1711','AG', 'C1');
INSERT INTO aircraftseat VALUES('1811','AH', 'C1');
INSERT INTO aircraftseat VALUES('1921','AI', 'C2');
INSERT INTO aircraftseat VALUES('2022','AJ', 'C2');
INSERT INTO aircraftseat VALUES('2131','AK', 'C3');
INSERT INTO aircraftseat VALUES('2231','AL', 'C3');
INSERT INTO aircraftseat VALUES('2331','AM', 'C3');
INSERT INTO aircraftseat VALUES('2431','AN', 'C3');
INSERT INTO aircraftseat VALUES('2531','AO', 'C3');

select * from aircraftseat;


