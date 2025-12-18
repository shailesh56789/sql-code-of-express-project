DELIMITER $$

CREATE TRIGGER redirect_test
BEFORE INSERT ON test
FOR EACH ROW
BEGIN
    -- Check all columns length and null
    IF (NEW.Time_Stamp IS NOT NULL AND CHAR_LENGTH(NEW.Time_Stamp) BETWEEN 1 AND 100)
       AND (NEW.Date_Time IS NOT NULL AND CHAR_LENGTH(NEW.Date_Time) BETWEEN 1 AND 100)
       AND (NEW.ID IS NOT NULL AND CHAR_LENGTH(NEW.ID) BETWEEN 1 AND 30)
       AND (NEW.Name_of_Client IS NOT NULL AND CHAR_LENGTH(NEW.Name_of_Client) BETWEEN 1 AND 35)
       AND (NEW.Mobile IS NOT NULL AND CHAR_LENGTH(NEW.Mobile) BETWEEN 1 AND 25)
       AND (NEW.Email_Id IS NOT NULL AND CHAR_LENGTH(NEW.Email_Id) BETWEEN 1 AND 50)
       AND (NEW.Subjects IS NOT NULL AND CHAR_LENGTH(NEW.Subjects) BETWEEN 1 AND 255)
       AND (NEW.Notes IS NOT NULL AND CHAR_LENGTH(NEW.Notes) BETWEEN 1 AND 1025)
       AND (NEW.IVR_Url IS NOT NULL AND CHAR_LENGTH(NEW.IVR_Url) BETWEEN 1 AND 255)
       AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
       
       /*    section -- ------            */
        AND (NEW.Date_Source IS NOT NULL AND CHAR_LENGTH(NEW.Date_Time) BETWEEN 1 AND 100)
       AND (NEW.Assign_To_MR IS NOT NULL AND CHAR_LENGTH(NEW.ID) BETWEEN 1 AND 30)
       AND (NEW.Remarks_History IS NOT NULL AND CHAR_LENGTH(NEW.Name_of_Client) BETWEEN 1 AND 35)
       AND (NEW.Planned IS NOT NULL AND CHAR_LENGTH(NEW.Mobile) BETWEEN 1 AND 25)
       AND (NEW.Actual IS NOT NULL AND CHAR_LENGTH(NEW.Email_Id) BETWEEN 1 AND 50)
       AND (NEW.Time_Delay IS NOT NULL AND CHAR_LENGTH(NEW.Subjects) BETWEEN 1 AND 255)
       AND (NEW.Notes IS NOT NULL AND CHAR_LENGTH(NEW.Notes) BETWEEN 1 AND 1025)
       AND (NEW.IVR_Url IS NOT NULL AND CHAR_LENGTH(NEW.IVR_Url) BETWEEN 1 AND 255)
       AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
             AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
         /*    section -- ------            */
          AND (NEW.Date_Time IS NOT NULL AND CHAR_LENGTH(NEW.Date_Time) BETWEEN 1 AND 100)
       AND (NEW.ID IS NOT NULL AND CHAR_LENGTH(NEW.ID) BETWEEN 1 AND 30)
       AND (NEW.Name_of_Client IS NOT NULL AND CHAR_LENGTH(NEW.Name_of_Client) BETWEEN 1 AND 35)
       AND (NEW.Mobile IS NOT NULL AND CHAR_LENGTH(NEW.Mobile) BETWEEN 1 AND 25)
       AND (NEW.Email_Id IS NOT NULL AND CHAR_LENGTH(NEW.Email_Id) BETWEEN 1 AND 50)
       AND (NEW.Subjects IS NOT NULL AND CHAR_LENGTH(NEW.Subjects) BETWEEN 1 AND 255)
       AND (NEW.Notes IS NOT NULL AND CHAR_LENGTH(NEW.Notes) BETWEEN 1 AND 1025)
       AND (NEW.IVR_Url IS NOT NULL AND CHAR_LENGTH(NEW.IVR_Url) BETWEEN 1 AND 255)
       AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
             AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
           /*    section -- ------            */
            AND (NEW.Date_Time IS NOT NULL AND CHAR_LENGTH(NEW.Date_Time) BETWEEN 1 AND 100)
       AND (NEW.ID IS NOT NULL AND CHAR_LENGTH(NEW.ID) BETWEEN 1 AND 30)
       AND (NEW.Name_of_Client IS NOT NULL AND CHAR_LENGTH(NEW.Name_of_Client) BETWEEN 1 AND 35)
       AND (NEW.Mobile IS NOT NULL AND CHAR_LENGTH(NEW.Mobile) BETWEEN 1 AND 25)
       AND (NEW.Email_Id IS NOT NULL AND CHAR_LENGTH(NEW.Email_Id) BETWEEN 1 AND 50)
       AND (NEW.Subjects IS NOT NULL AND CHAR_LENGTH(NEW.Subjects) BETWEEN 1 AND 255)
       AND (NEW.Notes IS NOT NULL AND CHAR_LENGTH(NEW.Notes) BETWEEN 1 AND 1025)
       AND (NEW.IVR_Url IS NOT NULL AND CHAR_LENGTH(NEW.IVR_Url) BETWEEN 1 AND 255)
       AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
             AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
             /*    section -- ------            */
              AND (NEW.Date_Time IS NOT NULL AND CHAR_LENGTH(NEW.Date_Time) BETWEEN 1 AND 100)
       AND (NEW.ID IS NOT NULL AND CHAR_LENGTH(NEW.ID) BETWEEN 1 AND 30)
       AND (NEW.Name_of_Client IS NOT NULL AND CHAR_LENGTH(NEW.Name_of_Client) BETWEEN 1 AND 35)
       AND (NEW.Mobile IS NOT NULL AND CHAR_LENGTH(NEW.Mobile) BETWEEN 1 AND 25)
       AND (NEW.Email_Id IS NOT NULL AND CHAR_LENGTH(NEW.Email_Id) BETWEEN 1 AND 50)
       AND (NEW.Subjects IS NOT NULL AND CHAR_LENGTH(NEW.Subjects) BETWEEN 1 AND 255)
       AND (NEW.Notes IS NOT NULL AND CHAR_LENGTH(NEW.Notes) BETWEEN 1 AND 1025)
       AND (NEW.IVR_Url IS NOT NULL AND CHAR_LENGTH(NEW.IVR_Url) BETWEEN 1 AND 255)
       AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
             AND (NEW.WebSite_Name IS NOT NULL AND CHAR_LENGTH(NEW.WebSite_Name) BETWEEN 1 AND 100)
               /*    section -- ------            */
       -- add other columns check here if needed
    THEN
        -- valid row → insert in test (original table)
        -- no action needed, row will automatically insert
        INSERT INTO test_valid (
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

        )
        VALUES (
            NEW.Time_Stamp, NEW.Date_Time, NEW.ID, NEW.Name_of_Client, NEW.Mobile, NEW.Email_Id,
            NEW.Subjects, NEW.Notes, NEW.IVR_Url, NEW.WebSite_Name
        );

    ELSE
        -- invalid row → insert into test_invalid
        INSERT INTO test_invalid (
            Time_Stamp, Date_Time, ID, Name_of_Client, Mobile, Email_Id,
            Subjects, Notes, IVR_Url, WebSite_Name, reason
        )
        VALUES (
            NEW.Time_Stamp, NEW.Date_Time, NEW.ID, NEW.Name_of_Client, NEW.Mobile, NEW.Email_Id,
            NEW.Subjects, NEW.Notes, NEW.IVR_Url, NEW.WebSite_Name, 'Length/Null validation failed'
        );

        -- block insert in test table
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid row moved to test_invalid';
    END IF;

END $$

DELIMITER ;
