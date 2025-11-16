
# Relational Database Architecture

Database Design Concept

## 🏥 Hospital/clinic management

### Identification of the function of the service.

In this case, it’s Hospital/clinic Management. Patients should be able to book an appointment, cancel, view available dates, search for doctors’ information, or find services available by hospital/clinic.

|   |   
|---|
| Doctors        | 
| Specialisation | 
| Patients | 
| Appointments | 
| Canceled appointments |

### Define the attributes                                             ### Building relationships

**Doctor**

|   |   |   |
|---|---|---|
|Doctor_id|	SERIAL|	PRIMARY KEY|
|Doctor_name|VARCHAR(50)| NOT NULL|
|Doctor_specialisation |	SERIAL|	Foreign key|
|Password_hash|VARCHAR(255)|	NOT NULL|
|email|	VARCHAR(100)|	UNIQUE, NOT NULL|
|created_at| |	|	
| | | |


**Specialisation**

|   |   |   |
|---|---|---|
Specialisation_id	SERIAL	PRIMARY KEY
Specialisation_name 	VARCHAR(50)	 NOT NULL

**Patient**
Patient_id	SERIAL	PRIMARY KEY
Patient_name	VARCHAR(50)	 NOT NULL
Password_hash	VARCHAR(255)	NOT NULL
email	VARCHAR(100)	UNIQUE, NOT NULL
created_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP

**Appointment**

Appointment_id 	SERIAL	 PRIMARY KEY
Patient_id	INTEGER	FOREIGN KEY
Doctor_id	INTEGER	FOREIGN KEY
Created_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
Appointment_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
Appointment_canceled_date	BIGINT	
Comments	VARCHAR(450)	

Creating a diagram using [chart db](https://app.chartdb.io). 

![The appointment system diagram](/appointment_diagram.png "San Juan Mountains")
