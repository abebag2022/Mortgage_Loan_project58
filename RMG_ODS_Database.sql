Create Database RMG_ODS
Go 
Use RMG_ODS
Go
CREATE TABLE [dbo].[Mortgage_Applicant](
	[Borrower FirstName] [varchar](50) NULL,
	[Borrower LastName] [varchar](50) NULL,
	[Borrower Email] [varchar](50) NULL,
	[SSN] [varchar](9) NULL,
	[Home Phone] [varchar](50) NULL,
	[Cell Phone] [varchar](50) NULL,
	[Marital Status] [varchar](50) NULL,
	[Date of Birth] [datetime] NULL,
	[Current Street Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[YearsAtThisAddress] [varchar](50) NULL,
	[MonthlyIncome] [varchar](50) NULL,
	[Bonuses] [varchar](50) NULL,
	[Commission] [varchar](50) NULL,
	[OtherIncome] [varchar](50) NULL,
	[Rent or Own] [varchar](50) NULL,
	[Purpose of Loan] [varchar](50) NULL,
	[Property Usage] [varchar](50) NULL,
	[LoanAmount] [int] NULL,
	[Purchase Price] [int] NULL,
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
	[Checking] [int] NULL,
	[Savings] [int] NULL,
	[RetirementFund] [int] NULL,
	[MutualFund] [int] NULL,
	[Referral] [varchar](50) NULL,
	[RealEstateAgentName] [varchar](50) NULL,
	[RealEstateAgentPhone] [varchar](50) NULL,
	[RealEstateAgentEmail] [varchar](50) NULL,
	ApplDate DATE,
	LoanDate DATE,
	[Property_ID] [varchar](50),
	[Loan_ID] [varchar](50)
);