
Insert into patient(Patient_Id,First_Name,Last_Name,Email,Phone_Number,DOB)Values
(1,"James","Butt","jbutt@gmail.com","5046218927","09-23-1993"),
(2,"Josephine","Darakjy","josephine_darakjy@darakjy.org","8102929388","08-06-1995"),
(3,"Art","Venere","art@venere.org","856-636-8749","01-06-1965"),
(4,"Lenna","Paprocki","lpaprocki@hotmail.com","907-385-4412","06-28-1985"),
(5,"Donette","Foller","donette.foller@cox.net","513-570-1893","05-12-2000"),
(6,"Simona","Morasca","simona@morasca.com","419-503-2484","11-06-1998"),
(7,"Mitsue","Tollner","mitsue_tollner@yahoo.com","773-573-6914","05-03-1987"),
(8,"Leota","Dilliard","leota@hotmail.com","408-752-3500","02-10-1996"),
(9,"Sage","Wieser","sage_wieser@cox.net","605-414-2147","10-29-1995"),
(10,"Kris","Marrier","kris@gmail.com","410-655-8723","12-31-1975")


Insert into vaccine(Vaccine_Id,Vaccine_Name)Values
(1,"Moderna"),
(2,"Covishield"),
(3,"Covaxin"),
(4,"Pfizer"),
(5,"Johnson&Johnson")

Insert into vaccination_center(Vaccination_Center_Id,Name,Address,Zipcode,Dose_Limit,Total_Limit)Values
(1,"CVS Pharmacy","231 Massachusetts Ave","02115",0,700),
(2,"Walgreens Pharmacy","841 Boylston Street ","02116",0,500),
(3,"Whitter Street Health Center","1290 Tremont Street, Roxbury","02120",0,450),
(4,"Fenway Health","1340 Boylston Street","02215",0,300),
(5,"Boston Medical Center Health","85 E Concord St, Boston","02118",0,480),
(6,"Gary Drug Co","59 Charles St, Boston","02114",0,840)

Insert into vaccine_availability(Id,FK_Vaccine_Id,Available_Stock_Limit)Values
(1,1,1000),
(2,2,1500),
(3,3,600),
(4,4,780),
(5,5,850)

Insert into patient_vaccine(Id,FK_Patient_Id,FK_Vaccine_Id,FK_Vaccination_Center_Id,Vaccine_Date,Dose_No)Values
(1,1,2,1,"08-20-2022",1),
(2,2,1,2,"05-05-2022",2),
(3,6,5,6,"01-15-2022",2),
(4,3,4,2,"03-08-2022",1),
(5,10,5,3,"07-19-2022",1),
(6,5,3,5,"09-06-2022",2),
(7,4,3,4,"05-10-2022",2),
(8,7,1,3,"12-30-2021",1),
(9,8,5,2,"02-24-2022",2),
(10,9,2,1,"10-20-2022",2),
(11,1,2,1,"10-20-2022",2),
(12,10,5,5,"11-19-2022",2),
(13,7,1,3,"03-30-2022",2),
(14,3,4,2,"06-08-2022",2)


Insert into vaccination_schedule(Id,FK_Patient_Id,FK_Vaccine_Id,FK_Vaccination_Center_Id,Expected_Vaccination_Date,Actual_Vaccination_Date,Dose_No)Values
(1,1,2,1,"08-20-2022","08-20-2022",1),
(2,2,1,2,"05-04-2022","05-05-2022",2),
(3,6,5,6,"01-01-2022","01-15-2022",2),
(4,3,4,2,"02-24-2022","03-08-2022",1),
(5,10,5,3,"06-27-2022","07-19-2022",1),
(6,5,3,5,"07-06-2022","09-06-2022",2),
(7,4,3,4,"05-01-2022","05-10-2022",2),
(8,7,1,3,"12-10-2021","12-30-2021",1),
(9,8,5,2,"02-14-2022","02-24-2022",2),
(10,9,2,1,"10-20-2022","10-20-2022",2),
(11,1,2,1,"10-07-2022","10-20-2022",2),
(12,10,5,5,"19-10-2022","11-19-2022",2),
(13,7,1,3,"03-25-2022","03-30-2022",2),
(14,3,4,2,"05-21-2022","06-08-2022",2)