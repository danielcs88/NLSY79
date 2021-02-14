
# Set working directory
# setwd()


new_data <- read.table('NLS_79.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0000600',
  'R0006500',
  'R0007900',
  'R0173600',
  'R0214700',
  'R0214800',
  'R0618500',
  'R0648301',
  'R0648343',
  'R1207800',
  'R2509800',
  'T5256900',
  'T5257400',
  'T5344300',
  'T5407500',
  'T5619500',
  'T5684500',
  'T5734600',
  'T5770700',
  'T5770800',
  'T5770900',
  'T5771000',
  'T5771200',
  'T5774000')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000600[0.0 <= data$R0000600 & data$R0000600 <= 13.0] <- 0.0
  data$R0000600[30.0 <= data$R0000600 & data$R0000600 <= 99999.0] <- 30.0
  data$R0000600 <- factor(data$R0000600, 
    levels=c(0.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0), 
    labels=c("0 TO 13: < 14",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30 TO 99999: 30+"))
  data$R0006500 <- factor(data$R0006500, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YR COL",
      "2ND YR COL",
      "3RD YR COL",
      "4TH YR COL",
      "5TH YR COL",
      "6TH YR COL",
      "7TH YR COL",
      "8TH YR COL OR MORE",
      "UNGRADED"))
  data$R0007900 <- factor(data$R0007900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YR COL",
      "2ND YR COL",
      "3RD YR COL",
      "4TH YR COL",
      "5TH YR COL",
      "6TH YR COL",
      "7TH YR COL",
      "8TH YR COL OR MORE",
      "UNGRADED"))
  data$R0173600 <- factor(data$R0173600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("CROSS MALE WHITE",
      "CROSS MALE WH. POOR",
      "CROSS MALE BLACK",
      "CROSS MALE HISPANIC",
      "CROSS FEMALE WHITE",
      "CROSS FEMALE WH POOR",
      "CROSS FEMALE BLACK",
      "CROSS FEMALE HISPANIC",
      "SUP MALE WH POOR",
      "SUP MALE BLACK",
      "SUP MALE HISPANIC",
      "SUP FEM WH POOR",
      "SUP FEMALE BLACK",
      "SUP FEMALE HISPANIC",
      "MIL MALE WHITE",
      "MIL MALE BLACK",
      "MIL MALE HISPANIC",
      "MIL FEMALE WHITE",
      "MIL FEMALE BLACK",
      "MIL FEMALE HISPANIC"))
  data$R0214700 <- factor(data$R0214700, 
    levels=c(1.0,2.0,3.0), 
    labels=c("HISPANIC",
      "BLACK",
      "NON-BLACK, NON-HISPANIC"))
  data$R0214800 <- factor(data$R0214800, 
    levels=c(1.0,2.0), 
    labels=c("MALE",
      "FEMALE"))
  data$R0618500 <- factor(data$R0618500, 
    levels=c(0.0,1.0), 
    labels=c("NOT IN POVERTY",
      "IN POVERTY"))
  data$R0648301[1.0 <= data$R0648301 & data$R0648301 <= 49.0] <- 1.0
  data$R0648301[50.0 <= data$R0648301 & data$R0648301 <= 99.0] <- 50.0
  data$R0648301[100.0 <= data$R0648301 & data$R0648301 <= 149.0] <- 100.0
  data$R0648301[150.0 <= data$R0648301 & data$R0648301 <= 199.0] <- 150.0
  data$R0648301[200.0 <= data$R0648301 & data$R0648301 <= 249.0] <- 200.0
  data$R0648301[250.0 <= data$R0648301 & data$R0648301 <= 299.0] <- 250.0
  data$R0648301[300.0 <= data$R0648301 & data$R0648301 <= 349.0] <- 300.0
  data$R0648301[350.0 <= data$R0648301 & data$R0648301 <= 399.0] <- 350.0
  data$R0648301[400.0 <= data$R0648301 & data$R0648301 <= 449.0] <- 400.0
  data$R0648301[450.0 <= data$R0648301 & data$R0648301 <= 499.0] <- 450.0
  data$R0648301[500.0 <= data$R0648301 & data$R0648301 <= 549.0] <- 500.0
  data$R0648301[550.0 <= data$R0648301 & data$R0648301 <= 599.0] <- 550.0
  data$R0648301[600.0 <= data$R0648301 & data$R0648301 <= 649.0] <- 600.0
  data$R0648301[650.0 <= data$R0648301 & data$R0648301 <= 699.0] <- 650.0
  data$R0648301[700.0 <= data$R0648301 & data$R0648301 <= 749.0] <- 700.0
  data$R0648301[750.0 <= data$R0648301 & data$R0648301 <= 799.0] <- 750.0
  data$R0648301[800.0 <= data$R0648301 & data$R0648301 <= 9999999.0] <- 800.0
  data$R0648301 <- factor(data$R0648301, 
    levels=c(0.0,1.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0,550.0,600.0,650.0,700.0,750.0,800.0), 
    labels=c("0",
      "1 TO 49",
      "50 TO 99",
      "100 TO 149",
      "150 TO 199",
      "200 TO 249",
      "250 TO 299",
      "300 TO 349",
      "350 TO 399",
      "400 TO 449",
      "450 TO 499",
      "500 TO 549",
      "550 TO 599",
      "600 TO 649",
      "650 TO 699",
      "700 TO 749",
      "750 TO 799",
      "800 TO 9999999: 800+"))
  data$R0648343[1.0 <= data$R0648343 & data$R0648343 <= 49.0] <- 1.0
  data$R0648343[50.0 <= data$R0648343 & data$R0648343 <= 99.0] <- 50.0
  data$R0648343[100.0 <= data$R0648343 & data$R0648343 <= 149.0] <- 100.0
  data$R0648343[150.0 <= data$R0648343 & data$R0648343 <= 199.0] <- 150.0
  data$R0648343[200.0 <= data$R0648343 & data$R0648343 <= 249.0] <- 200.0
  data$R0648343[250.0 <= data$R0648343 & data$R0648343 <= 299.0] <- 250.0
  data$R0648343[300.0 <= data$R0648343 & data$R0648343 <= 349.0] <- 300.0
  data$R0648343[350.0 <= data$R0648343 & data$R0648343 <= 399.0] <- 350.0
  data$R0648343[400.0 <= data$R0648343 & data$R0648343 <= 449.0] <- 400.0
  data$R0648343[450.0 <= data$R0648343 & data$R0648343 <= 499.0] <- 450.0
  data$R0648343[500.0 <= data$R0648343 & data$R0648343 <= 549.0] <- 500.0
  data$R0648343[550.0 <= data$R0648343 & data$R0648343 <= 599.0] <- 550.0
  data$R0648343[600.0 <= data$R0648343 & data$R0648343 <= 649.0] <- 600.0
  data$R0648343[650.0 <= data$R0648343 & data$R0648343 <= 699.0] <- 650.0
  data$R0648343[700.0 <= data$R0648343 & data$R0648343 <= 749.0] <- 700.0
  data$R0648343[750.0 <= data$R0648343 & data$R0648343 <= 799.0] <- 750.0
  data$R0648343[800.0 <= data$R0648343 & data$R0648343 <= 9999999.0] <- 800.0
  data$R0648343 <- factor(data$R0648343, 
    levels=c(0.0,1.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0,550.0,600.0,650.0,700.0,750.0,800.0), 
    labels=c("0",
      "1 TO 49",
      "50 TO 99",
      "100 TO 149",
      "150 TO 199",
      "200 TO 249",
      "250 TO 299",
      "300 TO 349",
      "350 TO 399",
      "400 TO 449",
      "450 TO 499",
      "500 TO 549",
      "550 TO 599",
      "600 TO 649",
      "650 TO 699",
      "700 TO 749",
      "750 TO 799",
      "800 TO 9999999: 800+"))
  data$R1207800[1.0 <= data$R1207800 & data$R1207800 <= 99.0] <- 1.0
  data$R1207800[100.0 <= data$R1207800 & data$R1207800 <= 199.0] <- 100.0
  data$R1207800[200.0 <= data$R1207800 & data$R1207800 <= 299.0] <- 200.0
  data$R1207800[300.0 <= data$R1207800 & data$R1207800 <= 399.0] <- 300.0
  data$R1207800[400.0 <= data$R1207800 & data$R1207800 <= 499.0] <- 400.0
  data$R1207800[500.0 <= data$R1207800 & data$R1207800 <= 599.0] <- 500.0
  data$R1207800[600.0 <= data$R1207800 & data$R1207800 <= 699.0] <- 600.0
  data$R1207800[700.0 <= data$R1207800 & data$R1207800 <= 799.0] <- 700.0
  data$R1207800[800.0 <= data$R1207800 & data$R1207800 <= 899.0] <- 800.0
  data$R1207800[900.0 <= data$R1207800 & data$R1207800 <= 999.0] <- 900.0
  data$R1207800[1000.0 <= data$R1207800 & data$R1207800 <= 9999999.0] <- 1000.0
  data$R1207800 <- factor(data$R1207800, 
    levels=c(0.0,1.0,100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0), 
    labels=c("0",
      "1 TO 99",
      "100 TO 199",
      "200 TO 299",
      "300 TO 399",
      "400 TO 499",
      "500 TO 599",
      "600 TO 699",
      "700 TO 799",
      "800 TO 899",
      "900 TO 999",
      "1000 TO 9999999: 1000+"))
  data$R2509800 <- factor(data$R2509800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
    labels=c("HIGH SCHOOL DIPLOMA (OR EQUIVALENT)",
      "ASSOCIATE/JUNIOR COLLEGE (AA)",
      "BACHELOR OF ARTS DEGREE (BA)",
      "BACHELOR OF SCIENCE (BS)",
      "MASTER'S DEGREE (MA,MBA,MS,MSW)",
      "DOCTORAL DEGREE (PHD)",
      "PROFESSIONAL DEGREE (MD,LLD,DDS)",
      "OTHER"))
  data$T5256900[10.0 <= data$T5256900 & data$T5256900 <= 430.0] <- 10.0
  data$T5256900[500.0 <= data$T5256900 & data$T5256900 <= 950.0] <- 500.0
  data$T5256900[1000.0 <= data$T5256900 & data$T5256900 <= 1240.0] <- 1000.0
  data$T5256900[1300.0 <= data$T5256900 & data$T5256900 <= 1560.0] <- 1300.0
  data$T5256900[1600.0 <= data$T5256900 & data$T5256900 <= 1760.0] <- 1600.0
  data$T5256900[1800.0 <= data$T5256900 & data$T5256900 <= 1860.0] <- 1800.0
  data$T5256900[1900.0 <= data$T5256900 & data$T5256900 <= 1960.0] <- 1900.0
  data$T5256900[2000.0 <= data$T5256900 & data$T5256900 <= 2060.0] <- 2000.0
  data$T5256900[2100.0 <= data$T5256900 & data$T5256900 <= 2150.0] <- 2100.0
  data$T5256900[2200.0 <= data$T5256900 & data$T5256900 <= 2340.0] <- 2200.0
  data$T5256900[2400.0 <= data$T5256900 & data$T5256900 <= 2550.0] <- 2400.0
  data$T5256900[2600.0 <= data$T5256900 & data$T5256900 <= 2760.0] <- 2600.0
  data$T5256900[2800.0 <= data$T5256900 & data$T5256900 <= 2960.0] <- 2800.0
  data$T5256900[3000.0 <= data$T5256900 & data$T5256900 <= 3260.0] <- 3000.0
  data$T5256900[3300.0 <= data$T5256900 & data$T5256900 <= 3650.0] <- 3300.0
  data$T5256900[3700.0 <= data$T5256900 & data$T5256900 <= 3950.0] <- 3700.0
  data$T5256900[4000.0 <= data$T5256900 & data$T5256900 <= 4160.0] <- 4000.0
  data$T5256900[4200.0 <= data$T5256900 & data$T5256900 <= 4250.0] <- 4200.0
  data$T5256900[4300.0 <= data$T5256900 & data$T5256900 <= 4430.0] <- 4300.0
  data$T5256900[4500.0 <= data$T5256900 & data$T5256900 <= 4650.0] <- 4500.0
  data$T5256900[4700.0 <= data$T5256900 & data$T5256900 <= 4960.0] <- 4700.0
  data$T5256900[5000.0 <= data$T5256900 & data$T5256900 <= 5930.0] <- 5000.0
  data$T5256900[6000.0 <= data$T5256900 & data$T5256900 <= 6130.0] <- 6000.0
  data$T5256900[6200.0 <= data$T5256900 & data$T5256900 <= 6940.0] <- 6200.0
  data$T5256900[7000.0 <= data$T5256900 & data$T5256900 <= 7620.0] <- 7000.0
  data$T5256900[7700.0 <= data$T5256900 & data$T5256900 <= 7750.0] <- 7700.0
  data$T5256900[7800.0 <= data$T5256900 & data$T5256900 <= 7850.0] <- 7800.0
  data$T5256900[7900.0 <= data$T5256900 & data$T5256900 <= 8960.0] <- 7900.0
  data$T5256900[9000.0 <= data$T5256900 & data$T5256900 <= 9750.0] <- 9000.0
  data$T5256900[9800.0 <= data$T5256900 & data$T5256900 <= 9830.0] <- 9800.0
  data$T5256900 <- factor(data$T5256900, 
    levels=c(10.0,500.0,1000.0,1300.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9840.0,9950.0,9990.0), 
    labels=c("10 TO 430: Executive, Administrative and Managerial Occupations",
      "500 TO 950: Management Related Occupations",
      "1000 TO 1240: Mathematical and Computer Scientists",
      "1300 TO 1560: Engineers, Architects, Surveyers, Engineering and Related Technicians",
      "1600 TO 1760: Physical Scientists",
      "1800 TO 1860: Social Scientists and Related Workers",
      "1900 TO 1960: Life, Physical and Social Science Technicians",
      "2000 TO 2060: Counselors, Sociala and Religious Workers",
      "2100 TO 2150: Lawyers, Judges and Legal Support Workers",
      "2200 TO 2340: Teachers",
      "2400 TO 2550: Education, Training and Library Workers",
      "2600 TO 2760: Entertainers and Performers, Sports and Related Workers",
      "2800 TO 2960: Media and Communications Workers",
      "3000 TO 3260: Health Diagnosing and Treating Practitioners",
      "3300 TO 3650: Health Care Technical and Support Occupations",
      "3700 TO 3950: Protective Service Occupations",
      "4000 TO 4160: Food Preparation and Serving Related Occupations",
      "4200 TO 4250: Cleaning and Building Service Occupations",
      "4300 TO 4430: Entertainment Attendants and Related Workers",
      "4460: Funeral Related Occupations",
      "4500 TO 4650: Personal Care and Service Workers",
      "4700 TO 4960: Sales and Related Workers",
      "5000 TO 5930: Office and Administrative Support Workers",
      "6000 TO 6130: Farming, Fishing and Forestry Occupations",
      "6200 TO 6940: Construction Trade and Extraction Workers",
      "7000 TO 7620: Installation, Maintenance and Repairs Workers",
      "7700 TO 7750: Production and Operating Workers",
      "7800 TO 7850: Food Preparation Occupations",
      "7900 TO 8960: Setters, Operators and Tenders",
      "9000 TO 9750: Transportation and Material Moving Workers",
      "9800 TO 9830: Military Specific Occupations",
      "9840: Armed Forces",
      "9950: Not in Labor Force (ACS Code)",
      "9990: Uncodeable"))
  data$T5257400 <- factor(data$T5257400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("1: 1  Government",
      "2: 2  Private for profit company",
      "3: 3  Non-profit organization (including tax exempt and charitable)",
      "4: 4  Self employed",
      "5: 5  Working in family business"))
  data$T5344300[1.0 <= data$T5344300 & data$T5344300 <= 49.0] <- 1.0
  data$T5344300[50.0 <= data$T5344300 & data$T5344300 <= 99.0] <- 50.0
  data$T5344300[100.0 <= data$T5344300 & data$T5344300 <= 149.0] <- 100.0
  data$T5344300[150.0 <= data$T5344300 & data$T5344300 <= 199.0] <- 150.0
  data$T5344300[200.0 <= data$T5344300 & data$T5344300 <= 249.0] <- 200.0
  data$T5344300[250.0 <= data$T5344300 & data$T5344300 <= 299.0] <- 250.0
  data$T5344300[300.0 <= data$T5344300 & data$T5344300 <= 349.0] <- 300.0
  data$T5344300[350.0 <= data$T5344300 & data$T5344300 <= 399.0] <- 350.0
  data$T5344300[400.0 <= data$T5344300 & data$T5344300 <= 449.0] <- 400.0
  data$T5344300[450.0 <= data$T5344300 & data$T5344300 <= 499.0] <- 450.0
  data$T5344300[500.0 <= data$T5344300 & data$T5344300 <= 9.9999999E7] <- 500.0
  data$T5344300 <- factor(data$T5344300, 
    levels=c(0.0,1.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0), 
    labels=c("0",
      "1 TO 49",
      "50 TO 99",
      "100 TO 149",
      "150 TO 199",
      "200 TO 249",
      "250 TO 299",
      "300 TO 349",
      "350 TO 399",
      "400 TO 449",
      "450 TO 499",
      "500 TO 99999999: 500+"))
  data$T5407500 <- factor(data$T5407500, 
    levels=c(0.0,1.0), 
    labels=c("0: 0  CONDITION DOES NOT APPLY",
      "1: 1  CONDITION APPLIES"))
  data$T5619500[1.0 <= data$T5619500 & data$T5619500 <= 999.0] <- 1.0
  data$T5619500[1000.0 <= data$T5619500 & data$T5619500 <= 1999.0] <- 1000.0
  data$T5619500[2000.0 <= data$T5619500 & data$T5619500 <= 2999.0] <- 2000.0
  data$T5619500[3000.0 <= data$T5619500 & data$T5619500 <= 3999.0] <- 3000.0
  data$T5619500[4000.0 <= data$T5619500 & data$T5619500 <= 4999.0] <- 4000.0
  data$T5619500[5000.0 <= data$T5619500 & data$T5619500 <= 5999.0] <- 5000.0
  data$T5619500[6000.0 <= data$T5619500 & data$T5619500 <= 6999.0] <- 6000.0
  data$T5619500[7000.0 <= data$T5619500 & data$T5619500 <= 7999.0] <- 7000.0
  data$T5619500[8000.0 <= data$T5619500 & data$T5619500 <= 8999.0] <- 8000.0
  data$T5619500[9000.0 <= data$T5619500 & data$T5619500 <= 9999.0] <- 9000.0
  data$T5619500[10000.0 <= data$T5619500 & data$T5619500 <= 14999.0] <- 10000.0
  data$T5619500[15000.0 <= data$T5619500 & data$T5619500 <= 19999.0] <- 15000.0
  data$T5619500[20000.0 <= data$T5619500 & data$T5619500 <= 24999.0] <- 20000.0
  data$T5619500[25000.0 <= data$T5619500 & data$T5619500 <= 49999.0] <- 25000.0
  data$T5619500[50000.0 <= data$T5619500 & data$T5619500 <= 9.9999999E7] <- 50000.0
  data$T5619500 <- factor(data$T5619500, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T5684500[-9.99999999E8 <= data$T5684500 & data$T5684500 <= -6.0] <- -9.99999999E8
  data$T5684500[1.0 <= data$T5684500 & data$T5684500 <= 999.0] <- 1.0
  data$T5684500[1000.0 <= data$T5684500 & data$T5684500 <= 1999.0] <- 1000.0
  data$T5684500[2000.0 <= data$T5684500 & data$T5684500 <= 2999.0] <- 2000.0
  data$T5684500[3000.0 <= data$T5684500 & data$T5684500 <= 3999.0] <- 3000.0
  data$T5684500[4000.0 <= data$T5684500 & data$T5684500 <= 4999.0] <- 4000.0
  data$T5684500[5000.0 <= data$T5684500 & data$T5684500 <= 5999.0] <- 5000.0
  data$T5684500[6000.0 <= data$T5684500 & data$T5684500 <= 6999.0] <- 6000.0
  data$T5684500[7000.0 <= data$T5684500 & data$T5684500 <= 7999.0] <- 7000.0
  data$T5684500[8000.0 <= data$T5684500 & data$T5684500 <= 8999.0] <- 8000.0
  data$T5684500[9000.0 <= data$T5684500 & data$T5684500 <= 9999.0] <- 9000.0
  data$T5684500[10000.0 <= data$T5684500 & data$T5684500 <= 14999.0] <- 10000.0
  data$T5684500[15000.0 <= data$T5684500 & data$T5684500 <= 19999.0] <- 15000.0
  data$T5684500[20000.0 <= data$T5684500 & data$T5684500 <= 24999.0] <- 20000.0
  data$T5684500[25000.0 <= data$T5684500 & data$T5684500 <= 49999.0] <- 25000.0
  data$T5684500[50000.0 <= data$T5684500 & data$T5684500 <= 9.9999999E7] <- 50000.0
  data$T5684500 <- factor(data$T5684500, 
    levels=c(-9.99999999E8,0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
    labels=c("-999999999 TO -6: < 0",
      "0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T5734600[1.0 <= data$T5734600 & data$T5734600 <= 9.0] <- 1.0
  data$T5734600[10.0 <= data$T5734600 & data$T5734600 <= 19.0] <- 10.0
  data$T5734600[20.0 <= data$T5734600 & data$T5734600 <= 29.0] <- 20.0
  data$T5734600[30.0 <= data$T5734600 & data$T5734600 <= 39.0] <- 30.0
  data$T5734600[40.0 <= data$T5734600 & data$T5734600 <= 49.0] <- 40.0
  data$T5734600[50.0 <= data$T5734600 & data$T5734600 <= 59.0] <- 50.0
  data$T5734600[60.0 <= data$T5734600 & data$T5734600 <= 69.0] <- 60.0
  data$T5734600[70.0 <= data$T5734600 & data$T5734600 <= 79.0] <- 70.0
  data$T5734600[80.0 <= data$T5734600 & data$T5734600 <= 89.0] <- 80.0
  data$T5734600[90.0 <= data$T5734600 & data$T5734600 <= 99.0] <- 90.0
  data$T5734600[100.0 <= data$T5734600 & data$T5734600 <= 9.9999999E7] <- 100.0
  data$T5734600 <- factor(data$T5734600, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T5770700[10.0 <= data$T5770700 & data$T5770700 <= 999.0] <- 10.0
  data$T5770700 <- factor(data$T5770700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10 TO 999: 10+"))
  data$T5770800[1.0 <= data$T5770800 & data$T5770800 <= 999.0] <- 1.0
  data$T5770800[1000.0 <= data$T5770800 & data$T5770800 <= 1999.0] <- 1000.0
  data$T5770800[2000.0 <= data$T5770800 & data$T5770800 <= 2999.0] <- 2000.0
  data$T5770800[3000.0 <= data$T5770800 & data$T5770800 <= 3999.0] <- 3000.0
  data$T5770800[4000.0 <= data$T5770800 & data$T5770800 <= 4999.0] <- 4000.0
  data$T5770800[5000.0 <= data$T5770800 & data$T5770800 <= 5999.0] <- 5000.0
  data$T5770800[6000.0 <= data$T5770800 & data$T5770800 <= 6999.0] <- 6000.0
  data$T5770800[7000.0 <= data$T5770800 & data$T5770800 <= 7999.0] <- 7000.0
  data$T5770800[8000.0 <= data$T5770800 & data$T5770800 <= 8999.0] <- 8000.0
  data$T5770800[9000.0 <= data$T5770800 & data$T5770800 <= 9999.0] <- 9000.0
  data$T5770800[10000.0 <= data$T5770800 & data$T5770800 <= 14999.0] <- 10000.0
  data$T5770800[15000.0 <= data$T5770800 & data$T5770800 <= 19999.0] <- 15000.0
  data$T5770800[20000.0 <= data$T5770800 & data$T5770800 <= 24999.0] <- 20000.0
  data$T5770800[25000.0 <= data$T5770800 & data$T5770800 <= 49999.0] <- 25000.0
  data$T5770800[50000.0 <= data$T5770800 & data$T5770800 <= 9.9999999E7] <- 50000.0
  data$T5770800 <- factor(data$T5770800, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T5770900 <- factor(data$T5770900, 
    levels=c(0.0,1.0), 
    labels=c("0: NOT IN POVERTY",
      "1: IN POVERTY"))
  data$T5771000 <- factor(data$T5771000, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("1: NORTHEAST",
      "2: NORTH CENTRAL",
      "3: SOUTH",
      "4: WEST"))
  data$T5771200 <- factor(data$T5771200, 
    levels=c(0.0,1.0,2.0,3.0,6.0), 
    labels=c("0: 0  NEVER MARRIED",
      "1: 1  MARRIED",
      "2: 2  SEPARATED",
      "3: 3  DIVORCED",
      "6: 6  WIDOWED"))
  data$T5774000 <- factor(data$T5774000, 
    levels=c(0.0,1.0,2.0), 
    labels=c("0: RURAL",
      "1: URBAN",
      "2: UNKNOWN"))
  return(data)
}

varlabels <- c("ID# (1-12686) 79",
  "AGE OF R 79",
  "HGC BY RS MOTHER 79",
  "HGC BY RS FATHER 79",
  "SAMPLE ID  79 INT",
  "RACL/ETHNIC COHORT /SCRNR 79",
  "SEX OF R 79",
  "POVERTY STATUS 81",
  "ASVAB - ARITHREASON-MATHKNOW Z SCORE XRND",
  "ASVAB - WORD KNOWLEDGE Z SCORE XRND",
  "MAJOR FIELD STUDY @ M-RCNT COLL 84",
  "HIGHEST DGR RCVD 88",
  "OCCUPATION (2000 CODES) ALL JOB L1 2016",
  "RS EMPLOYMENT CATEGORY ALL JOB L1 2016",
  "# EMPLOYEES LOCTN RS AT JOB L1 2016",
  "ANY PERIODS NOT EMPLD? 2016",
  "AMT OF RS WAGES/SALARY/TIPS (PCY) 2016",
  "FAMILY NET WEALTH (TRUNC) *KEY* 2016",
  "CHANCES RS HLTH LIMITS WK NXT 10 YRS 2016",
  "FAMILY SIZE 2016",
  "TOTAL NET FAMILY INCOME 2016",
  "POVERTY STATUS 2016",
  "REGION OF RESIDENCE 2016",
  "MARITAL STATUS 2016",
  "RS RESIDENCE URBAN OR RURAL 2016"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("CASEID_1979",
    "FAM-1B_1979",
    "HGC-MOTHER_1979",
    "HGC-FATHER_1979",
    "SAMPLE_ID_1979",
    "SAMPLE_RACE_78SCRN",
    "SAMPLE_SEX_1979",
    "POVSTATUS_1981",
    "ASVAB-AR-MK-IRT-ZSCORE_XRND",
    "ASVAB-WORDKNOW-IRT-ZSCORE_XRND",
    "Q3-23_1_1984",
    "Q3-10B_1988",
    "OCCALL-EMP.01_2016",
    "COWALL-EMP.01_2016",
    "QES-FIRMSZ2.01_2016",
    "Q7-A_2016",
    "Q13-5_TRUNC_2016",
    "TNFW_TRUNC_2016",
    "RETIRE_EXP_P2_E3_2016",
    "FAMSIZE_2016",
    "TNFI_TRUNC_2016",
    "POVSTATUS_2016",
    "REGION_2016",
    "MARSTAT-KEY_2016",
    "URBAN-RURAL_2016")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

