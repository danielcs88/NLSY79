case_id = """ R00001.00    [CASEID]                                       Survey Year: 1979
  PRIMARY VARIABLE

             IDENTIFICATION CODE

ORIGINAL QUESTION NAME: CASEID

NOTE: THIS NUMBER WAS ASSIGNED ACCORDING TO THE RECORD NUMBER OF EACH RESPONDENT
ON THE TAPE. THE FIRST RESPONDENT WAS ASSIGNED ID#1, THE SECOND WAS ASSIGNED 
ID#2, ETC.

ACTUAL NUMBER

UNIVERSE: All

Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   12686   VALID SKIP(-4)       0     NON-INTERVIEW(-5)       0
 
Min:              1        Max:          12686        Mean:              6343.5
 
Lead In: None.
Default Next Question: R00001.49"""

age = """
R00006.00    [FAM-1B]                                       Survey Year: 1979
  PRIMARY VARIABLE

 
             AGE OF R
 
ORIGINAL QUESTION NAME: S01Q01B
 
AND THAT MAKES YOU (R'S AGE ON HOUSEHOLD ENUMERATION). IS THAT CORRECT ? (IF 
NECESSARY CORRECT HOUSEHOLD ENUMERATION.)
 
ACTUAL AGE
 
UNIVERSE: All
 
     950          14
    1563          15
    1561          16
    1508          17
    1634          18
    1677          19
    1666          20
    1690          21
     437          22
  -------
   12686
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   12686   VALID SKIP(-4)       0     NON-INTERVIEW(-5)       0
 
Min:             14        Max:             22        Mean:                17.9
 
Lead In: R00005.00[Default]
Default Next Question: R00007.00
"""


hgc_mother = """
R00065.00    [HGC-MOTHER]                                   Survey Year: 1979
  PRIMARY VARIABLE

             HIGHEST GRADE COMPLETED BY R'S MOTHER

ORIGINAL QUESTION NAME: S01Q16

WHAT IS THE HIGHEST GRADE OR YEAR OF REGULAR SCHOOL THAT YOUR MOTHER EVER 
COMPLETED?

UNIVERSE: R with mother/mother figure

     132       0 NONE
      24       1 1ST GRADE
      87       2 2ND GRADE
     183       3 3RD GRADE
     173       4 4TH GRADE
     198       5 5TH GRADE
     421       6 6TH GRADE
     260       7 7TH GRADE
     801       8 8TH GRADE
     698       9 9TH GRADE
     999      10 10TH GRADE
    1107      11 11TH GRADE
    4817      12 12TH GRADE
     364      13 1ST YR COL
     561      14 2ND YR COL
     178      15 3RD YR COL
     647      16 4TH YR COL
     101      17 5TH YR COL
      92      18 6TH YR COL
      14      19 7TH YR COL
      21      20 8TH YR COL OR MORE
       0      95 UNGRADED
  -------
   11878
 
Refusal(-1)            3
Don't Know(-2)       527
Invalid Skip(-3)     251
TOTAL =========>   12659   VALID SKIP(-4)      27     NON-INTERVIEW(-5)       0
 
Min:              0        Max:             20        Mean:               10.87
 
Lead In: R00061.00[Default]
Default Next Question: R00066.00"""

hgc_father = """R00079.00    [HGC-FATHER]                                   Survey Year: 1979
  PRIMARY VARIABLE

             HIGHEST GRADE COMPLETED BY R'S FATHER

ORIGINAL QUESTION NAME: S01Q23

LET'S GO BACK TO YOUR FATHER NOW. WHAT IS THE HIGHEST GRADE OR YEAR OF REGULAR 
SCHOOL THAT YOUR FATHER EVER COMPLETED?

UNIVERSE: R with father/father figure

     199       0 NONE
      48       1 1ST GRADE
     102       2 2ND GRADE
     215       3 3RD GRADE
     208       4 4TH GRADE
     190       5 5TH GRADE
     499       6 6TH GRADE
     306       7 7TH GRADE
     950       8 8TH GRADE
     568       9 9TH GRADE
     754      10 10TH GRADE
     616      11 11TH GRADE
    3694      12 12TH GRADE
     286      13 1ST YR COL
     558      14 2ND YR COL
     162      15 3RD YR COL
     899      16 4TH YR COL
     151      17 5TH YR COL
     209      18 6TH YR COL
      56      19 7TH YR COL
     210      20 8TH YR COL OR MORE
       0      95 UNGRADED
  -------
   10880
 
Refusal(-1)            3
Don't Know(-2)      1150
Invalid Skip(-3)     423
TOTAL =========>   12456   VALID SKIP(-4)     230     NON-INTERVIEW(-5)       0
 
Min:              0        Max:             20        Mean:               10.95
 
Lead In: R00077.00[Default]
Default Next Question: R00080.00
"""

sample_id = """
R01736.00    [SAMPLE_ID]                                    Survey Year: 1979
  PRIMARY VARIABLE

             SAMPLE IDENTIFICATION CODE

ORIGINAL QUESTION NAME: S24Q01

UNIVERSE: Entire Sample

    2236       1 CROSS MALE WHITE
     203       2 CROSS MALE WH. POOR
     346       3 CROSS MALE BLACK
     218       4 CROSS MALE HISPANIC
    2279       5 CROSS FEMALE WHITE
     198       6 CROSS FEMALE WH POOR
     405       7 CROSS FEMALE BLACK
     226       8 CROSS FEMALE HISPANIC
     742       9 SUP MALE WH POOR
    1105      10 SUP MALE BLACK
     729      11 SUP MALE HISPANIC
     901      12 SUP FEM WH POOR
    1067      13 SUP FEMALE BLACK
     751      14 SUP FEMALE HISPANIC
     609      15 MIL MALE WHITE
     162      16 MIL MALE BLACK
      53      17 MIL MALE HISPANIC
     342      18 MIL FEMALE WHITE
      89      19 MIL FEMALE BLACK
      25      20 MIL FEMALE HISPANIC
  -------
   12686
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   12686   VALID SKIP(-4)       0     NON-INTERVIEW(-5)       0
 
Min:              1        Max:             20        Mean:                8.17
 
MARCH 1, 1986  NORC
 
SEX CODE CHANGED ON 42 CASES
 
Lead In: R01735.19[Default]
Default Next Question: R01737.00"""

sample_race = """
R02147.00    [SAMPLE_RACE]                                  Survey Year: 78SCRN
  PRIMARY VARIABLE

             R'S RACIAL/ETHNIC COHORT FROM SCREENER

UNIVERSE: Entire Sample

    2002       1 HISPANIC
    3174       2 BLACK
    7510       3 NON-BLACK, NON-HISPANIC
  -------
   12686
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   12686   VALID SKIP(-4)       0     NON-INTERVIEW(-5)       0
 
Min:              1        Max:              3        Mean:                2.43
 
AUGUST 26, 1980  DENNIS GREY
 
DESCRIPTION:
COHORT=3;
IF R(1736.)=4 ! R(1736.)=8 ! R(1736.)=11 ! R(1736.)=14 THEN COHORT=1;
IF R(1736.)=17 ! R(1736.)=20 THEN COHORT=1;
IF R(1736.)=3 ! R(1736.)=7 ! R(1736.)=10 ! R(1736.)=13 THEN COHORT=2;
IF R(1736.)=16 ! R(1736.)=19 THEN COHORT=2;
R(2147.)=COHORT;
 
Lead In: R02146.00[Default]
Default Next Question: R02148.00"""

sample_sex = """R02148.00    [SAMPLE_SEX]                                   Survey Year: 1979
  PRIMARY VARIABLE

             SEX OF R

UNIVERSE: Entire sample

    6403       1 MALE
    6283       2 FEMALE
  -------
   12686
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   12686   VALID SKIP(-4)       0     NON-INTERVIEW(-5)       0
 
Min:              1        Max:              2        Mean:                 1.5
 
AUGUST 26, 1980  DENNIS GREY
MARCH 1, 1986  NORC
 
DESCRIPTION:
IF (R(1736.)>0 & R(1736.)<=4) ! (R(1736.)>=9 & R(1736.)<=11) THEN SEX=1;
IF R(1736.)>=15 & R(1736.)<=17 THEN SEX=1;
IF (R(1736.)>=5 & R(1736.)<=8) ! (R(1736.)>=12 & R(1736.)<=14) THEN SEX=
IF R(1736.)>=18 & R(1736.)<=20 THEN SEX=2;
R(2148.)=SEX;
SEX CODE CHANGED ON 42 CASES
 
Lead In: R02147.00[Default]
Default Next Question: R02149.00
"""

pov_1980 = """R06185.00    [POVSTATUS]                                    Survey Year: 1981
  PRIMARY VARIABLE

             FAMILY POVERTY STATUS IN 1980

ORIGINAL QUESTION NAME: *CREATED

NOTE: FOR VARIABLE CREATION, SEE APPENDIX 2: TOTAL NET FAMILY INCOME

    1978       1 IN POVERTY
    7806       0 NOT IN POVERTY
  -------
    9784
 
Refusal(-1)            0
Don't Know(-2)         0
Invalid Skip(-3)    2411
TOTAL =========>   12195   VALID SKIP(-4)       0     NON-INTERVIEW(-5)     491
 
Min:              0        Max:              1        Mean:                  .2
 
This variable corrects inconsistencies in creating the POVSTATUS variable from 
1979 through 1994; this series is now consistent through all years. For archival
purposes, the previous poverty status variables are available for those years 
with the QNAME=POVSTATUS_OLDSTND, although researchers are strongly encouraged 
to use POVSTATUS.
 
Lead In: R06184.10[Default]
Default Next Question: R06185.10"""

asvab_math = """06483.01    [ASVAB-AR-MK-IRT-ZSCORE]                       Survey Year: XRND
  PRIMARY VARIABLE

             ASVAB - ARITHMETIC REASONING/MATHEMATICS KNOWLEDGE Z SCORE

ORIGINAL QUESTION NAME: *CREATED
NOTE: TWO IMPLIED DECIMAL PLACES. DIVIDE BY 100 & SUBTRACT 5 TO GET ORIGINAL Z 
SCORE.

NOTE:  NORMING PROCEDURE:  RESPONDENTS WERE GROUPED INTO FOUR-MONTH AGE 
INTERVALS FOR EACH BIRTH YEAR.  WITHIN EACH AGE GROUP, IRT THETA SCORES WERE 
RANKED FROM LOWEST TO HIGHEST AND A NONPARAMETRIC DISTRIBUTION FUNCTION WAS 
CALCULATED USING THE ASVAB SAMPLING WEIGHTS. THESE ESTIMATED PROBABILITIES WERE 
TRANSFORMED TO STANDARD NORMAL Z SCORES.

      17         150 TO 199
      99         200 TO 249
     295         250 TO 299
     739         300 TO 349
    1437         350 TO 399
    1987         400 TO 449
    2151         450 TO 499
    1871         500 TO 549
    1329         550 TO 599
     705         600 TO 649
     334         650 TO 699
     120         700 TO 749
      67         750 TO 799
       1         800 TO 9999999: 800+
  -------
   11152
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   11152   VALID SKIP(-4)    1534     NON-INTERVIEW(-5)       0
 
Min:            166        Max:            825        Mean:              475.04
 
Lead In: None.
Default Next Question: R06483.02"""

asvab_word = """R06483.43    [ASVAB-WORDKNOW-IRT-ZSCORE]                    Survey Year: XRND
  PRIMARY VARIABLE

             ASVAB - WORD KNOWLEDGE Z SCORE

ORIGINAL QUESTION NAME: *CREATED
NOTE: TWO IMPLIED DECIMAL PLACES. DIVIDE BY 100 & SUBTRACT 5 TO GET ORIGINAL Z 
SCORE.

NOTE:  NORMING PROCEDURE:  RESPONDENTS WERE GROUPED INTO FOUR-MONTH AGE 
INTERVALS FOR EACH BIRTH YEAR.  WITHIN EACH AGE GROUP, IRT THETA SCORES WERE 
RANKED FROM LOWEST TO HIGHEST AND A NONPARAMETRIC DISTRIBUTION FUNCTION WAS 
CALCULATED USING THE ASVAB SAMPLING WEIGHTS. THESE ESTIMATED PROBABILITIES WERE 
TRANSFORMED TO STANDARD NORMAL Z SCORES.

      22         150 TO 199
      91         200 TO 249
     281         250 TO 299
     774         300 TO 349
    1489         350 TO 399
    2033         400 TO 449
    2057         450 TO 499
    1772         500 TO 549
    1307         550 TO 599
     642         600 TO 649
     572         650 TO 699
     116         700 TO 749
       3         750 TO 799
       1         800 TO 9999999: 800+
  -------
   11160
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>   11160   VALID SKIP(-4)    1526     NON-INTERVIEW(-5)       0
 
Min:            168        Max:            825        Mean:              475.07
 
Lead In: R06483.42[Default]
Default Next Question: R06483.44"""

major = """R12078.00    [Q3-23_1]                                      Survey Year: 1984
  PRIMARY VARIABLE

             MAJOR FIELD OF STUDY AT MOST RECENT COLLEGE ATTENDED

ORIGINAL QUESTION NAME: Q0373

WHAT (IS/WAS) YOUR FIELD OF STUDY AT (NAME OF SCHOOL)? PROBE IF
NECESSARY: WHAT (ARE/WERE) YOUR MAJORING IN?

SEE ATTACHMENT 4, FIELDS OF STUDY IN COLLEGE

UNIVERSE: R is/was attending college/university

     327           0
       0           1 TO 99
      73         100 TO 199
      55         200 TO 299
       0         300 TO 399
     156         400 TO 499
    1401         500 TO 599
     141         600 TO 699
     362         700 TO 799
     440         800 TO 899
     406         900 TO 999
    1930        1000 TO 9999999: 1000+
  -------
    5291
 
Refusal(-1)            0
Don't Know(-2)         0
Invalid Skip(-3)       2
TOTAL =========>    5293   VALID SKIP(-4)    6776     NON-INTERVIEW(-5)     617
 
Min:              0        Max:           9996        Mean:             1233.85
 
Lead In: R12077.00[Default]
Default Next Question: R12079.00"""

max_degree = """R25098.00    [Q3-10B]                                       Survey Year: 1988
  PRIMARY VARIABLE

             HIGHEST DEGREE EVER RECEIVED

ORIGINAL QUESTION NAME: Q3.9A

(HAND CARD B) WHAT IS THE NAME OF THE HIGHEST DEGREE YOU HAVE EVER
RECEIVED?

UNIVERSE: All except those without any formal schooling; currently enrolled >= 
13; has HS diploma or equivalent

    6031       1 HIGH SCHOOL DIPLOMA (OR EQUIVALENT)
     626       2 ASSOCIATE/JUNIOR COLLEGE (AA)
     587       3 BACHELOR OF ARTS DEGREE (BA)
     922       4 BACHELOR OF SCIENCE (BS)
     178       5 MASTER'S DEGREE (MA,MBA,MS,MSW)
      11       6 DOCTORAL DEGREE (PHD)
      49       7 PROFESSIONAL DEGREE (MD,LLD,DDS)
     160       8 OTHER
  -------
    8564
 
Refusal(-1)            1
Don't Know(-2)         0
Invalid Skip(-3)       6
TOTAL =========>    8571   VALID SKIP(-4)    1894     NON-INTERVIEW(-5)    2221
 
Min:              1        Max:              8        Mean:                1.79
 
Lead In: R25097.00[Default]
Default Next Question: R25099.00"""

occup_2016 = """T52569.00    [OCCALL-EMP.01]                                Survey Year: 2016
  PRIMARY VARIABLE

             OCCUPATION (CENSUS 4 DIGIT, 00 CODES) (ALL) JOB #01

COMMENT: 1970 CENSUS CODE FOR OCCUPATION - EMPLOYER
SEE ATTACHMENT 3, INDUSTRY AND OCCUPATION CODES

INCLUDES DATA FOR ALL R'S REPORTING EMPLOYER

     665          10 TO 430: Executive, Administrative and Managerial 
                          Occupations
     266         500 TO 950: Management Related Occupations
     110        1000 TO 1240: Mathematical and Computer Scientists
      85        1300 TO 1560: Engineers, Architects, Surveyers, Engineering and 
                          Related Technicians
      18        1600 TO 1760: Physical Scientists
      10        1800 TO 1860: Social Scientists and Related Workers
      11        1900 TO 1960: Life, Physical and Social Science Technicians
     113        2000 TO 2060: Counselors, Sociala and Religious Workers
      48        2100 TO 2150: Lawyers, Judges and Legal Support Workers
     233        2200 TO 2340: Teachers
      88        2400 TO 2550: Education, Training and Library Workers
      67        2600 TO 2760: Entertainers and Performers, Sports and Related 
                          Workers
      34        2800 TO 2960: Media and Communications Workers
     134        3000 TO 3260: Health Diagnosing and Treating Practitioners
     249        3300 TO 3650: Health Care Technical and Support Occupations
     144        3700 TO 3950: Protective Service Occupations
     209        4000 TO 4160: Food Preparation and Serving Related Occupations
     272        4200 TO 4250: Cleaning and Building Service Occupations
      18        4300 TO 4430: Entertainment Attendants and Related Workers
     202        4500 TO 4650: Personal Care and Service Workers
     374        4700 TO 4960: Sales and Related Workers
     718        5000 TO 5930: Office and Administrative Support Workers
      21        6000 TO 6130: Farming, Fishing and Forestry Occupations
     278        6200 TO 6940: Construction Trade and Extraction Workers
     206        7000 TO 7620: Installation, Maintenance and Repairs Workers
      84        7700 TO 7750: Production and Operating Workers
      12        7800 TO 7850: Food Preparation Occupations
     246        7900 TO 8960: Setters, Operators and Tenders
     397        9000 TO 9750: Transportation and Material Moving Workers
       6        9840: Armed Forces
       4        9990: Uncodeable
  -------
    5323
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    5323   VALID SKIP(-4)    1589     NON-INTERVIEW(-5)    5774
 
Min:              5        Max:           9990        Mean:             4245.22
 
Lead In: T52564.00[Default]
Default Next Question: T52574.00"""

css_worker = """T52574.00    [COWALL-EMP.01]                                Survey Year: 2016
  PRIMARY VARIABLE

             CLASS OF WORKER (ALL) JOB #01

COMMENT: CLASS OF WORKER - EMPLOYER
INCLUDES DATA FOR ALL R'S REPORTING EMPLOYER

    1102           1: 1  Government
    2903           2: 2  Private for profit company
     465           3: 3  Non-profit organization (including tax exempt and 
                          charitable)
     700           4: 4  Self employed
      56           5: 5  Working in family business
  -------
    5226
 
Refusal(-1)            7
Don't Know(-2)       127
Invalid Skip(-3)      14
TOTAL =========>    5374   VALID SKIP(-4)    1538     NON-INTERVIEW(-5)    5774
 
Min:              1        Max:              5        Mean:                2.18
 
Lead In: T52569.00[Default]
Default Next Question: T52914.00"""

firm_size = """T53443.00    [QES-FIRMSZ2.01]                               Survey Year: 2016
  PRIMARY VARIABLE

             # OF EMPLOYEES AT LOCATION OF R'S JOB # 01

At the place where you [(work/worked)], how many employees ([(does/did)] 
[(employer name)]([QES-LOOP1 counter])/[do/did] you) have?  (INTERVIEWER: IF 
VOLUNTEERED "NUMBER VARIES", ENTER "99995".)

    1931           1 TO 49
     541          50 TO 99
     331         100 TO 149
     151         150 TO 199
     193         200 TO 249
      73         250 TO 299
     159         300 TO 349
      29         350 TO 399
      86         400 TO 449
      19         450 TO 499
     862         500 TO 99999999: 500+
  -------
    4375
 
Refusal(-1)           11
Don't Know(-2)       187
Invalid Skip(-3)       2
TOTAL =========>    4575   VALID SKIP(-4)    2337     NON-INTERVIEW(-5)    5774
 
Min:              1        Max:          99995        Mean:             1333.79
 
Lead In: T53438.00[Default]
Default Next Question: T53448.00"""

unemp_2016 = """T54075.00    [Q7-A]                                         Survey Year: 2016
  PRIMARY VARIABLE

             INT CHECK - ANY PERIODS NOT EMPLOYED IN WORK HISTORY CALENDAR?

[total number of between job gaps] == 0

COMMENT: SKIP ACCORDING TO THE NUMBER OF GAPS

    2831           0: 0  CONDITION DOES NOT APPLY
    4081           1: 1  CONDITION APPLIES   (Go To T54106.00)
  -------
    6912
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:              1        Mean:                 .59
 
Lead In: T53991.00[Default] T52143.00[Default] T53996.00[Default]
Default Next Question: T54076.00"""

income_2016 = """56195.00    [Q13-5_TRUNC]                                  Survey Year: 2016
  PRIMARY VARIABLE

             TOTAL INCOME FROM WAGES AND SALARY IN PAST CALENDAR YEAR  (TRUNC)

[During/(Not counting any money you received from your military service...) 
During] [calendar year prior to survey year], how much did you receive from 
wages, salary, commissions, or tips from all (other) jobs, before deductions for
taxes or anything else?
topcoded item

    1832           0
      55           1 TO 999
      46        1000 TO 1999
      35        2000 TO 2999
      43        3000 TO 3999
      31        4000 TO 4999
      47        5000 TO 5999
      31        6000 TO 6999
      29        7000 TO 7999
      29        8000 TO 8999
      16        9000 TO 9999
     229       10000 TO 14999
     235       15000 TO 19999
     304       20000 TO 24999
    1515       25000 TO 49999
    2153       50000 TO 99999999: 50000+
  -------
    6630
 
Refusal(-1)          130   (Go To T56200.00)
Don't Know(-2)       149   (Go To T56204.00)
TOTAL =========>    6909   VALID SKIP(-4)       3     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:         332954        Mean:            43395.68
 
Lead In: None.
Default Next Question: T56204.00"""

fam_net_worth = """T56845.00    [TNFW_TRUNC]                                   Survey Year: 2016
  PRIMARY VARIABLE

             FAMILY NET WEALTH (TRUNC) *KEY*

ORIGINAL QUESTION NAME: *CREATED  Created Variable Total Net Family Wealth  
Total Net Wealth for Family. Created by summing all asset values and subtracting
all debts. Missing assets and debt values are imputed. Top 2% of all values are 
topcoded. See NLS79 User's Guide Asset Section for more detail.

UNIVERSE: All

NOTE: This variable includes estimates provided by the respondent, but does not 
include imputed values.

     629  -999999999 TO -6: < 0
     603           0
     115           1 TO 999
      94        1000 TO 1999
      93        2000 TO 2999
      73        3000 TO 3999
      57        4000 TO 4999
      64        5000 TO 5999
      50        6000 TO 6999
      44        7000 TO 7999
      33        8000 TO 8999
      23        9000 TO 9999
     146       10000 TO 14999
     102       15000 TO 19999
      83       20000 TO 24999
     387       25000 TO 49999
    3412       50000 TO 99999999: 50000+
  -------
    6008
 
Refusal(-1)            1
Don't Know(-2)         0
Invalid Skip(-3)     903
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:        -715175        Max:        5526252        Mean:           376179.61
 
Lead In: T56843.00[Default]
Default Next Question: T56847.00"""

ch_health_limit = """T57346.00    [RETIRE_EXP_P2_E3]                             Survey Year: 2016
  PRIMARY VARIABLE

             CHANCES RS HEALTH LIMITS WORK IN NEXT 10 YEARS

What do you think the chances are that your health will limit your work activity
during the next 10 years?

        ENTER 0 TO 100:

    1103           0
     208           1 TO 9
     926          10 TO 19
     795          20 TO 29
     362          30 TO 39
     235          40 TO 49
    1303          50 TO 59
     205          60 TO 69
     256          70 TO 79
     394          80 TO 89
     132          90 TO 99
     892         100 TO 99999999: 100+
  -------
    6811
 
Refusal(-1)            7
Don't Know(-2)        91
TOTAL =========>    6909   VALID SKIP(-4)       3     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:            100        Mean:                40.6
 
Lead In: T57345.00[Default]  T57344.00[0:0]
Default Next Question: T57347.00"""

fam_size = """57707.00    [FAMSIZE]                                      Survey Year: 2016
  PRIMARY VARIABLE

             FAMILY SIZE

COMMENT: Family Size

    1887           1
    2519           2
    1275           3
     751           4
     305           5
     104           6
      41           7
      20           8
       4           9
       6          10 TO 999: 10+
  -------
    6912
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:              1        Max:             13        Mean:                2.38
 
Lead In: T57706.00[Default]
Default Next Question: T57708.00"""

fam_net_income = """T57708.00    [TNFI_TRUNC]                                   Survey Year: 2016
  PRIMARY VARIABLE

             TOTAL NET FAMILY INCOME IN PAST CALENDAR YEAR *KEY* (TRUNCATED)

COMMENT: Total Net Family Income in previous calendar year
NOTE: FOR VARIABLE CREATION, SEE APPENDIX 2: TOTAL NET FAMILY INCOME TRUNCATED 
VALUES ARE EQUAL TO THE AVERAGE VALUE OF THE TOP 2% OF RESPONDENTS WHO ARE U.S. 
RESIDENTS.  IF THE NUMBER OF TRUNCATED VALUES EXCEEDS THAT WHICH WOULD HAVE BEEN
TRUNCATED AT THE TRADITIONAL TRUNCATION LEVEL OF 100,001 FOR THIS ITEM, VALUES 
OVER THAT TRADITIONAL TRUNCATION LEVEL ARE AVERAGED.  OVERSEAS RESPONDENTS WHOSE
DOLLAR INCOME COULD NOT BE DETERMINED ARE CODED -3.

ACTUAL DOLLARS

     210           0
      42           1 TO 999
      40        1000 TO 1999
      60        2000 TO 2999
      28        3000 TO 3999
      25        4000 TO 4999
      26        5000 TO 5999
      24        6000 TO 6999
      32        7000 TO 7999
      66        8000 TO 8999
      72        9000 TO 9999
     342       10000 TO 14999
     256       15000 TO 19999
     250       20000 TO 24999
    1173       25000 TO 49999
    3330       50000 TO 99999999: 50000+
  -------
    5976
 
Refusal(-1)          236
Don't Know(-2)       690
Invalid Skip(-3)      10
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:         922631        Mean:            91078.71
 
Lead In: T57707.00[Default]
Default Next Question: T57709.00"""

fam_pov = """T57709.00    [POVSTATUS]                                    Survey Year: 2016
  PRIMARY VARIABLE

             FAMILY POVERTY STATUS IN PREVIOUS CALENDAR YEAR

Family poverty status in past calendar year based on the income reported by the 
respondent. See YEAR_INCOME for which year is represented.
NOTE: THIS VARIABLE USES THE TOTAL NET FAMILY INCOME VARIABLE TO DETERMINE THE 
POVERTY STATUS OF THE RESPONDENT'S HOUSEHOLD.  WHEREVER POSSIBLE, THIS VARIABLE 
INCORPORATES THE FOLLOW-UP SELF-REPORTED RANGE AND UNFOLDING BRACKET QUESTIONS 
PRESENT FOR MANY INCOME AMOUNTS TO ESTIMATE A VALUE FOR NON-RESPONDERS (THOSE 
RESPONDING DON'T KNOW OR REFUSE TO ACTUAL INCOME AMOUNTS).

    4958           0: NOT IN POVERTY
    1018           1: IN POVERTY
  -------
    5976
 
Refusal(-1)            0
Don't Know(-2)         0
Invalid Skip(-3)     936
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:              1        Mean:                 .17
 
Lead In: T57708.00[Default]
Default Next Question: T57710.00"""

region = """T57710.00    [REGION]                                       Survey Year: 2016
  PRIMARY VARIABLE

             REGION OF CURRENT RESIDENCE

COMMENT: REGION OF RESIDENCE
NOTE: FOR VARIABLE CREATION SEE ATTACHMENT 104: GEOGRAPHIC REGIONS

    1006           1: NORTHEAST
    1537           2: NORTH CENTRAL
    2963           3: SOUTH
    1344           4: WEST
  -------
    6850
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    6850   VALID SKIP(-4)      62     NON-INTERVIEW(-5)    5774
 
Min:              1        Max:              4        Mean:                2.68
 
Lead In: T57709.00[Default]
Default Next Question: T57711.00"""

marital = """T57712.00    [MARSTAT-KEY]                                  Survey Year: 2016
  PRIMARY VARIABLE

             MARITAL STATUS

COMMENT: Marital Status

    1050           0: 0  NEVER MARRIED
    3692           1: 1  MARRIED
     333           2: 2  SEPARATED
    1588           3: 3  DIVORCED
     249           6: 6  WIDOWED
  -------
    6912
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    6912   VALID SKIP(-4)       0     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:              6        Mean:                1.54
 
Lead In: T57711.00[Default]
Default Next Question: T57713.00"""

urban_rural = """T57740.00    [URBAN-RURAL]                                  Survey Year: 2016
  PRIMARY VARIABLE

             IS R'S CURRENT RESIDENCE URBAN/RURAL?

COMMENT: R's in urban or rural residence?
NOTE: SEE APPENDIX 6: URBAN-RURAL AND SMSA-CENTRAL CITY VARIABLES

    1430           0: RURAL
    5332           1: URBAN
      88           2: UNKNOWN
  -------
    6850
 
Refusal(-1)            0
Don't Know(-2)         0
TOTAL =========>    6850   VALID SKIP(-4)      62     NON-INTERVIEW(-5)    5774
 
Min:              0        Max:              2        Mean:                  .8
 
Lead In: T57739.00[Default]
Default Next Question: T57741.00"""

codebook = [
    case_id,
    age,
    hgc_mother,
    hgc_father,
    sample_id,
    sample_race,
    sample_sex,
    pov_1980,
    asvab_math,
    asvab_word,
    major,
    max_degree,
    occup_2016,
    css_worker,
    firm_size,
    unemp_2016,
    income_2016,
    fam_net_worth,
    ch_health_limit,
    fam_size,
    fam_net_income,
    fam_pov,
    region,
    marital,
    urban_rural,
]


summary_major = """
| ------------------------------------------ | -------------------------------- |
| 0000 None, General Studies                 | 1300 Home Economics              |
| 0100 Agriculture and Natural Resources     | 1400 Law                         |
| 0200 Architecture and Environmental Design | 1500 Letters                     |
| 0300 Area Studies                          | 1600 Library Science             |
| 0400 Biological Sciences                   | 1700 Mathematics                 |
| 0500 Business and Management               | 1800 Military Sciences           |
| 0600 Communications                        | 1900 Physical Sciences           |
| 0700 Computer and Information Sciences     | 2000 Psychology                  |
| 0800 Education                             | 2100 Public Affairs and Services |
| 0900 Engineering                           | 2200 Social Sciences             |
| 1000 Fine and Applied Arts                 | 2300 Theology                    |
| 1100 Foreign Languages                     | 4900 Interdisciplinary Studies   |
| 1200 Health Professions                    |                                  |"""

agro = """
| 0100 Agriculture and Natural Resources   |                                            |
| ---------------------------------------- | ------------------------------------------ |
| 0101 Agriculture, General                | 0111 Agricultural Economics                |
| 0102 Agronomy                            | 0112 Agricultural Business                 |
| 0103 Soils Science                       | 0113 Food Science and Technology           |
| 0104 Animal Science                      | 0114 Forestry                              |
| 0105 Dairy Science                       | 0115 Natural Resources Management          |
| 0106 Poultry Science                     | 0116 Agriculture and Forestry Technologies |
| 0107 Fish, Game, and Wildlife Management | 0117 Range Management                      |
| 0108 Horticulture                        | 0118 Pest Control and Crop Protection      |
| 0109 Ornamental Horticulture             | 0199 Other                                 |
| 0110 Agricultural and Farm Management    |                                            |"""

envo_dsgn = """
| 0201 Environmental Design, General |                                             |
| ---------------------------------- | ------------------------------------------- |
| 0202 Architecture                  | 0205 Urban Architecture                     |
| 0203 Interior Design               | 0206 City, Community, and Regional Planning |
| 0204 Landscape Architecture        | 0299 Other                                  |"""

area_stu = """
| 0300 Area Studies                      |                                |
| -------------------------------------- | ------------------------------ |
| 0301 Asian Studies, General            | 0309 Middle Eastern Studies    |
| 0302 East Asian Studies                | 0310 European Studies, General |
| 0303 South Asian (India, etc.) Studies | 0311 Eastern European Studies  |
| 0304 Southeast Asian Studies           | 03l2 West European Studies     |
| 0305 African Studies                   | 0313 American Studies          |
| 0306 Islamic Studies                   | 0314 Pacific Area Studies      |
| 0307 Russian and Slavic Studies        | 0315 French Studies            |
| 0308 Latin American Studies            | 0399 Other                     |"""

bio_sci = """
| 0400 Biological Sciences            |                                   |
| ----------------------------------- | --------------------------------- |
| 0401 Biology, General               | 0417 Cell Biology                 |
| 0402 Botany, General                | 0418 Marine Biology               |
| 0403 Bacteriology                   | 0419 Biometrics and Biostatistics |
| 0404 Plant Pathology                | 0420 Ecology                      |
| 0405 Plant Pharmacology             | 0421 Entomology                   |
| 0406 Plant Physiology               | 0422 Genetics                     |
| 0407 Zoology, General               | 0423 Radiobiology                 |
| 0408 Pathology, Human and Animal    | 0424 Nutrition, Scientific        |
| 0409 Pharmacology, Human and Animal | 0425 Neurosciences                |
| 0410 Physiology, Human and Animal   | 0426 Toxicology                   |
| 0411 Microbiology                   | 0427 Embryology                   |
| 0412 Anatomy                        | 0428 Pre-med                      |
| 0413 Histology                      | 0429 Pre-vet                      |
| 0414 Biochemistry                   | 0430 Pre-dentistry                |
| 0415 Biophysics                     | 0431 Immunology                   |
| 0416 Molecular Biology              | 0499 Other                        |"""

busi = """
| 0500 Business and Management                                         |                                     |
| -------------------------------------------------------------------- | ----------------------------------- |
| 0501 Business and Commerce, General                                  | 0511 Real Estate                    |
| 0502 Accounting                                                      | 0512 Insurance                      |
| 0503 Business Statistics                                             | 0513 International Business         |
| 0504 Banking and Finance                                             | 0514 Secretarial Studies            |
| 0505 Investments and Securities                                      | 0515 Personnel Management           |
| 0506 Business Management and Administration                          | 0516 Labor and Industrial Relations |
| 0507 Operations Research                                             | 0517 Business Economics             |
| 0508 Hotel and Restaurant Management                                 | 0518 Organizational Behavior        |
| 0509 Marketing and Purchasing                                        | 0599 Other                          |
| 0510 Transportation and Public Utilities                             |"""

comm = """

| 0600 Communications                      |                           |
| ---------------------------------------- | ------------------------- |
| 060l Communications, General             | 0606 Mass Communications  |
| 0602 Journalism                          | 0607 Public Relations     |
| 0603 Radio - Television 0604 Advertising | 0608 Group Communications |
| 0605 Communication Media                 | 0699 Other                |"""

cs = """
| 0700 Computer and Information Sciences          |                           |
| ----------------------------------------------- | ------------------------- |
| 0701 Computer and Information Sciences, General | 0704 Computer Programming |
| 0702 Information Sciences and Systems           | 0705 Systems Analysis     |
| 0703 Data Processing                            | 0799 Other                |"""

edu = """
| 0800 Education                                                                          |                                                              |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| 0801 Education, General                                                                 | 0829 Curriculum and Instruction and Educational Media        |
| 0802 Elementary Education, General                                                      | 0830 Reading Education 0831 Art Education                    |
| 0803 Secondary Education, General                                                       | 0832 Music Education 0833 Mathematics Education              |
| 0804 Junior High School Education                                                       | 0834 Science Education 0835 Physical Education               |
| 0805 Higher Education, General                                                          | 0836 Driver and Safety Education                             |
| 0806 Junior and Community College Education                                             | 0837 Health Education                                        |
| 0807 Adult and Continuing Education                                                     | 0838 Business, Commerce, and Distributive Education          |
| 0808 Special Education, General                                                         | 0839 Industrial Arts, Vocational & Technical Education       |
| 0809 Administration of Special Education                                                | 0840 Guidance and Counseling                                 |
| 0810 Education of the Mentally Retarded                                                 | 0841 English Education                                       |
| 0811 Education of the Gifted                                                            | 0842 Foreign Languages Education                             |
| 0812 Education of the Deaf 08l3 Education of the Culturally Disadvantaged               | 0843 Social Studies Education                                |
| 0814 Education of the Visually Handicapped                                              | 0844 School Management                                       |
| 0815 Speech Correction and Communicative Disorders                                      | 0845 Speech and Drama Education                              |
| 0816 Education of the Emotionally Disturbed                                             | 0846 School Librarianship                                    |
| 0817 Remedial Education 0818 Special Learning Disabilities                              | 0847 Urban Education                                         |
| 0819 Education of the Physically Handicapped 0820 Education of the Multiple Handicapped | 0848 Bilingual Education                                     |
| 082l Social Foundations                                                                 | 0849 Multicultural Education                                 |
| 0822 Educational Psychology                                                             | 0850 Community Education                                     |
| 0823 Pre-Elementary Education                                                           | 0891 Agricultural Education                                  |
| 0824 Educational Statistics and Research                                                | 0892 Education of Exceptional Children, Not Classified Above |
| 0825 Educational Testing, Evaluation and Measurement                                    | 0893 Home Economics Education                                |
| 0826 Student Personnel                                                                  | 0894 Nursing Education                                       |
| 0827 Educational Administration                                                         | 0899 Other                                                   |
| 0828 Educational Supervision                                                            |                                                              |"""

eng = """
| 0900 Engineering                                         |                                                |
| -------------------------------------------------------- | ---------------------------------------------- |
| 0901 Engineering, General                                | 0914 Metallurgical Engineering                 |
| 0902 Aerospace, Aeronautical, Astronautical Engineer     | 0915 Materials Engineering                     |
| 0903 Agricultural Engineering                            | 0916 Ceramic Engineering                       |
| 0904 Architectural Engineering                           | 0917 Textile Engineering                       |
| 0905 Bioengineering and Biomedical Engineering           | 0918 Mining and Mineral Engineering            |
| 0906 Chemical Engineering                                | 0919 Engineering Physics                       |
| 0907 Petroleum Engineering                               | 0920 Nuclear Engineering                       |
| 0908 Civil, Construction & Transportation Engineering    | 0921 Engineering Mechanics                     |
| 0909 Electrical, Electronics, Communications Engineering | 0922 Environmental and Sanitary Engineering    |
| 0910 Mechanical Engineering                              | 0923 Naval Architecture and Marine Engineering |
| 0911 Geological Engineering 0912 Geophysical Engineering | 0924 Ocean Engineering                         |
| 0913 Industrial and Management Engineering               | 0925 Engineering Technologies                  |
|                                                          | 0999 Other                                     |"""

arts = """
| 1000 Fine and Applied Arts                   |                                                           |
| -------------------------------------------- | --------------------------------------------------------- |
| 1001 Fine Arts, General                      | 1009 Applied Design and Graphic Design and Fashion Design |
| 1002 Art 1003 Art History and Appreciation   | 1010 Cinematography                                       |
| 1004 Music (Performing, Composition, Theory) | 1011 Photography                                          |
| 1005 Music (Liberal Arts Program)            | 1012 Applied Music                                        |
| 1006 Music History and Appreciation          | 1013 Studio Arts                                          |
| 1007 Dramatic Arts                           | 1014 Commercial Art                                       |
| 1008 Dance                                   | 1015 History of Architecture                              |
|                                              | 1099 Other                                                |"""

lang = """
| 1100 Foreign Languages          |                                            |
| ------------------------------- | ------------------------------------------ |
| 1101 Foreign Languages, General | 1110 Greek, Classical                      |
| 1102 French                     | 1111 Hebrew                                |
| 1103 German                     | 1112 Arabic                                |
| 1104 Italian                    | 1113 Indian (Asiatic)                      |
| 1105 Spanish                    | 1114 Scandinavian Languages                |
| 1106 Russian                    | 1115 Slavic Languages (Other than Russian) |
| 1107 Chinese                    | 1116 African Languages (Non-Semitic)       |
| 1108 Japanese                   | 1117 Portuguese                            |
| 1109 Latin                      | 1199 Other                                 |"""

rx = """
| 1200 Health Professions                      |                                      |
| -------------------------------------------- | ------------------------------------ |
| 1201 Health Professions, General             | 1217 Biomedical Communication        |
| 1202 Hospital and Health Care Administration | 1219 Veterinary Medicine Specialties |
| 1203 Nursing                                 | 1220 Speech Pathology and Audiology  |
| 1205 Dental Specialties                      | 1221 Chiropractic                    |
| 1207 Medical Specialties                     | 1222 Clinical Social Work            |
| 1208 Occupational Therapy                    | 1223 Medical Laboratory Technologies |
| 1209 Optometry                               | 1224 Dental Technologies             |
| 1211 Pharmacy                                | 1225 Radiologic Technologies         |
| 1212 Physical Therapy                        | 1226 Rehabilitation                  |
| 1213 Dental Hygiene                          | 1227 Expressive Therapy(ies)         |
| 1214 Public Health                           | 1228 Allied Health                   |
| 1215 Medical Record Librarianship            | 1299 Other                           |
| 1216 Podiatry or Podiatric Medicine          |                                      |"""

home_eco = """
| 1300 Home Economics                         |                                                        |
| ------------------------------------------- | ------------------------------------------------------ |
| 1301 Home Economics, General                | 1305 Family Relations and Child Development            |
| 1302 Home Decoration and Home Equipment     | 1306 Foods and Nutrition                               |
| 1303 Clothing and Textiles                  | 1307 Institutional Management and Cafeteria Management |
| 1304 Consumer Economics and Home Management | 1399 Other                                             |"""

law = """
| 1400 Law          |            |
| ----------------- | ---------- |
| 1401 Law, General | 1499 Other |
| l402 Pre-law      |            |"""

letters = """
| 1500 Letters                              |                                                |
| ----------------------------------------- | ---------------------------------------------- |
| 1501 English, General                     | 1507 Creative Writing                          |
| 1502 Literature, English                  | 1508 Teaching of English as a Foreign Language |
| 1503 Comparative Literature               | 1509 Philosophy                                |
| 1504 Classics                             | 1510 Religious Studies                         |
| 1505 Linguistics                          | 1511 Literature, General (except English)      |
| 1506 Speech, Debate, and Forensic Science | 1599 Other                                     |"""

lib_sci = """
| 1600 Library Science          |            |
| ----------------------------- | ---------- |
| 1601 Library Science, General | 1699 Other |"""

math = """
| 1700 Mathematics                              |                          |
| --------------------------------------------- | ------------------------ |
| 1701 Mathematics, General                     | 1703 Applied Mathematics |
| 1702 Statistics, Mathematical and Theoretical | 1799 Other               |"""

military_sci = """
| 1800 Military Sciences             |                      |
| ---------------------------------- | -------------------- |
| 1801 Military Science (Army)       | 1891 Merchant Marine |
| 1802 Naval Science (Navy, Marines) | 1899 Other           |
| 1803 Aerospace Science (Air Force) |                      |"""

phy_sci = """
| 1900 Physical Sciences          |                                           |
| ------------------------------- | ----------------------------------------- |
| 1901 Physical Sciences, General | 1913 Atmospheric Sciences and Meteorology |
| 1902 Physics, General           | 1914 Geology                              |
| 1903 Molecular Physics          | 1915 Geochemistry                         |
| 1904 Nuclear Physics            | 1916 Geophysics and Seismology            |
| 1905 Chemistry, General         | 1917 Earth Sciences, General              |
| 1906 Inorganic Chemistry        | 1918 Paleontology                         |
| 1907 Organic Chemistry          | 1919 Oceanography                         |
| 1908 Physical Chemistry         | 1920 Metallurgy                           |
| 1909 Analytical Chemistry       | 1921 Industrial Chemistry                 |
| 1910 Pharmaceutical Chemistry   | 1991 Other Earth Sciences                 |
| 1911 Astronomy                  | 1992 Other Physical Sciences              |
| 1912 Astrophysics               |                                           |"""

psych = """
| 2000 Psychology                |                                |
| ------------------------------ | ------------------------------ |
| 2001 Psychology, General       | 2009 Developmental Psychology  |
| 2002 Experimental Psychology   | 2010 Physiological Psychology  |
| 2003 Clinical Psychology       | 2011 Behavioral Science        |
| 2004 Psychology for Counseling | 2012 Comparative Psychology    |
| 2005 Social Psychology         | 2013 Rehabilitation Counseling |
| 2006 Psychometrics             | 2014 Animal Behavior           |
| 2007 Statistics in Psychology  | 2099 Other                     |
| 2008 Industrial Psychology     |                                |"""

pub_affairs = """
| 2100 Public Affairs and Services      |                                                                           |
| ------------------------------------- | ------------------------------------------------------------------------- |
| 2101 Community Services, General      | 2105 Law Enforcement and Corrections and Criminology and Criminal Justice |
| 2102 Public Administration            | 2106 International Public Service                                         |
| 2103 Parks and Recreation Management  | 2107 Administration of Justice                                            |
| 2104 Social Work and Helping Services | 2199 Other                                                                |"""


social_sci = """
| 2200 Social Sciences                  |                                            |
| ------------------------------------- | ------------------------------------------ |
| 2201 Social Sciences, General         | 2210 International Relations               |
| 2202 Anthropology                     | 2211 Afro-American (Black Culture) Studies |
| 2203 Archaeology                      | 2212 American Indian Cultural Studies      |
| 2204 Economics                        | 2213 Mexican-American Cultural Studies     |
| 2205 History                          | 2214 Urban Studies                         |
| 2206 Geography                        | 2215 Demography                            |
| 2207 Political Science and Government | 2216 Group Studies                         |
| 2208 Sociology                        | 2299 Other                                 |
| 2209 Criminology                      |                                            |"""

theology = """
| 2300 Theology                         |                          |
| ------------------------------------- | ------------------------ |
| 2301 Theological Professions, General | 2304 Religious Education |
| 2302 Religious Music                  | 2399 Other               |
| 2303 Biblical Languages               |                          |"""

intd_st = """
| 4900 Interdisciplinary Studies         |                                     |
| -------------------------------------- | ----------------------------------- |
| 4901 General Liberal Arts and Sciences | 4999 Other                          |
| 4902 Biological and Physical Sciences  | 9994 Recreation, Outdoor Recreation |
| 4903 Humanities and Social Sciences    | 9995 Counseling, n.s.               |
| 4904 Engineering and Other Disciplines | 9996 Other                          |"""

field_dict = {
    100: agro,
    200: envo_dsgn,
    300: area_stu,
    400: bio_sci,
    500: busi,
    600: comm,
    700: cs,
    800: edu,
    900: eng,
    1000: [
        arts,
        lang,
        rx,
        home_eco,
        law,
        letters,
        lib_sci,
        math,
        military_sci,
        phy_sci,
        psych,
        pub_affairs,
        social_sci,
        theology,
        intd_st,
    ],
}
