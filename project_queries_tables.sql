create schema Hospital_Search;
use Hospital_Search;

create table Hospital (
Hospital_id int(10),
Hospital_name varchar(50),
Hospital_address varchar(200),
Hospital_contact_no varchar(10),
Hospital_type varchar(10),
Open_time time,
Close_time time,
primary key (Hospital_id) ); 

create table Doctor  (
Doctor_id int(10),
Doctor_name varchar(50),
Qualification varchar (40),
Experience int(10),
Contact_no varchar(10),
DOB date,
Rating int(1),
primary key (Doctor_id) ); 

create table Doctor_Specialization  (
Index_id int(10),
Doctor_id int(10),
Specialization varchar(50),
primary key (Index_id),
foreign key (Doctor_id) references Doctor(Doctor_id) 
);

create table Hospital_Doctors(
Index_id int(10),
Hospital_id int(10),
Doctor_id int(10),
Type char(1),
Opening_Time time,
Closing_Time time,
primary key (Index_id),
foreign key (Doctor_id) references Doctor(Doctor_id),
foreign key (Hospital_id) references Hospital(Hospital_id)
);

create table Hospital_Treatment(
Index_id int(10),
Hospital_id int(10),
Treatment varchar(50),
Expense_level int(1),
primary key (Index_id),
foreign key (Hospital_id) references Hospital(Hospital_id)
);

create table Doctor_Treatment(
Index_id int(10),
HT_Index_id int(10),
Doctor_id int(10),
Treatment varchar(50),
Expense_level int(1),
primary key (Index_id),
foreign key (Doctor_id) references Doctor(Doctor_id),
foreign key (HT_Index_id) references Hospital_Treatment(Index_id)
);

create table Hospital_Area(
Index_id int(10) primary key,
Area varchar(45),
Hospital_id int(10),
Location_Link varchar(80),
foreign key (Hospital_id) references Hospital(Hospital_id)
);

create table Appointment_Request(
Request_id int(10) primary key,
Hospital_id int(10),
Doctor_id int(10),
Name varchar(45),
time datetime,
status char(1),
foreign key (Doctor_id) references Doctor(Doctor_id),
foreign key (Hospital_id) references Hospital(Hospital_id)
);

#Data for hospital

INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('1', 'Zydus', ' Nr. Sola Bridge, S.G. Highway, Ahmedabad, Gujarat', '7874412345', 'P', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('2', 'Civil (OPD)', 'D Block, Haripura, Asarwa, Ahmedabad, Gujarat', '7922683721', 'G', '10:00:00', '18:00:00');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('3', 'Columbia Asia', 'Plot No. 221/222, Hebatpur Road, Off S G Highway, Thaltej, Ahmedabad, Gujarat ', '7939898969', 'P', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('4', 'Sola Civil', 'Near Gujarat High Court, S.G. Highway, Dist Ahmedabad, Sola, Gujarat ', '7927664359', 'G', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('5', 'Sterling ', 'Near Maharaja Agrasen Vidhyalaya, Near Gurukul,, Sterling Hospital Rd, Nilmani Society, Memnagar, Ahmedabad, Gujarat', '7940011111', 'P', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('6', 'CIMS', ' Opposite Panchamrut Bunglows, Near Shukan Mall, Off Science City Road, Sola, Ahmedabad, Gujarat', '9825066664', 'P', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('7', 'Shalby', 'Opp. Karnavati Club, S.G. Highway, Ahmedabad,', '7940203333', 'P', '09:30:00', '18:00:00');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('8', 'Apollo', 'Branch No 1a, Bhat Gidc Estate, Gandhi Nagar, Ahmedabad, Gujarat ', '7966701800', 'P', '10:00:00', '16:00:00');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('9', 'HCG cancer center', 'Sola-Science City Road, Off S.G. Highway, Sola, Ahmedabad, Gujarat', '7940411010', 'P', '00:00:00', '23:59:59');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('10', 'Bhagwati Homeopathy Clinic', 'opp.Dell care,Near-swastik cross roads,Navrangpura,Ahmedbad', '9475312982', 'P', '09:00:00', '16:30:00');
INSERT INTO `hospital_search`.`hospital` (`Hospital_id`, `Hospital_name`, `Hospital_address`, `Hospital_contact_no`, `Hospital_type`, `Open_time`, `Close_time`) VALUES ('11', 'CIMS cancer hospital', 'Near Shukan mall,, Science City Road, Sola, Ahmedabad', '7930101257', 'P', '00:00:00', '23:59:59');


#data for hospital_area
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('1', 'Sola', '1', 'https://www.google.co.in/maps/place/Zydus+Hospital,+Zydus+Hospital+Rd,+Sola');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('2', 'Asarwa', '2', 'https://www.google.co.in/maps/place/OPD+-+Civil+Hospital');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('3', 'Thaltej', '3', 'https://www.google.co.in/maps/place/Columbia+Asia+Hospital+-+Ahmedabad');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('4', 'Sola', '4', 'https://www.google.co.in/maps/place/Sola+Civil+Hospital');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('5', 'Memnagar', '5', 'https://www.google.co.in/maps/place/Sterling+Hospital');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('6', 'Sola', '6', 'https://www.google.co.in/maps/place/CIMS+Hospital');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('7', 'Karnavati', '7', 'https://www.google.co.in/maps/place/Shalby+Hospital');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('8', 'Bhat', '8', 'https://www.google.co.in/maps/place/Apollo+Hospitals+International+Limited');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('9', 'Sola', '9', 'https://www.google.co.in/maps/place/HCG+Cancer+Centre');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('10', 'Navrangpura', '10', 'https://www.google.co.in/maps/place/Bhagwati+Homeopathy+Navrangpura');
INSERT INTO `hospital_search`.`hospital_area` (`Index_id`, `Area`, `Hospital_id`, `Location_Link`) VALUES ('11', 'Sola', '11', 'https://www.google.co.in/maps/place/CIMS+cancer+center+Sola');


#data for hospital_treatment
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('1', '1', 'Neurosurgery', '3');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('2', '2', 'OPD', '1');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('3', '3', 'Cardiology', '3');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('4', '4', 'Surgery', '1');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('5', '5', 'Dentistry', '2');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('6', '6', 'ENT', '2');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('7', '7', 'pediatrics', '2');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('8', '8', 'Psychaitry', '3');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('9', '9', 'cancer', '3');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('10', '10', 'Homeopathy', '1');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('12', '11', 'cancer', '4');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('13', '7', 'knee replacement', '4');
INSERT INTO `hospital_search`.`hospital_treatment` (`Index_id`, `Hospital_id`, `Treatment`, `Expense_level`) VALUES ('14', '7', 'cataract', '3');

#data for doctors
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('101', 'Ramesh Shah', 'MBBS,MD', '15', '9758312051', '1970-08-07', '3');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('102', 'Shiv Patel', 'MBBS,MD,Gold-medalist', '17', '9312436108', '1968-10-27', '4');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('103', 'Khyati Modi', 'BDS', '8', '9481420951', '1979-01-12', '3');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('104', 'Shreyas Shah', 'MBBS', '20', '9561231423', '1967-04-16', '4');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('105', 'Atit Sheth', 'BPT', '8', '9812034910', '1983-05-09', '3');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('106', 'Brijesh Upadhyay', 'MBBS', '5', '8511023689', '1987-09-17', '2');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('107', 'Shubhangi Shah', 'BHMS', '7', '9985725368', '1985-08-29', '2');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('108', 'Mahesh', 'Special course psychatrist', '6', '8845036970', '1981-03-15', '3');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('109', 'Yash', 'MBBS,MD,super-special', '13', '9705948167', '1974-12-09', '5');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('110', 'Nilesh Chokshi', 'MBBS', '6', '9470360159', '1985-10-08', '3');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('111', 'Ketul Joshi', 'MBBS', '7', '9860320875', '1984-11-05', '4');
INSERT INTO `hospital_search`.`doctor` (`Doctor_id`, `Doctor_name`, `Qualification`, `Experience`, `Contact_no`, `DOB`, `Rating`) VALUES ('112', 'Mahipad Modi', 'MBBS,MD', '8', '8750369702', '1981-02-09', '4');


#data for doctor_specialization
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('1', '101', 'cancer');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('2', '102', 'Neurosurgeon');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('3', '103', 'dentist');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('4', '104', 'pediatrician');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('5', '105', 'physiotherapist');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('6', '106', 'ENT');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('7', '107', 'Homeopathist');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('8', '108', 'Psychatirst');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('9', '109', 'Cardiologist');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('10', '110', 'orthopedic');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('11', '111', 'surgeon');
INSERT INTO `hospital_search`.`doctor_specialization` (`Index_id`, `Doctor_id`, `Specialization`) VALUES ('12', '112', 'cancer');

#data for doctor_treatment
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('1', '9', '101', 'cancer', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('2', '1', '102', 'neurosurgery', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('3', '5', '103', 'dentistry', '2');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('4', '7', '104', 'pediactics', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('5', '11', '105', 'physiotherapy', '2');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('6', '6', '106', 'ENT', '2');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('7', '10', '107', 'Homeopathy', '1');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('8', '8', '108', 'psychatrist', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('9', '3', '109', 'cardiology', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('10', '2', '110', 'orthopedic', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('11', '4', '111', 'surgery', '3');
INSERT INTO `hospital_search`.`doctor_treatment` (`Index_id`, `HT_Index_id`, `Doctor_id`, `Treatment`, `Expense_level`) VALUES ('12', '12', '112', 'cancer', '4');

#data for hospital_doctors
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('1', '9', '101', 'P', '09:30:00', '17:00:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('2', '1', '102', 'P', '09:00:00', '16:30:30');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('3', '5', '103', 'P', '10:00:00', '17:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('4', '7', '104', 'P', '09:30:00', '16:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('5', '6', '105', 'T', '10:30:00', '14:00:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('6', '6', '106', 'P', '09:00:00', '15:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('7', '10', '107', 'P', '09:30:00', '17:00:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('8', '8', '108', 'P', '10:00:00', '15:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('9', '3', '109', 'P', '09:30:00', '16:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('10', '2', '110', 'P', '10:00:00', '16:30:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('11', '4', '111', 'T', '11:00:00', '16:00:00');
INSERT INTO `hospital_search`.`hospital_doctors` (`Index_id`, `Hospital_id`, `Doctor_id`, `Type`, `Opening_Time`, `Closing_Time`) VALUES ('12', '11', '112', 'P', '09:00:00', '16:30:00');

#data for appointment request
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('1', '9', '101', 'Aarsh', '2017-05-01 11:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('2', '9', '101', 'Bhupesh', '2017-05-01 16:30:00', 'W');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('3', '1', '102', 'Chaitanya', '2017-05-01 10:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('4', '1', '102', 'Dimple', '2017-05-01 14:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('5', '5', '103', 'Forum', '2017-05-01 11:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('6', '5', '103', 'Harsh', '2017-05-01 15:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('7', '7', '104', 'Manish', '2017-05-01 11:15:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('8', '7', '104', 'Nimesh', '2017-05-01 16:15:00', 'W');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('9', '6', '105', 'Bhoomi', '2017-05-01 12:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('10', '6', '105', 'Roshan', '2017-05-01 14:30:00', 'W');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('11', '6', '106', 'Devendra', '2017-05-01 10:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('12', '6', '106', 'Varsh', '2017-05-01 14:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('13', '10', '107', 'Rudra', '2017-05-01 11:45:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('14', '10', '107', 'Kalpesh', '2017-05-01 13:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('15', '8', '108', 'Mitul', '2017-05-01 11:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('16', '8', '108', 'Riddhi', '2017-05-01 12:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('17', '3', '109', 'Hemal', '2017-05-01 11:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('18', '3', '109', 'Naisargi', '2017-05-01 14:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('19', '2', '110', 'Akshay', '2017-05-01 12:00:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('20', '2', '110', 'Piyush', '2017-05-01 16:15:00', 'W');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('21', '4', '111', 'Ankit', '2017-05-01 11:30:00', 'C');
INSERT INTO `hospital_search`.`appointment_request` (`Request_id`, `Hospital_id`, `Doctor_id`, `Name`, `time`, `status`) VALUES ('22', '4', '111', 'Suresh', '2017-05-01 14:30:00', 'C');

# 1. Search hospital of an area
Select hospital.Hospital_name, hospital.Hospital_address, hospital.Hospital_contact_no,
 hospital.Open_time, hospital.Close_time from hospital where hospital.Hospital_id
 in (select hospital_area.Hospital_id from hospital_area where hospital_area.Area = "Sola");
 
 # 2. Search doctors of an area
Select doctor.Doctor_name, doctor.Qualification, doctor.Contact_no,
 doctor.Rating from doctor where doctor.Doctor_id 
 in (select hospital_doctors.Doctor_id from hospital_doctors where hospital_doctors.Hospital_id
 in (select hospital_area.Hospital_id from hospital_area where hospital_area.Area = "Sola"));
 
 # 3. Doctor search by their Specialization
Select doctor.Doctor_name, doctor.Qualification, doctor.Contact_no, doctor.Rating 
from doctor where doctor.Doctor_id in (select doctor_specialization.Doctor_id from doctor_specialization 
where doctor_specialization.Specialization = "Neurosurgeon");

# 4. All Govt Hospitals
Select * from hospital where hospital.Hospital_type = 'G';

# 5. All Private Hospitals 
Select * from hospital where hospital.Hospital_type = 'P';

# 6. All Doctors with experience over 5yrs
Select * from doctor where doctor.Experience >= 5;

# 7. All Doctors with rating over average
Select * from doctor where doctor.Rating >= 4;

# 8. All Hospitals hospitals open for 24hrs
Select * from hospital where hospital.Open_time = '00:00:00' and hospital.Close_time = '23:59:59';

# 9. Hospital search by the treatments offered
Select hospital.Hospital_name, hospital.Hospital_type, hospital.Hospital_address, 
hospital.Hospital_contact_no, hospital.Open_time, hospital.Close_time from hospital 
where hospital.Hospital_id in (select hospital_treatment.Hospital_id from hospital_treatment 
where hospital_treatment.Treatment = "cancer");


# 10. Doctors search by the treatments offered
Select doctor.Doctor_name, doctor.Qualification, doctor.Contact_no from doctor
 where doctor.Doctor_id in (Select doctor_treatment.Doctor_id from doctor_treatment 
 where doctor_treatment.HT_Index_id in (select hospital_treatment.Index_id from hospital_treatment
 where hospital_treatment.Treatment = "cancer"));

# 11. Sort Doctors by Experience
select * from doctor order by experience asc;

# 12. Sort Doctors by Rating
select * from doctor order by rating asc;

# 13. Hospitals open at Current Time
select hospital.Hospital_name, hospital.Hospital_address, hospital.Hospital_contact_no from hospital
 where hospital.close_time >= curtime() and hospital.open_time <= curtime();

# 14. Hospitals open in Current Area
select hospital.Hospital_name, hospital.Hospital_address, hospital_area.location_link, hospital.Hospital_contact_no
 from hospital,hospital_area where hospital_area.area = 'Sola' and hospital.Hospital_id = hospital_area.Hospital_id and
 hospital.close_time > curtime() and hospital.open_time < curtime();

# 15. Doctors available at Current Time
select doctor.doctor_name, doctor.qualification, doctor.contact_no, hospital.hospital_name,
 hospital_doctors.type, hospital.hospital_contact_no from doctor,hospital_doctors, hospital 
 where hospital_doctors.opening_time < curtime() and hospital_doctors.closing_time > curtime() 
 and hospital_doctors.Doctor_id = doctor.Doctor_id and hospital_doctors.Hospital_id = hospital.Hospital_id;


# 16. Doctors available in Current Area
select doctor.doctor_name, doctor.qualification, doctor.contact_no, hospital.hospital_name,
 hospital.hospital_contact_no from doctor , hospital_doctors ,hospital , hospital_area 
 where hospital_doctors.opening_time < curtime() and
 hospital_doctors.closing_time > curtime() and hospital_area.area = 'Sola' and
 hospital.close_time > curtime() and hospital.open_time < curtime() and hospital_doctors.Doctor_id= doctor.Doctor_id
 and hospital_doctors.Hospital_id= hospital.Hospital_id and hospital.Hospital_id= hospital_area.Hospital_id;

# 18. Sorting Hospitals based on expense level of particular treatment in ascending order
select Hospital_name,Hospital_address,Hospital_contact_no,Open_time,Close_time,Expense_level 
from hospital as h inner join hospital_treatment as ht on h.hospital_id = ht.hospital_id 
where ht.treatment = 'cancer' order by ht.expense_level;

 # 19. Sorting Hospitals based on expense level of particular treatment in descending order
select Hospital_name,Hospital_address,Hospital_contact_no,Open_time,Close_time,Expense_level
 from hospital as h inner join hospital_treatment as ht on h.hospital_id = ht.hospital_id 
where ht.treatment = 'cancer' order by ht.expense_level desc;

 
 # 19.a) Sorting Doctors based on expense level of particular treatment in ascending order
select * from doctor as d inner join doctor_treatment as dt on d.doctor_id = dt.doctor_id
 where dt.treatment = 'cancer' order by dt.expense_level;

 # 19b). Sorting Doctors based on expense level of particular treatment in descending order
select * from doctor as d inner join doctor_treatment as dt on d.doctor_id = dt.doctor_id 
where dt.treatment = 'cancer' order by dt.expense_level desc;

# 20. List of all the treatments offered in a particular hospital
select Treatment from hospital_treatment as ht inner join hospital as h on h.hospital_id = ht.hospital_id
 where h.hospital_name = 'Shalby';
 
 # 21. Location Link of a Particular Hospital
select location_link from hospital_area as ha inner join hospital as h on h.hospital_id = ha.hospital_id 
where h.hospital_name = 'Apollo';

# 22. All Govt Hospitals open at current time
select * from hospital as h where h.hospital_type = 'G' 
and (current_time() >= h.open_time and current_time() < h.close_time);

# 23. All Govt Hospitals open in current area
select * from hospital as h inner join hospital_area as ha on h.hospital_id = ha.hospital_id 
where (h.hospital_type = 'G' and ha.area = 'Sola') and (current_time() > h.open_time and current_time() < h.close_time);

# 24. All Private Hospitals open at current time
select * from hospital as h where h.hospital_type = 'p' and (current_time() >= h.open_time and current_time() < h.close_time);

# 25. All Private Hospitals open in current area
select * from hospital as h inner join hospital_area as ha on h.hospital_id = ha.hospital_id 
where (h.hospital_type = 'p' and ha.area = 'Sola')
 and (current_time() > h.open_time and current_time() < h.close_time);


# 29. Count number of hospitals offering a particular treatment
Select count(hospital_treatment.Index_id) from hospital_treatment where hospital_treatment.Treatment = 'cancer';



 

 
 
 
 






























