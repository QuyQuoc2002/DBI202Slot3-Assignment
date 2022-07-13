##### QuocpqHE163061 - DBI202SLOT3

# Student Grading Management Sub-System

<br />

## Brief description of the database

This database consists of 11 tables:

1. ***Student*** (11 records):
    - 3 record Student have id `HE16____`
    - 2 record Student have id `HE17____`
    - 1 record Student have id `HE18____`
    - 2 record Student have id `HS16____`
    - 3 record Student have id `HS17____`
2. ***Group*** (4 records): `SE1647`, `SE1747`, `IB1609`, `IB1709`
3. ***Enroll*** (10 records): 
    - ID `HE16____` enroll group `SE1647`
    - ID `HE17____` enroll group `SE1747`
    - ID `HS16____` enroll group `IB1609`
    - ID `HS17____` enroll group `IB1609`
    - ID `HS18____` has not enrolled any group

4. ***Subject*** (9 Records) form idSubject_totalSlot : `DBI202_10`, `JPD111_10`, `IBI101_10`, `FIN202_10`, `PRO193_10`, `MAD101_10`, `ECO121_8`, `ENM401_8`, `SSG103_5`
5. ***SubjectSemester*** (14 records): `9` subject in semester `SU2022`, `5` subject in semester `SP2022`
6. ***TimeSlot*** (6 records): 1 -> 6
7. ***Group_Subject_Semester*** (16 records): 
    - Group `SE1647` takes `3` Subjects in `SP2022`, takes `2` Subject in `SU2022`
    - Group `IB1609` takes `3` Subjects in `SP2022`, takes `2` Subject in `SU2022`
    - Group `SE1747` takes `3` Subjects in `SU2022`,
    - Group `IB1747` takes `3` Subjects in `SU2022`,
8. ***Session*** (132 records depend on total Slot of each subject): 
    - Group `SE1647` takes `5` Subjects (45` Session)
    - Group `IB1609` takes `5` Subjects (41` Session)
    - Group `SE1747` takes `3` Subjects (25` Session)
    - Group `IB1709` takes `3` Subjects (21` Session)
9. 





