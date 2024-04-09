
 ---- How many patients have excatly 1 dose
Select p.First_Name, p.Last_Name,p.DOB, pv.Dose_No  
from patient p
INNER join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id
where pv.Dose_No = 1

-----how many patients had same expected date and actual date for vaccination with centre name, Address and zipcode
select p.First_Name, p.Last_Name, vs.Expected_Vaccination_Date, vs.Actual_Vaccination_Date, vc.name, vc.Address, vc.Zipcode
from patient p
INNER join vaccination_schedule vs on p.Patient_Id = vs.FK_Patient_Id
INNER join vaccination_center vc on vc.Vaccination_Center_Id = vs.FK_Vaccination_Center_Id
INNER join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id

----How many have 1st and 2nd doses
select pv.Dose_No ,count(*) 'Total count of Vaccines'
from  patient p
inner join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id 
group by pv.Dose_No
order by  pv.Dose_No

---What is the stock limit of vaccines
select v.Vaccine_Name,va.Available_Stock_Limit
from vaccine v
inner join vaccine_availability va on v.Vaccine_Id = va.FK_Vaccine_Id

--What is minimum and maximum Total_Limit in vaccination_center

SELECT *,MIN(Total_Limit)
FROM Vaccination_Center

SELECT *,Max(Total_Limit)
FROM Vaccination_Center

select DISTINCT p.First_Name, p.Last_Name, vs.Expected_Vaccination_Date, vs.Actual_Vaccination_Date, vc.name, vc.Address, vc.Zipcode
from patient p
INNER join vaccination_schedule vs on p.Patient_Id = vs.FK_Patient_Id
INNER join vaccination_center vc on vc.Vaccination_Center_Id = vs.FK_Vaccination_Center_Id
INNER join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id
where vs.Expected_Vaccination_Date = vs.Actual_Vaccination_Date

select p.First_Name, p.Last_Name, v.Vaccine_Name, vc.name as 'Vaccination center name', pv.Vaccine_Date, pv.Dose_No
from patient p
INNER join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id
inner join vaccine v on v.Vaccine_Id = pv.FK_Vaccine_Id
inner join vaccination_center vc on vc.Vaccination_Center_Id = pv.FK_Vaccination_Center_Id

select p.First_Name, p.Last_Name, v.Vaccine_Name, vc.name as 'Vaccination center name', pv.Vaccine_Date, pv.Dose_No
from patient p
INNER join patient_vaccine pv on p.Patient_Id = pv.FK_Patient_Id
inner join vaccine v on v.Vaccine_Id = pv.FK_Vaccine_Id
inner join vaccination_center vc on vc.Vaccination_Center_Id = pv.FK_Vaccination_Center_Id
