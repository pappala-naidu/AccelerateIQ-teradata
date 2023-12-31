CREATE SET TABLE DimAccount
     (
      AccountKey INTEGER NOT NULL,
      ParentAccountKey INTEGER,
      AccountCodeAlternateKey INTEGER,
      ParentAccountCodeAlternateKey INTEGER,
      AccountDescription VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AccountType VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      "Operator" VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      CustomMembers VARCHAR(300) CHARACTER SET LATIN NOT CASESPECIFIC,
      ValueType VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      CustomMemberOptions VARCHAR(200) CHARACTER SET LATIN NOT CASESPECIFIC,)
