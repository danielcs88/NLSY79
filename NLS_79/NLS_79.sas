options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLS_79.dat' lrecl=103 missover DSD DLM=' ' print;
input
  R0000100
  R0000600
  R0006500
  R0007900
  R0173600
  R0214700
  R0214800
  R0618500
  R0648301
  R0648343
  R1207800
  R2509800
  T5256900
  T5257400
  T5344300
  T5407500
  T5619500
  T5684500
  T5734600
  T5770700
  T5770800
  T5770900
  T5771000
  T5771200
  T5774000
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "ID# (1-12686) 79";
  label R0000600 = "AGE OF R 79";
  label R0006500 = "HGC BY RS MOTHER 79";
  label R0007900 = "HGC BY RS FATHER 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R0618500 = "POVERTY STATUS 81";
  label R0648301 = "ASVAB - ARITHREASON-MATHKNOW Z SCORE XRND";
  label R0648343 = "ASVAB - WORD KNOWLEDGE Z SCORE XRND";
  label R1207800 = "MAJOR FIELD STUDY @ M-RCNT COLL 84";
  label R2509800 = "HIGHEST DGR RCVD 88";
  label T5256900 = "OCCUPATION (2000 CODES) ALL JOB L1 2016";
  label T5257400 = "RS EMPLOYMENT CATEGORY ALL JOB L1 2016";
  label T5344300 = "# EMPLOYEES LOCTN RS AT JOB L1 2016";
  label T5407500 = "ANY PERIODS NOT EMPLD? 2016";
  label T5619500 = "AMT OF RS WAGES/SALARY/TIPS (PCY) 2016";
  label T5684500 = "FAMILY NET WEALTH (TRUNC) *KEY* 2016";
  label T5734600 = "CHANCES RS HLTH LIMITS WK NXT 10 YRS 2016";
  label T5770700 = "FAMILY SIZE 2016";
  label T5770800 = "TOTAL NET FAMILY INCOME 2016";
  label T5770900 = "POVERTY STATUS 2016";
  label T5771000 = "REGION OF RESIDENCE 2016";
  label T5771200 = "MARITAL STATUS 2016";
  label T5774000 = "RS RESIDENCE URBAN OR RURAL 2016";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'CASEID_1979'n
  R0000600 = 'FAM-1B_1979'n
  R0006500 = 'HGC-MOTHER_1979'n
  R0007900 = 'HGC-FATHER_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R0618500 = 'POVSTATUS_1981'n
  R0648301 = 'ASVAB-AR-MK-IRT-ZSCORE_XRND'n
  R0648343 = 'ASVAB-WORDKNOW-IRT-ZSCORE_XRND'n
  R1207800 = 'Q3-23_1_1984'n
  R2509800 = 'Q3-10B_1988'n
  T5256900 = 'OCCALL-EMP.01_2016'n
  T5257400 = 'COWALL-EMP.01_2016'n
  T5344300 = 'QES-FIRMSZ2.01_2016'n
  T5407500 = 'Q7-A_2016'n
  T5619500 = 'Q13-5_TRUNC_2016'n
  T5684500 = 'TNFW_TRUNC_2016'n
  T5734600 = 'RETIRE_EXP_P2_E3_2016'n
  T5770700 = 'FAMSIZE_2016'n
  T5770800 = 'TNFI_TRUNC_2016'n
  T5770900 = 'POVSTATUS_2016'n
  T5771000 = 'REGION_2016'n
  T5771200 = 'MARSTAT-KEY_2016'n
  T5774000 = 'URBAN-RURAL_2016'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx1f
  0-13='0 TO 13: < 14'
  14='14'
  15='15'
  16='16'
  17='17'
  18='18'
  19='19'
  20='20'
  21='21'
  22='22'
  23='23'
  24='24'
  25='25'
  26='26'
  27='27'
  28='28'
  29='29'
  30-99999='30 TO 99999: 30+'
;
value vx2f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YR COL'
  14='2ND YR COL'
  15='3RD YR COL'
  16='4TH YR COL'
  17='5TH YR COL'
  18='6TH YR COL'
  19='7TH YR COL'
  20='8TH YR COL OR MORE'
  95='UNGRADED'
;
value vx3f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YR COL'
  14='2ND YR COL'
  15='3RD YR COL'
  16='4TH YR COL'
  17='5TH YR COL'
  18='6TH YR COL'
  19='7TH YR COL'
  20='8TH YR COL OR MORE'
  95='UNGRADED'
;
value vx4f
  1='CROSS MALE WHITE'
  2='CROSS MALE WH. POOR'
  3='CROSS MALE BLACK'
  4='CROSS MALE HISPANIC'
  5='CROSS FEMALE WHITE'
  6='CROSS FEMALE WH POOR'
  7='CROSS FEMALE BLACK'
  8='CROSS FEMALE HISPANIC'
  9='SUP MALE WH POOR'
  10='SUP MALE BLACK'
  11='SUP MALE HISPANIC'
  12='SUP FEM WH POOR'
  13='SUP FEMALE BLACK'
  14='SUP FEMALE HISPANIC'
  15='MIL MALE WHITE'
  16='MIL MALE BLACK'
  17='MIL MALE HISPANIC'
  18='MIL FEMALE WHITE'
  19='MIL FEMALE BLACK'
  20='MIL FEMALE HISPANIC'
;
value vx5f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx6f
  1='MALE'
  2='FEMALE'
;
value vx7f
  0='NOT IN POVERTY'
  1='IN POVERTY'
;
value vx8f
  0='0'
  1-49='1 TO 49'
  50-99='50 TO 99'
  100-149='100 TO 149'
  150-199='150 TO 199'
  200-249='200 TO 249'
  250-299='250 TO 299'
  300-349='300 TO 349'
  350-399='350 TO 399'
  400-449='400 TO 449'
  450-499='450 TO 499'
  500-549='500 TO 549'
  550-599='550 TO 599'
  600-649='600 TO 649'
  650-699='650 TO 699'
  700-749='700 TO 749'
  750-799='750 TO 799'
  800-9999999='800 TO 9999999: 800+'
;
value vx9f
  0='0'
  1-49='1 TO 49'
  50-99='50 TO 99'
  100-149='100 TO 149'
  150-199='150 TO 199'
  200-249='200 TO 249'
  250-299='250 TO 299'
  300-349='300 TO 349'
  350-399='350 TO 399'
  400-449='400 TO 449'
  450-499='450 TO 499'
  500-549='500 TO 549'
  550-599='550 TO 599'
  600-649='600 TO 649'
  650-699='650 TO 699'
  700-749='700 TO 749'
  750-799='750 TO 799'
  800-9999999='800 TO 9999999: 800+'
;
value vx10f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-9999999='1000 TO 9999999: 1000+'
;
value vx11f
  1='HIGH SCHOOL DIPLOMA (OR EQUIVALENT)'
  2='ASSOCIATE/JUNIOR COLLEGE (AA)'
  3='BACHELOR OF ARTS DEGREE (BA)'
  4='BACHELOR OF SCIENCE (BS)'
  5='MASTER''S DEGREE (MA,MBA,MS,MSW)'
  6='DOCTORAL DEGREE (PHD)'
  7='PROFESSIONAL DEGREE (MD,LLD,DDS)'
  8='OTHER'
;
value vx12f
  10-430='10 TO 430: Executive, Administrative and Managerial Occupations'
  500-950='500 TO 950: Management Related Occupations'
  1000-1240='1000 TO 1240: Mathematical and Computer Scientists'
  1300-1560='1300 TO 1560: Engineers, Architects, Surveyers, Engineering and Related Technicians'
  1600-1760='1600 TO 1760: Physical Scientists'
  1800-1860='1800 TO 1860: Social Scientists and Related Workers'
  1900-1960='1900 TO 1960: Life, Physical and Social Science Technicians'
  2000-2060='2000 TO 2060: Counselors, Sociala and Religious Workers'
  2100-2150='2100 TO 2150: Lawyers, Judges and Legal Support Workers'
  2200-2340='2200 TO 2340: Teachers'
  2400-2550='2400 TO 2550: Education, Training and Library Workers'
  2600-2760='2600 TO 2760: Entertainers and Performers, Sports and Related Workers'
  2800-2960='2800 TO 2960: Media and Communications Workers'
  3000-3260='3000 TO 3260: Health Diagnosing and Treating Practitioners'
  3300-3650='3300 TO 3650: Health Care Technical and Support Occupations'
  3700-3950='3700 TO 3950: Protective Service Occupations'
  4000-4160='4000 TO 4160: Food Preparation and Serving Related Occupations'
  4200-4250='4200 TO 4250: Cleaning and Building Service Occupations'
  4300-4430='4300 TO 4430: Entertainment Attendants and Related Workers'
  4460='4460: Funeral Related Occupations'
  4500-4650='4500 TO 4650: Personal Care and Service Workers'
  4700-4960='4700 TO 4960: Sales and Related Workers'
  5000-5930='5000 TO 5930: Office and Administrative Support Workers'
  6000-6130='6000 TO 6130: Farming, Fishing and Forestry Occupations'
  6200-6940='6200 TO 6940: Construction Trade and Extraction Workers'
  7000-7620='7000 TO 7620: Installation, Maintenance and Repairs Workers'
  7700-7750='7700 TO 7750: Production and Operating Workers'
  7800-7850='7800 TO 7850: Food Preparation Occupations'
  7900-8960='7900 TO 8960: Setters, Operators and Tenders'
  9000-9750='9000 TO 9750: Transportation and Material Moving Workers'
  9800-9830='9800 TO 9830: Military Specific Occupations'
  9840='9840: Armed Forces'
  9950='9950: Not in Labor Force (ACS Code)'
  9990='9990: Uncodeable'
;
value vx13f
  1='1: 1  Government'
  2='2: 2  Private for profit company'
  3='3: 3  Non-profit organization (including tax exempt and charitable)'
  4='4: 4  Self employed'
  5='5: 5  Working in family business'
;
value vx14f
  0='0'
  1-49='1 TO 49'
  50-99='50 TO 99'
  100-149='100 TO 149'
  150-199='150 TO 199'
  200-249='200 TO 249'
  250-299='250 TO 299'
  300-349='300 TO 349'
  350-399='350 TO 399'
  400-449='400 TO 449'
  450-499='450 TO 499'
  500-99999999='500 TO 99999999: 500+'
;
value vx15f
  0='0: 0  CONDITION DOES NOT APPLY'
  1='1: 1  CONDITION APPLIES'
;
value vx16f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx17f
  -999999999--6='-999999999 TO -6: < 0'
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx18f
  0='0'
  1-9='1 TO 9'
  10-19='10 TO 19'
  20-29='20 TO 29'
  30-39='30 TO 39'
  40-49='40 TO 49'
  50-59='50 TO 59'
  60-69='60 TO 69'
  70-79='70 TO 79'
  80-89='80 TO 89'
  90-99='90 TO 99'
  100-99999999='100 TO 99999999: 100+'
;
value vx19f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx20f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx21f
  0='0: NOT IN POVERTY'
  1='1: IN POVERTY'
;
value vx22f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx23f
  0='0: 0  NEVER MARRIED'
  1='1: 1  MARRIED'
  2='2: 2  SEPARATED'
  3='3: 3  DIVORCED'
  6='6: 6  WIDOWED'
;
value vx24f
  0='0: RURAL'
  1='1: URBAN'
  2='2: UNKNOWN'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000600 vx1f.;
  format R0006500 vx2f.;
  format R0007900 vx3f.;
  format R0173600 vx4f.;
  format R0214700 vx5f.;
  format R0214800 vx6f.;
  format R0618500 vx7f.;
  format R0648301 vx8f.;
  format R0648343 vx9f.;
  format R1207800 vx10f.;
  format R2509800 vx11f.;
  format T5256900 vx12f.;
  format T5257400 vx13f.;
  format T5344300 vx14f.;
  format T5407500 vx15f.;
  format T5619500 vx16f.;
  format T5684500 vx17f.;
  format T5734600 vx18f.;
  format T5770700 vx19f.;
  format T5770800 vx20f.;
  format T5770900 vx21f.;
  format T5771000 vx22f.;
  format T5771200 vx23f.;
  format T5774000 vx24f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'FAM-1B_1979'n vx1f.;
  format 'HGC-MOTHER_1979'n vx2f.;
  format 'HGC-FATHER_1979'n vx3f.;
  format 'SAMPLE_ID_1979'n vx4f.;
  format 'SAMPLE_RACE_78SCRN'n vx5f.;
  format 'SAMPLE_SEX_1979'n vx6f.;
  format 'POVSTATUS_1981'n vx7f.;
  format 'ASVAB-AR-MK-IRT-ZSCORE_XRND'n vx8f.;
  format 'ASVAB-WORDKNOW-IRT-ZSCORE_XRND'n vx9f.;
  format 'Q3-23_1_1984'n vx10f.;
  format 'Q3-10B_1988'n vx11f.;
  format 'OCCALL-EMP.01_2016'n vx12f.;
  format 'COWALL-EMP.01_2016'n vx13f.;
  format 'QES-FIRMSZ2.01_2016'n vx14f.;
  format 'Q7-A_2016'n vx15f.;
  format 'Q13-5_TRUNC_2016'n vx16f.;
  format 'TNFW_TRUNC_2016'n vx17f.;
  format 'RETIRE_EXP_P2_E3_2016'n vx18f.;
  format 'FAMSIZE_2016'n vx19f.;
  format 'TNFI_TRUNC_2016'n vx20f.;
  format 'POVSTATUS_2016'n vx21f.;
  format 'REGION_2016'n vx22f.;
  format 'MARSTAT-KEY_2016'n vx23f.;
  format 'URBAN-RURAL_2016'n vx24f.;
run;
*/