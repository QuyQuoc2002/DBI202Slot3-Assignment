##### QuocpqHE163061 - DBI202SLOT3

<h1 align = "center"> Student Grading Management Sub-System </h1>

<br />

## I. Brief description of the database

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
9. ***Assessment*** (78 records) depend on 16 Group_Subject_Semester `ENM401` have updated (`SP2022`: 7 records, `SU2022`: 9 records)
10. ***Attendance*** (340records) form idStudent_checkAtt: 
    - HE162121_45
    - HE163061_45
    - HE163063_55 (reStudy PRO)
    - HE171111(25)
    - HE174423(25),
	- HS161001_41
	- HS163062_41
	- HS173222_21
	- HS173313_21
	- HS174331_21
11. ***Student_Assessment*** (229 records) details:
    - HE162121 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`), DBI(`NOT PASS` 1 score is 0), JPD(`Fail attendance`)
    - HE163061 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`), DBI(`PASS`), JPD(`PASS`)     ***GOLDEN TOAD*** in SU2022
    - HE163063 takes SSG103(`PASS`), MAD(`PASS`), PRO(`NOT PASS` 1 score is 0), DBI(`NOT PASS` AVG < 5), JPD(`PASS`), PRO(`PASS`)
    - HE171111 takes SSG103(`PASS`), MAD(`PASS`), PRO(`NOT PASS` FInal < 4), 
    - HE174423 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`),           ***GOLDEN TOAD*** in SU2022
    - HS161001 takes SSG103(`PASS`), ECO(`PASS`), ENM(`PASS`), IBI(`PASS`), FIN(`PASS`),         ***GOLDEN TOAD*** in SP2022
    - HS163062 takes SSG103(`PASS`), ECO(`PASS`), ENM(`PASS`), IBI(`PASS`), FIN(`PASS`),
    - HS173222 takes SSG103(`PASS`), ECO(`PASS`), ENM(`NOT PASS` AVG < 5),
    - HS173313 takes SSG103(`NOT PASS` AVG < 5), ECO(`PASS`), ENM(`PASS`), 
    - HS174331 takes SSG103(`Fail attendance`), ECO(`PASS`), ENM(`PASS`), 

<br />

## II. An ERD that fully describes the database.

<p align="center" margin = 0 padding = 0>
  <img src="https://scontent-hkt1-1.xx.fbcdn.net/v/t1.15752-9/290536996_1737863259900272_9215075193918391055_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ae9488&_nc_ohc=6DONYGRdGu0AX9iJ527&_nc_ht=scontent-hkt1-1.xx&oh=03_AVLqC0Qns4nw8EbPviltNS9qZl_IF1HAIfixRsBfnVv1uQ&oe=62F7A1B2">
</p>







