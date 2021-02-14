file handle pcdat/name='NLS_79.dat' /lrecl=103.
data list file pcdat free /
  R0000100 (F5)
  R0000600 (F2)
  R0006500 (F2)
  R0007900 (F2)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
  R0618500 (F2)
  R0648301 (F3)
  R0648343 (F3)
  R1207800 (F4)
  R2509800 (F2)
  T5256900 (F4)
  T5257400 (F2)
  T5344300 (F5)
  T5407500 (F2)
  T5619500 (F6)
  T5684500 (F7)
  T5734600 (F3)
  T5770700 (F2)
  T5770800 (F6)
  T5770900 (F2)
  T5771000 (F2)
  T5771200 (F2)
  T5774000 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0000600  "AGE OF R 79"
  R0006500  "HGC BY RS MOTHER 79"
  R0007900  "HGC BY RS FATHER 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  R0618500  "POVERTY STATUS 81"
  R0648301  "ASVAB - ARITHREASON-MATHKNOW Z SCORE XRND"
  R0648343  "ASVAB - WORD KNOWLEDGE Z SCORE XRND"
  R1207800  "MAJOR FIELD STUDY @ M-RCNT COLL 84"
  R2509800  "HIGHEST DGR RCVD 88"
  T5256900  "OCCUPATION (2000 CODES) ALL JOB L1 2016"
  T5257400  "RS EMPLOYMENT CATEGORY ALL JOB L1 2016"
  T5344300  "# EMPLOYEES LOCTN RS AT JOB L1 2016"
  T5407500  "ANY PERIODS NOT EMPLD? 2016"
  T5619500  "AMT OF RS WAGES/SALARY/TIPS (PCY) 2016"
  T5684500  "FAMILY NET WEALTH (TRUNC) *KEY* 2016"
  T5734600  "CHANCES RS HLTH LIMITS WK NXT 10 YRS 2016"
  T5770700  "FAMILY SIZE 2016"
  T5770800  "TOTAL NET FAMILY INCOME 2016"
  T5770900  "POVERTY STATUS 2016"
  T5771000  "REGION OF RESIDENCE 2016"
  T5771200  "MARITAL STATUS 2016"
  T5774000  "RS RESIDENCE URBAN OR RURAL 2016"
.

* Recode continuous values. 
* recode 
 R0000600 
    (0 thru 13 eq 0)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 17 eq 17)
    (18 thru 18 eq 18)
    (19 thru 19 eq 19)
    (20 thru 20 eq 20)
    (21 thru 21 eq 21)
    (22 thru 22 eq 22)
    (23 thru 23 eq 23)
    (24 thru 24 eq 24)
    (25 thru 25 eq 25)
    (26 thru 26 eq 26)
    (27 thru 27 eq 27)
    (28 thru 28 eq 28)
    (29 thru 29 eq 29)
    (30 thru 99999 eq 30)
    / 
 R0648301 
    (0 thru 0 eq 0)
    (1 thru 49 eq 1)
    (50 thru 99 eq 50)
    (100 thru 149 eq 100)
    (150 thru 199 eq 150)
    (200 thru 249 eq 200)
    (250 thru 299 eq 250)
    (300 thru 349 eq 300)
    (350 thru 399 eq 350)
    (400 thru 449 eq 400)
    (450 thru 499 eq 450)
    (500 thru 549 eq 500)
    (550 thru 599 eq 550)
    (600 thru 649 eq 600)
    (650 thru 699 eq 650)
    (700 thru 749 eq 700)
    (750 thru 799 eq 750)
    (800 thru 9999999 eq 800)
    / 
 R0648343 
    (0 thru 0 eq 0)
    (1 thru 49 eq 1)
    (50 thru 99 eq 50)
    (100 thru 149 eq 100)
    (150 thru 199 eq 150)
    (200 thru 249 eq 200)
    (250 thru 299 eq 250)
    (300 thru 349 eq 300)
    (350 thru 399 eq 350)
    (400 thru 449 eq 400)
    (450 thru 499 eq 450)
    (500 thru 549 eq 500)
    (550 thru 599 eq 550)
    (600 thru 649 eq 600)
    (650 thru 699 eq 650)
    (700 thru 749 eq 700)
    (750 thru 799 eq 750)
    (800 thru 9999999 eq 800)
    / 
 R1207800 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 9999999 eq 1000)
    / 
 T5256900 
    (10 thru 430 eq 10)
    (500 thru 950 eq 500)
    (1000 thru 1240 eq 1000)
    (1300 thru 1560 eq 1300)
    (1600 thru 1760 eq 1600)
    (1800 thru 1860 eq 1800)
    (1900 thru 1960 eq 1900)
    (2000 thru 2060 eq 2000)
    (2100 thru 2150 eq 2100)
    (2200 thru 2340 eq 2200)
    (2400 thru 2550 eq 2400)
    (2600 thru 2760 eq 2600)
    (2800 thru 2960 eq 2800)
    (3000 thru 3260 eq 3000)
    (3300 thru 3650 eq 3300)
    (3700 thru 3950 eq 3700)
    (4000 thru 4160 eq 4000)
    (4200 thru 4250 eq 4200)
    (4300 thru 4430 eq 4300)
    (4460 thru 4460 eq 4460)
    (4500 thru 4650 eq 4500)
    (4700 thru 4960 eq 4700)
    (5000 thru 5930 eq 5000)
    (6000 thru 6130 eq 6000)
    (6200 thru 6940 eq 6200)
    (7000 thru 7620 eq 7000)
    (7700 thru 7750 eq 7700)
    (7800 thru 7850 eq 7800)
    (7900 thru 8960 eq 7900)
    (9000 thru 9750 eq 9000)
    (9800 thru 9830 eq 9800)
    (9840 thru 9840 eq 9840)
    (9950 thru 9950 eq 9950)
    (9990 thru 9990 eq 9990)
    / 
 T5344300 
    (0 thru 0 eq 0)
    (1 thru 49 eq 1)
    (50 thru 99 eq 50)
    (100 thru 149 eq 100)
    (150 thru 199 eq 150)
    (200 thru 249 eq 200)
    (250 thru 299 eq 250)
    (300 thru 349 eq 300)
    (350 thru 399 eq 350)
    (400 thru 449 eq 400)
    (450 thru 499 eq 450)
    (500 thru 99999999 eq 500)
    / 
 T5619500 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T5684500 
    (-999999999 thru -6 eq -999999999)
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T5734600 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 99999999 eq 100)
    / 
 T5770700 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T5770800 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
.

* value labels
 R0000600
    0 "0 TO 13: < 14"
    14 "14"
    15 "15"
    16 "16"
    17 "17"
    18 "18"
    19 "19"
    20 "20"
    21 "21"
    22 "22"
    23 "23"
    24 "24"
    25 "25"
    26 "26"
    27 "27"
    28 "28"
    29 "29"
    30 "30 TO 99999: 30+"
    /
 R0006500
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YR COL"
    14 "2ND YR COL"
    15 "3RD YR COL"
    16 "4TH YR COL"
    17 "5TH YR COL"
    18 "6TH YR COL"
    19 "7TH YR COL"
    20 "8TH YR COL OR MORE"
    95 "UNGRADED"
    /
 R0007900
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YR COL"
    14 "2ND YR COL"
    15 "3RD YR COL"
    16 "4TH YR COL"
    17 "5TH YR COL"
    18 "6TH YR COL"
    19 "7TH YR COL"
    20 "8TH YR COL OR MORE"
    95 "UNGRADED"
    /
 R0173600
    1 "CROSS MALE WHITE"
    2 "CROSS MALE WH. POOR"
    3 "CROSS MALE BLACK"
    4 "CROSS MALE HISPANIC"
    5 "CROSS FEMALE WHITE"
    6 "CROSS FEMALE WH POOR"
    7 "CROSS FEMALE BLACK"
    8 "CROSS FEMALE HISPANIC"
    9 "SUP MALE WH POOR"
    10 "SUP MALE BLACK"
    11 "SUP MALE HISPANIC"
    12 "SUP FEM WH POOR"
    13 "SUP FEMALE BLACK"
    14 "SUP FEMALE HISPANIC"
    15 "MIL MALE WHITE"
    16 "MIL MALE BLACK"
    17 "MIL MALE HISPANIC"
    18 "MIL FEMALE WHITE"
    19 "MIL FEMALE BLACK"
    20 "MIL FEMALE HISPANIC"
    /
 R0214700
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 R0214800
    1 "MALE"
    2 "FEMALE"
    /
 R0618500
    0 "NOT IN POVERTY"
    1 "IN POVERTY"
    /
 R0648301
    0 "0"
    1 "1 TO 49"
    50 "50 TO 99"
    100 "100 TO 149"
    150 "150 TO 199"
    200 "200 TO 249"
    250 "250 TO 299"
    300 "300 TO 349"
    350 "350 TO 399"
    400 "400 TO 449"
    450 "450 TO 499"
    500 "500 TO 549"
    550 "550 TO 599"
    600 "600 TO 649"
    650 "650 TO 699"
    700 "700 TO 749"
    750 "750 TO 799"
    800 "800 TO 9999999: 800+"
    /
 R0648343
    0 "0"
    1 "1 TO 49"
    50 "50 TO 99"
    100 "100 TO 149"
    150 "150 TO 199"
    200 "200 TO 249"
    250 "250 TO 299"
    300 "300 TO 349"
    350 "350 TO 399"
    400 "400 TO 449"
    450 "450 TO 499"
    500 "500 TO 549"
    550 "550 TO 599"
    600 "600 TO 649"
    650 "650 TO 699"
    700 "700 TO 749"
    750 "750 TO 799"
    800 "800 TO 9999999: 800+"
    /
 R1207800
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 9999999: 1000+"
    /
 R2509800
    1 "HIGH SCHOOL DIPLOMA (OR EQUIVALENT)"
    2 "ASSOCIATE/JUNIOR COLLEGE (AA)"
    3 "BACHELOR OF ARTS DEGREE (BA)"
    4 "BACHELOR OF SCIENCE (BS)"
    5 "MASTER'S DEGREE (MA,MBA,MS,MSW)"
    6 "DOCTORAL DEGREE (PHD)"
    7 "PROFESSIONAL DEGREE (MD,LLD,DDS)"
    8 "OTHER"
    /
 T5256900
    10 "10 TO 430: Executive, Administrative and Managerial Occupations"
    500 "500 TO 950: Management Related Occupations"
    1000 "1000 TO 1240: Mathematical and Computer Scientists"
    1300 "1300 TO 1560: Engineers, Architects, Surveyers, Engineering and Related Technicians"
    1600 "1600 TO 1760: Physical Scientists"
    1800 "1800 TO 1860: Social Scientists and Related Workers"
    1900 "1900 TO 1960: Life, Physical and Social Science Technicians"
    2000 "2000 TO 2060: Counselors, Sociala and Religious Workers"
    2100 "2100 TO 2150: Lawyers, Judges and Legal Support Workers"
    2200 "2200 TO 2340: Teachers"
    2400 "2400 TO 2550: Education, Training and Library Workers"
    2600 "2600 TO 2760: Entertainers and Performers, Sports and Related Workers"
    2800 "2800 TO 2960: Media and Communications Workers"
    3000 "3000 TO 3260: Health Diagnosing and Treating Practitioners"
    3300 "3300 TO 3650: Health Care Technical and Support Occupations"
    3700 "3700 TO 3950: Protective Service Occupations"
    4000 "4000 TO 4160: Food Preparation and Serving Related Occupations"
    4200 "4200 TO 4250: Cleaning and Building Service Occupations"
    4300 "4300 TO 4430: Entertainment Attendants and Related Workers"
    4460 "4460: Funeral Related Occupations"
    4500 "4500 TO 4650: Personal Care and Service Workers"
    4700 "4700 TO 4960: Sales and Related Workers"
    5000 "5000 TO 5930: Office and Administrative Support Workers"
    6000 "6000 TO 6130: Farming, Fishing and Forestry Occupations"
    6200 "6200 TO 6940: Construction Trade and Extraction Workers"
    7000 "7000 TO 7620: Installation, Maintenance and Repairs Workers"
    7700 "7700 TO 7750: Production and Operating Workers"
    7800 "7800 TO 7850: Food Preparation Occupations"
    7900 "7900 TO 8960: Setters, Operators and Tenders"
    9000 "9000 TO 9750: Transportation and Material Moving Workers"
    9800 "9800 TO 9830: Military Specific Occupations"
    9840 "9840: Armed Forces"
    9950 "9950: Not in Labor Force (ACS Code)"
    9990 "9990: Uncodeable"
    /
 T5257400
    1 "1: 1  Government"
    2 "2: 2  Private for profit company"
    3 "3: 3  Non-profit organization (including tax exempt and charitable)"
    4 "4: 4  Self employed"
    5 "5: 5  Working in family business"
    /
 T5344300
    0 "0"
    1 "1 TO 49"
    50 "50 TO 99"
    100 "100 TO 149"
    150 "150 TO 199"
    200 "200 TO 249"
    250 "250 TO 299"
    300 "300 TO 349"
    350 "350 TO 399"
    400 "400 TO 449"
    450 "450 TO 499"
    500 "500 TO 99999999: 500+"
    /
 T5407500
    0 "0: 0  CONDITION DOES NOT APPLY"
    1 "1: 1  CONDITION APPLIES"
    /
 T5619500
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T5684500
    -999999999 "-999999999 TO -6: < 0"
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T5734600
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100 TO 99999999: 100+"
    /
 T5770700
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T5770800
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T5770900
    0 "0: NOT IN POVERTY"
    1 "1: IN POVERTY"
    /
 T5771000
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T5771200
    0 "0: 0  NEVER MARRIED"
    1 "1: 1  MARRIED"
    2 "2: 2  SEPARATED"
    3 "3: 3  DIVORCED"
    6 "6: 6  WIDOWED"
    /
 T5774000
    0 "0: RURAL"
    1 "1: URBAN"
    2 "2: UNKNOWN"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0000600 = FAM_1B_1979)   /* FAM-1B */
  (R0006500 = HGC_MOTHER_1979)   /* HGC-MOTHER */
  (R0007900 = HGC_FATHER_1979)   /* HGC-FATHER */
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (R0618500 = POVSTATUS_1981) 
  (R0648301 = ASVAB_AR_MK_IRT_ZSCORE_XRND)   /* ASVAB-AR-MK-IRT-ZSCORE */
  (R0648343 = ASVAB_WORDKNOW_IRT_ZSCORE_XRND)   /* ASVAB-WORDKNOW-IRT-ZSCORE */
  (R1207800 = Q3_23_1_1984)   /* Q3-23_1 */
  (R2509800 = Q3_10B_1988)   /* Q3-10B */
  (T5256900 = OCCALL_EMP_01_2016)   /* OCCALL-EMP.01 */
  (T5257400 = COWALL_EMP_01_2016)   /* COWALL-EMP.01 */
  (T5344300 = QES_FIRMSZ2_01_2016)   /* QES-FIRMSZ2.01 */
  (T5407500 = Q7_A_2016)   /* Q7-A */
  (T5619500 = Q13_5_TRUNC_2016)   /* Q13-5_TRUNC */
  (T5684500 = TNFW_TRUNC_2016) 
  (T5734600 = RETIRE_EXP_P2_E3_2016) 
  (T5770700 = FAMSIZE_2016) 
  (T5770800 = TNFI_TRUNC_2016) 
  (T5770900 = POVSTATUS_2016) 
  (T5771000 = REGION_2016) 
  (T5771200 = MARSTAT_KEY_2016)   /* MARSTAT-KEY */
  (T5774000 = URBAN_RURAL_2016)   /* URBAN-RURAL */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0000600, 
  R0006500, 
  R0007900, 
  R0173600, 
  R0214700, 
  R0214800, 
  R0618500, 
  R0648301, 
  R0648343, 
  R1207800, 
  R2509800, 
  T5256900, 
  T5257400, 
  T5344300, 
  T5407500, 
  T5619500, 
  T5684500, 
  T5734600, 
  T5770700, 
  T5770800, 
  T5770900, 
  T5771000, 
  T5771200, 
  T5774000.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  FAM_1B_1979, 
  HGC_MOTHER_1979, 
  HGC_FATHER_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  POVSTATUS_1981, 
  ASVAB_AR_MK_IRT_ZSCORE_XRND, 
  ASVAB_WORDKNOW_IRT_ZSCORE_XRND, 
  Q3_23_1_1984, 
  Q3_10B_1988, 
  OCCALL_EMP_01_2016, 
  COWALL_EMP_01_2016, 
  QES_FIRMSZ2_01_2016, 
  Q7_A_2016, 
  Q13_5_TRUNC_2016, 
  TNFW_TRUNC_2016, 
  RETIRE_EXP_P2_E3_2016, 
  FAMSIZE_2016, 
  TNFI_TRUNC_2016, 
  POVSTATUS_2016, 
  REGION_2016, 
  MARSTAT_KEY_2016, 
  URBAN_RURAL_2016.
