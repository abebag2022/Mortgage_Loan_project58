Create Database RMG_OLAP
Go 
Use RMG_OLAP
Go
CREATE TABLE Mortgage_Applicant(
	[Borrower FirstName] [varchar](50) NULL,
	[Borrower LastName] [varchar](50) NULL,
	[Borrower Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL,
	[Home Phone] [varchar](50) NULL,
	[Cell Phone] [varchar](50) NULL,
	[Marital Status] [varchar](50) NULL,
	[Date of Birth] [datetime] NULL,
	[Current Street Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[YearsAtThisAddress] int NULL,
	[MonthlyIncome] Money NULL,
	[Bonuses] Money NULL,
	[Commission] Money NULL,
	[OtherIncome] Money NULL,
	[Rent or Own] [varchar](50) NULL,
	[Purpose of Loan] [varchar](50) NULL,
	[Property Usage] [varchar](50) NULL,
	[LoanAmount] Money NULL,
	[Purchase Price] Money NULL,
	[Number of Units] [int] NULL,
	[Property City] [varchar](50) NULL,
	[Property State] [varchar](50) NULL,
	[Property Zip] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[Ethnicity] [varchar](50) NULL,
	[Race] [varchar](50) NULL,
	[Co-Borrower FirstName] [varchar](50) NULL,
	[Co-Borrower LasttName] [varchar](50) NULL,
	[Co-Borrower Email] [varchar](50) NULL,
	[CreditCardAuthorization] [bit] NULL,
	[Checking] Money NULL,
	[Savings] Money NULL,
	[RetirementFund] Money NULL,
	[MutualFund] Money NULL,
	[Referral] [varchar](50) NULL,
	[RealEstateAgentName] [varchar](50) NULL,
	[RealEstateAgentPhone] [varchar](50) NULL,
	[RealEstateAgentEmail] [varchar](50) NULL,
	ApplDate DATE,
    LoanDate DATE,
    [Property_ID] [varchar](50),
    [Loan_ID] [varchar](50)
);



CREATE TABLE Fact_Financials(
[SSN] [varchar](50) PRIMARY KEY NOT NULL,  
[MonthlyIncome] MONEY NULL,
[Bonuses] MONEY NULL,
[Commission] MONEY NULL,
[OtherIncome] MONEY NULL,
[Rent or Own] [varchar](50) NULL,
[Checking] MONEY NULL,
[Savings] MONEY NULL,
[RetirementFund] MONEY NULL,
[MutualFund] MONEY NULL,
[LoanAmount] MONEY NULL,
[Purchase Price] MONEY NULL
)

CREATE TABLE Dim_Borrower (
[SSN] [varchar](50) FOREIGN KEY REFERENCES Fact_Financials ([SSN]) NOT NULL,
[Borrower FirstName] [varchar](50) NULL,
[Borrower LastName] [varchar](50) NULL,
[Borrower Email] [varchar](50) NULL,
[Home Phone] [varchar](50) NULL,
[Cell Phone] [varchar](50) NULL,
[Marital Status] [varchar](50) NULL,
[Date of Birth] [datetime] NULL,
[Current Street Address] int NULL,
[City] [varchar](50) NULL,
[State] [varchar](50) NULL,
[Zip] [varchar](50) NULL,
[YearsAtThisAddress] [int] NULL,
[Sex] [varchar](50) NULL,
[Ethnicity] [varchar](50) NULL,
[Race] [varchar](50) NULL,
[Co-Borrower FirstName] [varchar](50) NULL,
[Co-Borrower LastName] [varchar](50) NULL,
[Co-Borrower SSN] [varchar](50) NULL
)



CREATE TABLE Dim_Property(
[Property_ID] [int] PRIMARY KEY NOT NULL,
[SSN] [varchar](50) FOREIGN KEY REFERENCES Fact_Financials ([SSN]) NOT NULL,
[Property Usage] [varchar](50) NULL,
[Property City] [varchar](50) NULL,
[Property State] [varchar](50) NULL,
[Property Zip] [varchar](50) NULL,
[RealEstateAgentName] [varchar](50) NULL,
[RealEstateAgentPhone] [varchar](50) NULL,
[RealEstateAgentEmail] [varchar](50) NULL

)



CREATE TABLE Dim_Loan(
[Loan_ID] [int] PRIMARY KEY NOT NULL,
[SSN] [varchar](50) FOREIGN KEY REFERENCES Fact_Financials([SSN]) NOT NULL,
[Property_ID] [int] FOREIGN KEY REFERENCES DIM_Property ([Property_ID]) NOT NULL,
[Purpose of Loan] [varchar](50) NULL,
[CreditCardAuthorization] [bit] NULL,
[Number of Units] MONEY NULL,
[Refferal] MONEY NULL,
[Co-Borrower SSN] [varchar](50) NULL
)

--drop TABLE Mortgage_Applicant
--drop table Dim_Borrower
--drop TABLE Dim_Property
--Drop TABLE Fact_Financials
--drop TABLE Dim_Loan