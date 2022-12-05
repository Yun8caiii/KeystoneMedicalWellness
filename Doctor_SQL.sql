CREATE  DATABASE IF NOT EXISTS DOCTOR_OFFICE;


CREATE TABLE IF NOT EXISTS Doctor(
	Doctor_ID varchar(50) PRIMARY KEY NOT NULL,
	Fname varchar(50) NOT NULL,
    Lname varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Appointments(
	App_ID varchar(50) PRIMARY KEY NOT NULL,
    Doc_Name varchar(50) NOT NULL,
    Pat_Name varchar(50) NOT NULL,
    Patient_ID varchar(50) NOT NULL,
    App_Date date NOT NULL,
    FOREIGN KEY (Pat_Name) REFERENCES Patient(Lname),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doc_Name) REFERENCES DOCTOR(Lname) 
);

CREATE TABLE IF NOT EXISTS Patients(
	Patient_ID varchar(50) PRIMARY KEY NOT NULL,
    Fname varchar(50) NOT NULL,
    Lname varchar(50) NOT NULL,
    Phone_num varchar(50) NOT NULL,
    Doctor_ID varchar(50) NOT NULL,
    App_ID varchar(50) NOT NULL,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (App_ID) REFERENCES Appointments(App_ID)
    );
    
  CREATE TABLE IF NOT EXISTS Office(
  Office_ID varchar(50) PRIMARY KEY NOT NULL,
  Location varchar(50) NOT NULL 
  );
  
  CREATE TABLE IF NOT EXISTS Medicine(
  Med_ID varchar(50) PRIMARY KEY NOT NULL,
  Med_Name varchar(50) NOT NULL
  );
  
  CREATE TABLE IF NOT EXISTS Test(
  Test_ID varchar(50) PRIMARY KEY NOT NULL,
  Test_Name varchar(50) NOT NULL 
  );

INSERT INTO Doctor( Doctor_ID, Fname, Lname)
VALUES('D0164', 'Bob', 'Jones'),
	  ('D2386','Steve','Irwin');
      
INSERT INTO Appointments(App_ID,Doc_name,Pat_name,Patient_ID,App_Date)
VALUES('A4876','Irwin','Lam','P9875','2022-12-24'),
	  ('A1378','Jones','Kuewa','P6768','2022-12-08');      
INSERT INTO Patients( Patient_ID, Fname,Lname, Phone_num, Doctor_ID, App_ID)
VALUES('P9785', 'Stefan','Lam', '626-437-8590','D0164','A4876'),
	  ('P6768', 'Ashley','Kuewa','480-438-7014','D0164','A1378');

INSERT INTO Medicine( Med_ID,Med_name)
VALUES('Vicodin','M3048'),
	  ('Tylenol','M1245');
      
INSERT INTO Office(Office_ID, Location)
VALUES('O5789','Orange'),
	  ('O8756','Santa Ana');

INSERT INTO Test(Test_ID, Test_name)
VALUES('X-Ray','T8789'),
	  ('Blood Test','T9795');