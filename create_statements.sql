CREATE TABLE "patient" (
	"Patient_Id"	INTEGER NOT NULL,
	"First_Name"	Varchar(20),
	"Last_Name"	Varchar(20),
	"Email"	Varchar(30),
	"Phone_Number"	Varchar(20),
	"DOB"	DATE,
	PRIMARY KEY("Patient_id" AUTOINCREMENT)
);

CREATE TABLE "vaccine" (
	"Vaccine_Id"	INTEGER NOT NULL,
	"Vaccine_Name"	Varchar(20),
	PRIMARY KEY("Vaccine_Id" AUTOINCREMENT)
);

CREATE TABLE "vaccination_center" (
	"Vaccination_Center_Id"	INTEGER NOT NULL,
	"Name"	BLOB,
	"Address"	Varchar(100),
	"Zipcode"	Varchar(10),
	"Dose_Limit"	INTEGER,
	"Total_Limit"	INTEGER(3),
	PRIMARY KEY("Vaccination_Center_Id" AUTOINCREMENT)
);

CREATE TABLE "patient_vaccine" (
	"Id"	INTEGER NOT NULL,
	"FK_Patient_Id"	INTEGER NOT NULL,
	"FK_Vaccine_Id"	INTEGER NOT NULL,
	"FK_Vaccination_Center_Id"	INTEGER NOT NULL,
	"Vaccine_Date"	DATETIME,
	"Dose_No"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("FK_Patient_Id") REFERENCES "patient"("Patient_Id"),
	FOREIGN KEY("FK_Vaccine_Id") REFERENCES "vaccine"("Vaccine_Id"),
	FOREIGN KEY("FK_Vaccination_Center_Id") REFERENCES "vaccination_center"("Vaccination_Center_Id")
);

CREATE TABLE "vaccination_schedule" (
	"Id"	INTEGER NOT NULL,
	"FK_Patient_Id"	INTEGER NOT NULL,
	"FK_Vaccine_Id"	INTEGER NOT NULL,
	"FK_Vaccination_Center_Id"	INTEGER NOT NULL,
	"Expected_Vaccination_Date"	DATETIME,
	"Actual_Vaccination_Date"	DATETIME,
	"Dose_No"	INTEGER,
	PRIMARY KEY("Id" AUTOINCREMENT),
	FOREIGN KEY("FK_Vaccination_Center_Id") REFERENCES "vaccination_center"("Vaccination_Center_Id"),
	FOREIGN KEY("FK_Patient_Id") REFERENCES "patient"("Patient_Id"),
	FOREIGN KEY("FK_Vaccine_Id") REFERENCES "vaccine"("Vaccine_Id")
);

CREATE TABLE "vaccine_availability" (
	"Id"	INTEGER NOT NULL,
	"FK_Vaccine_Id"	INTEGER NOT NULL,
	"Available_Stock_Limit"	INTEGER,
	PRIMARY KEY("Id" AUTOINCREMENT),
	FOREIGN KEY("FK_Vaccine_Id") REFERENCES "vaccine"("Vaccine_Id")
);

CREATE TABLE "age_group" (
	"Age_Group_Id"	INTEGER NOT NULL,
	"Age_Group_Type"	Varchar(20),
	PRIMARY KEY("Age_Group_Id" AUTOINCREMENT)
);

CREATE TABLE "age_group_patient" (
	"Id"	INTEGER NOT NULL,
	"FK_Age_Group_Id"	INTEGER NOT NULL,
	"FK_Patient_Id"	INTEGER NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT),
	FOREIGN KEY("FK_Patient_Id") REFERENCES "patient"("Patient_Id"),
	FOREIGN KEY("FK_Age_Group_Id") REFERENCES "age_group"("Age_Group_Id")
);



