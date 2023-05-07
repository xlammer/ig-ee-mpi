Profile: EEMPIPatientNewborn
Parent: EEBasePatient
Id: ee-mpi-patient-newborn
Title: "EE MPI Patient Newborn"
Description: "Profiil vastsündinu andmete kirjeldamiseks"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* active = true (exactly)
* name contains temp 0..1 MS
* name 1..1
* name[temp] ^short = "Ajutine nimi"
* name[temp].use = #temp (exactly)
* name[temp].family 1..1 MS
* name[temp].given 0..1 MS
* name[temp].given ^short = "Vastsündinu eesnimi võib puududa"
* identifier ^short = "Vastsündinu identifikaator"
* telecom ..0
* birthDate 1.. 
* address ..0
* maritalStatus ..0
* multipleBirth[x] 1..1 MS 
* multipleBirth[x] only integer
* multipleBirth[x] ^short = "Sünnijärjekord"
* photo ..0
* generalPractitioner ..0
* managingOrganization ..0
* link ..0



Instance: PatientNewborn
InstanceOf: EEMPIPatientNewborn
Usage: #example
* id = "pat-newborn"
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "msvgh378544y"
* active = true 
* gender = #male
* name[temp]
  * use = #temp
  * family = "Maasikas"
* gender = #male
* birthDate = "1973-02-10"
* multipleBirthInteger = 1
/*
* address
  * use = #temp
  * country = "EE"
  * line = "Valukoja 10, Tallinn"
    * extension[adsid].valueString = "2280361"
*/

