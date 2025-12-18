[12:46 AM, 11/21/2025] Shailesh Kumar: https://www.w3schools.com/nodejs/nodejs_express.asp
[2:28 AM, 11/21/2025] Shailesh Kumar:

create database mydb1;
drop database mydb1;
use mydb1;
create table kjk(id int ,notes mediumtext);
insert into kjk(id,notes) value(1,"hjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
select *from kjk;
create table test(name varchar(150),blank_1 varchar(150),age int,blank_2 varchar(150),city_one varchar(150));
drop table test;
select *from test;
select Remarks_History from test where Remarks_History="Had conversation with the client and he said I asked your people regarding Mediclaim. Informed that we have cashless facility with Aditya Birla but for other companies, we can provide the documents for reimbursement of claim Informed that Holistic Treatment is not covered under insurance and asked the ailment. He said I am having lunch and will call back in 15 minutes.

Multiple Health Issues such as Stomach issues, Ankylosing Spondylitis, Asthma. Suggested 3 weeks Panchakarma Treatment and he requested to share the Price and details on email or WhatsApp. Sent on email.";
select count(*) from test;

select max(length(ID)) from test;
select max(length(Notes)) from test;
select Mobile from test where length(Mobile) > 11;
select Notes from test where length(Notes) > 1700;
select  *from test where ID = "Client-Priya919810179113_1";

create table df(name varchar(50),id varchar(50));
insert into df(name,d)value("sha",7);
select *from df;
show tables;
show databases;


CREATE TABLE test (
  Time_Stamp VARCHAR(100),
  Date_Time VARCHAR(100),
  ID VARCHAR(250),
  Name_of_Client VARCHAR(100),
  Mobile VARCHAR(100),
  Email_Id VARCHAR(100),
  Subjects TEXT,
  Notes mediumtext,
  IVR_Url VARCHAR(200),
  WebSite_Name VARCHAR(100),
  Data_Source VARCHAR(100),
  Assign_To_MR VARCHAR(100),
  Remarks_History MEDIUMTEXT,
  Planned VARCHAR(100),
  Actual VARCHAR(100),
  Time_Delay VARCHAR(100),
  Status VARCHAR(100),
  Sample_New_Order_Form_Link VARCHAR(100),
  Followup VARCHAR(100),
  Remarks MEDIUMTEXT,
  Followup_Date VARCHAR(100),
  Transfer_To VARCHAR(100),
  Default_Contact_No VARCHAR(100),
  Default_Email_ID VARCHAR(100),
  Email_Sent VARCHAR(100),
  WhatsApp_Sent VARCHAR(100),
  SMS_Sent VARCHAR(100),
  Count_ID VARCHAR(100),
  Email_Sent_Status VARCHAR(100),
  WhatsApp_Sent_Status VARCHAR(100),
  SMS_Sent_Status VARCHAR(100),
  Order_Sales_Saved_Status VARCHAR(100),
  From_Sheet VARCHAR(100),
  blank_1 VARCHAR(100),
  SQV_Lead_Intent VARCHAR(100),
  Lead_Priority VARCHAR(100),
  Duplicate VARCHAR(100),
  Client_Category VARCHAR(100),
  blank_2 VARCHAR(100),
  blank_3 VARCHAR(100),
  blank_4 VARCHAR(100),
  blank_5 VARCHAR(100),
  blank_6 VARCHAR(100),
  Transfer_to_SQL_Table VARCHAR(100),
  Google_Drive_Call_Recording_URL VARCHAR(100),
  Row_Duplicate_Mark VARCHAR(100),
  Call_Time VARCHAR(100),
  File_Size VARCHAR(100),
  Exceptions_if_call_recording_not_found VARCHAR(100),
  NBD_CRR_Call VARCHAR(100)
);


/*  test_invalid table section */
CREATE TABLE test_invalid (
  Time_Stamp VARCHAR(100),
  Date_Time VARCHAR(100),
  ID VARCHAR(250),
  Name_of_Client VARCHAR(100),
  Mobile VARCHAR(100),
  Email_Id VARCHAR(100),
  Subjects TEXT,
  Notes mediumtext,
  IVR_Url VARCHAR(200),
  WebSite_Name VARCHAR(100),
  Data_Source VARCHAR(100),
  Assign_To_MR VARCHAR(100),
  Remarks_History MEDIUMTEXT,
  Planned VARCHAR(100),
  Actual VARCHAR(100),
  Time_Delay VARCHAR(100),
  Status VARCHAR(100),
  Sample_New_Order_Form_Link VARCHAR(100),
  Followup VARCHAR(100),
  Remarks MEDIUMTEXT,
  Followup_Date VARCHAR(100),
  Transfer_To VARCHAR(100),
  Default_Contact_No VARCHAR(100),
  Default_Email_ID VARCHAR(100),
  Email_Sent VARCHAR(100),
  WhatsApp_Sent VARCHAR(100),
  SMS_Sent VARCHAR(100),
  Count_ID VARCHAR(100),
  Email_Sent_Status VARCHAR(100),
  WhatsApp_Sent_Status VARCHAR(100),
  SMS_Sent_Status VARCHAR(100),
  Order_Sales_Saved_Status VARCHAR(100),
  From_Sheet VARCHAR(100),
  blank_1 VARCHAR(100),
  SQV_Lead_Intent VARCHAR(100),
  Lead_Priority VARCHAR(100),
  Duplicate VARCHAR(100),
  Client_Category VARCHAR(100),
  blank_2 VARCHAR(100),
  blank_3 VARCHAR(100),
  blank_4 VARCHAR(100),
  blank_5 VARCHAR(100),
  blank_6 VARCHAR(100),
  Transfer_to_SQL_Table VARCHAR(100),
  Google_Drive_Call_Recording_URL VARCHAR(100),
  Row_Duplicate_Mark VARCHAR(100),
  Call_Time VARCHAR(100),
  File_Size VARCHAR(100),
  Exceptions_if_call_recording_not_found VARCHAR(100),
  NBD_CRR_Call VARCHAR(100)
);
/*  test invalid table section */




/*  trigger section */
DELIMITER $$

CREATE TRIGGER test_before_insert
BEFORE INSERT ON test
FOR EACH ROW
BEGIN
    DECLARE invalid BOOL DEFAULT FALSE;

    -- ====== NULL-SAFE LENGTH CHECKS ======
    IF NEW.Time_Stamp IS NULL OR CHAR_LENGTH(NEW.Time_Stamp) NOT BETWEEN 1 AND 100 THEN SET invalid = TRUE; END IF;
    IF NEW.Date_Time IS NULL OR CHAR_LENGTH(NEW.Date_Time) NOT BETWEEN 1 AND 100 THEN SET invalid = TRUE; END IF;
    IF NEW.ID IS NULL OR CHAR_LENGTH(NEW.ID) NOT BETWEEN 1 AND 30 THEN SET invalid = TRUE; END IF;
    IF NEW.Name_of_Client IS NULL OR CHAR_LENGTH(NEW.Name_of_Client) NOT BETWEEN 1 AND 35 THEN SET invalid = TRUE; END IF;
    IF NEW.Mobile IS NULL OR CHAR_LENGTH(NEW.Mobile) NOT BETWEEN 1 AND 25 THEN SET invalid = TRUE; END IF;
    IF NEW.Email_Id IS NULL OR CHAR_LENGTH(NEW.Email_Id) NOT BETWEEN 1 AND 50 THEN SET invalid = TRUE; END IF;
    IF NEW.Subjects IS NULL OR CHAR_LENGTH(NEW.Subjects) NOT BETWEEN 1 AND 255 THEN SET invalid = TRUE; END IF;
    IF NEW.Notes IS NULL OR CHAR_LENGTH(NEW.Notes) NOT BETWEEN 1 AND 1025 THEN SET invalid = TRUE; END IF;
    IF NEW.IVR_Url IS NULL OR CHAR_LENGTH(NEW.IVR_Url) NOT BETWEEN 1 AND 255 THEN SET invalid = TRUE; END IF;
    IF NEW.WebSite_Name IS NULL OR CHAR_LENGTH(NEW.WebSite_Name) NOT BETWEEN 1 AND 100 THEN SET invalid = TRUE; END IF;

    IF NEW.Data_Source IS NULL OR CHAR_LENGTH(NEW.Data_Source) NOT BETWEEN 1 AND 100 THEN SET invalid = TRUE; END IF;
    IF NEW.Assign_To_MR IS NULL OR CHAR_LENGTH(NEW.Assign_To_MR) NOT BETWEEN 1 AND 60 THEN SET invalid = TRUE; END IF;
    IF NEW.Remarks_History IS NULL OR CHAR_LENGTH(NEW.Remarks_History) NOT BETWEEN 1 AND 1025 THEN SET invalid = TRUE; END IF;
    IF NEW.Planned IS NULL OR CHAR_LENGTH(NEW.Planned) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Actual IS NULL OR CHAR_LENGTH(NEW.Actual) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Time_Delay IS NULL OR CHAR_LENGTH(NEW.Time_Delay) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Status IS NULL OR CHAR_LENGTH(NEW.Status) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Sample_New_Order_Form_Link IS NULL OR CHAR_LENGTH(NEW.Sample_New_Order_Form_Link) NOT BETWEEN 1 AND 225 THEN SET invalid = TRUE; END IF;
    IF NEW.Followup IS NULL OR CHAR_LENGTH(NEW.Followup) NOT BETWEEN 1 AND 225 THEN SET invalid = TRUE; END IF;
    IF NEW.Remarks IS NULL OR CHAR_LENGTH(NEW.Remarks) NOT BETWEEN 1 AND 211 THEN SET invalid = TRUE; END IF;

    IF NEW.Followup_Date IS NULL OR CHAR_LENGTH(NEW.Followup_Date) NOT BETWEEN 1 AND 10 THEN SET invalid = TRUE; END IF;
    IF NEW.Transfer_To IS NULL OR CHAR_LENGTH(NEW.Transfer_To) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Default_Contact_No IS NULL OR CHAR_LENGTH(NEW.Default_Contact_No) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Default_Email_ID IS NULL OR CHAR_LENGTH(NEW.Default_Email_ID) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Email_Sent IS NULL OR CHAR_LENGTH(NEW.Email_Sent) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.WhatsApp_Sent IS NULL OR CHAR_LENGTH(NEW.WhatsApp_Sent) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.SMS_Sent IS NULL OR CHAR_LENGTH(NEW.SMS_Sent) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Count_ID IS NULL OR CHAR_LENGTH(NEW.Count_ID) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Email_Sent_Status IS NULL OR CHAR_LENGTH(NEW.Email_Sent_Status) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.WhatsApp_Sent_Status IS NULL OR CHAR_LENGTH(NEW.WhatsApp_Sent_Status) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;

    IF NEW.SMS_Sent_Status IS NULL OR CHAR_LENGTH(NEW.SMS_Sent_Status) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Order_Sales_Saved_Status IS NULL OR CHAR_LENGTH(NEW.Order_Sales_Saved_Status) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.From_Sheet IS NULL OR CHAR_LENGTH(NEW.From_Sheet) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.blank_1 IS NULL OR CHAR_LENGTH(NEW.blank_1) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.SQV_Lead_Intent IS NULL OR CHAR_LENGTH(NEW.SQV_Lead_Intent) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Lead_Priority IS NULL OR CHAR_LENGTH(NEW.Lead_Priority) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Duplicate IS NULL OR CHAR_LENGTH(NEW.Duplicate) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Client_Category IS NULL OR CHAR_LENGTH(NEW.Client_Category) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.blank_2 IS NULL OR CHAR_LENGTH(NEW.blank_2) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.blank_3 IS NULL OR CHAR_LENGTH(NEW.blank_3) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;

    IF NEW.blank_4 IS NULL OR CHAR_LENGTH(NEW.blank_4) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.blank_5 IS NULL OR CHAR_LENGTH(NEW.blank_5) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.blank_6 IS NULL OR CHAR_LENGTH(NEW.blank_6) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Transfer_to_SQL_Table IS NULL OR CHAR_LENGTH(NEW.Transfer_to_SQL_Table) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Google_Drive_Call_Recording_URL IS NULL OR CHAR_LENGTH(NEW.Google_Drive_Call_Recording_URL) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Row_Duplicate_Mark IS NULL OR CHAR_LENGTH(NEW.Row_Duplicate_Mark) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Call_Time IS NULL OR CHAR_LENGTH(NEW.Call_Time) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.File_Size IS NULL OR CHAR_LENGTH(NEW.File_Size) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.Exceptions_if_call_recording_not_found IS NULL OR CHAR_LENGTH(NEW.Exceptions_if_call_recording_not_found) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;
    IF NEW.NBD_CRR_Call IS NULL OR CHAR_LENGTH(NEW.NBD_CRR_Call) NOT BETWEEN 1 AND 55 THEN SET invalid = TRUE; END IF;

    -- ====== IF INVALID, MOVE TO test_invalid AND BLOCK INSERT ======
    IF invalid THEN
        INSERT INTO test_invalid VALUES (
            NEW.Time_Stamp, NEW.Date_Time, NEW.ID, NEW.Name_of_Client, NEW.Mobile,
            NEW.Email_Id, NEW.Subjects, NEW.Notes, NEW.IVR_Url, NEW.WebSite_Name,
            NEW.Data_Source, NEW.Assign_To_MR, NEW.Remarks_History, NEW.Planned, NEW.Actual,
            NEW.Time_Delay, NEW.Status, NEW.Sample_New_Order_Form_Link, NEW.Followup, NEW.Remarks,
            NEW.Followup_Date, NEW.Transfer_To, NEW.Default_Contact_No, NEW.Default_Email_ID,
            NEW.Email_Sent, NEW.WhatsApp_Sent, NEW.SMS_Sent, NEW.Count_ID, NEW.Email_Sent_Status,
            NEW.WhatsApp_Sent_Status, NEW.SMS_Sent_Status, NEW.Order_Sales_Saved_Status, NEW.From_Sheet,
            NEW.blank_1, NEW.SQV_Lead_Intent, NEW.Lead_Priority, NEW.Duplicate, NEW.Client_Category,
            NEW.blank_2, NEW.blank_3, NEW.blank_4, NEW.blank_5, NEW.blank_6, NEW.Transfer_to_SQL_Table,
            NEW.Google_Drive_Call_Recording_URL, NEW.Row_Duplicate_Mark, NEW.Call_Time, NEW.File_Size,
            NEW.Exceptions_if_call_recording_not_found, NEW.NBD_CRR_Call
        );
        -- Block insert into test table
     /*  SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid record moved to test_invalid.';  */
    END IF;

END$$
DELIMITER ;


/*  trigger section  */




select ID,Name_of_Client from test;
select *from test;
select *from test_invalid;
DROP TRIGGER IF EXISTS test_before_insert;






INSERT INTO test (
  Time_Stamp, Date_Time, ID, Name_of_Client, Mobile, Email_Id, Subjects, Notes,
  IVR_Url, WebSite_Name, Data_Source, Assign_To_MR, Remarks_History,
  Planned, Actual, Time_Delay, Status, Sample_New_Order_Form_Link,
  Followup, Remarks, Followup_Date, Transfer_To, Default_Contact_No,
  Default_Email_ID, Email_Sent, WhatsApp_Sent, SMS_Sent, Count_ID,
  Email_Sent_Status, WhatsApp_Sent_Status, SMS_Sent_Status,
  Order_Sales_Saved_Status, From_Sheet, blank_1, SQV_Lead_Intent,
  Lead_Priority, Duplicate, Client_Category, blank_2, blank_3,
  blank_4, blank_5, blank_6, Transfer_to_SQL_Table,
  Google_Drive_Call_Recording_URL, Row_Duplicate_Mark, Call_Time,
  File_Size, Exceptions_if_call_recording_not_found, NBD_CRR_Call
) VALUES (
  '2025-11-28 10:30:00',
  '2025-11-28 10:30:00',
  'ID100199664444444444444444444444444444444444444444444444444444444444444444444466666666666699',
  'Rahul Sharma',
  '9876543210',
  'rahul@example.com',
  'Project Inquiry',
  'Customer is interested in website development.',
  'https://ivr.example.com/123',
  'example.com',
  'Facebook Ads',
  'Mr. Vijay',
  'Discussed pricing details.',
  '2025-11-30',
  '2025-11-30',
  'No Delay',
  'Pending',
  'link123',
  'Follow-up required',
  'No remarks',
  '2025-12-05',
  'Sales Team',
  '9876543210',
  'rahul@example.com',
  'YES',
  'YES',
  'NO',
  '1',
  'SENT',
  'DELIVERED',
  'NOT_SENT',
  'SAVED',
  'Sheet 1',
  '',
  'Good',
  'High',
  'No',
  'Premium',
  '',
  '',
  '',
  '',
  '',
  'Yes',
  'https://drive.example.com/file',
  'NO',
  '12:30 PM',
  '5MB',
  'None',
  'NO'
);

INSERT INTO test (
  Time_Stamp, Date_Time, ID, Name_of_Client, Mobile, Email_Id, Subjects, Notes,
  IVR_Url, WebSite_Name, Data_Source, Assign_To_MR, Remarks_History,
  Planned, Actual, Time_Delay, Status, Sample_New_Order_Form_Link,
  Followup, Remarks, Followup_Date, Transfer_To, Default_Contact_No,
  Default_Email_ID, Email_Sent, WhatsApp_Sent, SMS_Sent, Count_ID,
  Email_Sent_Status, WhatsApp_Sent_Status, SMS_Sent_Status,
  Order_Sales_Saved_Status, From_Sheet, blank_1, SQV_Lead_Intent,
  Lead_Priority, Duplicate, Client_Category, blank_2, blank_3,
  blank_4, blank_5, blank_6, Transfer_to_SQL_Table,
  Google_Drive_Call_Recording_URL, Row_Duplicate_Mark, Call_Time,
  File_Size, Exceptions_if_call_recording_not_found, NBD_CRR_Call
) VALUES (
  '2025-11-28 10:30:00',
  '2025-11-28 10:30:00',
  'ID1002',
  'Amit Verma',
  '12345',  -- ❌ INVALID MOBILE
  'amit@example.com',
  'Sales Inquiry',
  'Customer is asking about discount.',
  'https://ivr.example.com/222',
  'example.com',
  'Google Search',
  'Mr. Rajesh',
  'Good response.',
  '2025-11-30',
  '2025-11-30',
  'No Delay',
  'Completed',
  'link223',
  'Follow-up done',
  'OK',
  '2025-12-01',
  'Sales Team',
  '12345',
  'amit@example.com',
  'YES',
  'YES',
  'YES',
  '2',
  'SENT',
  'SENT',
  'SENT',
  'SAVED',
  'Sheet 2',
  '',
  'Average',
  'Medium',
  'No',
  'Regular',
  '',
  '',
  '',
  '',
  '',
  'Yes',
  'https://drive.example.com/file2',
  'NO',
  '12:45 PM',
  '4MB',
  'None',
  'YES'
);
INSERT INTO test (ID, Name_of_Client, Mobile) VALUES ('123456789012345678901234567890123456', 'TestName', '999');


