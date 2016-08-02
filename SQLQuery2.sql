Create Table UserCredential
(

 UserID  uniqueidentifier not null, 
 Pwd varchar(500),
 CreatedBy uniqueidentifier not null,
 CreatedDate DateTime

)

ALTER TABLE UserCredential   ADD CONSTRAINT PK_UserID 
PRIMARY KEY CLUSTERED (UserID);

Create Table PrintDesign
(

 PrintDesignID  uniqueidentifier not null,
 PrintDesignName varchar(500), 
 PrintDesignTypeID varchar(500)

)
ALTER TABLE PrintDesign   ADD CONSTRAINT PK_PrintDesignID
PRIMARY KEY CLUSTERED (PrintDesignID);

Create Table PrintDesignType
(

  PrintTypeID  uniqueidentifier not null,
  PrintTypeName varchar(500), 
  PrintTypeNameDescription varchar(500)

)

ALTER TABLE PrintDesignType   ADD CONSTRAINT PK_PrintTypeID
PRIMARY KEY CLUSTERED (PrintTypeID);

Create Table TOrder
(

  TOrderID  uniqueidentifier not null,
  TorderName varchar(500), 
  TPhoneNumber varchar(500),
  TAddress varchar(500),
  CreatedBy uniqueidentifier not null,
 CreatedDate DateTime

)


ALTER TABLE TOrder   ADD CONSTRAINT PK_TOrderID
PRIMARY KEY CLUSTERED (TOrderID);



Create Table TOrderDetail
(

  TOrderDetailID  uniqueidentifier not null,
  TOrderId uniqueidentifier,     
  CreatedBy uniqueidentifier not null,
  CreatedDate DateTime

)



Create Table TShirtType
(
TShirtTypeID  uniqueidentifier not null, 
TShirtType varchar(500),
TShirtTypeDescription varchar(100)

)



ALTER TABLE TShirtType   ADD CONSTRAINT PK_TShirtType 
PRIMARY KEY CLUSTERED (TShirtTypeID);




DRop Table TShirt 
Create Table TShirt
(

TShirt_id  uniqueidentifier not null, 
TShirt_desc varchar(500),
TSize varchar(100),
TColor varchar(100),
TShirtTypeID  uniqueidentifier not null ,
)

ALTER TABLE TShirt   ADD CONSTRAINT PK_TShirt_id 
PRIMARY KEY CLUSTERED (TShirt_id);

ALTER TABLE  
ADD FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id)

