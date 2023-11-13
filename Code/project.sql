select * from nyc_demographics;

# Finding the total number of participants in each borough
SELECT BoroughName, SUM(`Female Count` + `Male Count` + `Gender Nonconforming Count`) AS TotalParticipants
FROM nyc_demographics
GROUP BY BoroughName;

# Filtering data for a Brooklyn borough and Adult Literacy - ABE/HSE (Discretionary)
SELECT *
FROM nyc_demographics
WHERE BoroughName = 'Brooklyn' AND ProgramTypeName = 'Adult Literacy - ABE/HSE (Discretionary)';

# Calculating the average percentage of females in each program type
SELECT ProgramTypeName, AVG(`Female Percentage`) AS AvgFemalePercentage
FROM nyc_demographics
GROUP BY ProgramTypeName;

# Finding the borough with the highest total count of participants with Hispanic or Latinx ethnicity
SELECT BoroughName, SUM(`Hispanic or Latinx) Count`) AS TotalHispanicLatinx
FROM nyc_demographics
GROUP BY BoroughName
ORDER BY TotalHispanicLatinx DESC
LIMIT 1;

# Finding borough with the highest Asian percentage.
SELECT
    BoroughName,
    MAX(`Asian Percentage`) AS MaxAsianPercentage
FROM nyc_demographics
GROUP BY BoroughName
ORDER BY MaxAsianPercentage DESC
LIMIT 1;






















