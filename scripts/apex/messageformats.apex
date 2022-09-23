
//JSON METHOD//
JSON
{
    "Name" : "Universal Containers",
    "AnnualRevenue" : 2000000,
    "Industry" : "Biotechnology",
    "Type" : "New Customer"
}

//serialize method
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE Name = 'United Oil & Gas Corp.' LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);




//Get an opportunity record whose amount is greater than 1M
//Convert that into json and debug it
Opportunity opp = [SELECT Name, Amount, StageName, Type FROM Opportunity WHERE Amount > 1000000 LIMIT 1];
String jsonString = JSON.serialize(opp);
System.debug(jsonString);



Lead L = [SELECT Name, Company, Status, Email,Phone FROM Lead WHERE Email != NULL AND Phone !=NULL LIMIT 1];
String jsonString = JSON.serialize(L);
System.debug(jsonString); 

List<Lead> leads  = [SELECT FirstName, LastName,Company, Status, Email,Phone 
                    FROM Lead 
                    WHERE Email != NULL 
                    AND Phone !=NULL];
String jsonString = JSON.serialize(leads);
System.debug(jsonString);

List<Opportunity> opp  = [SELECT Name, Type,Amount,StageName 
                    FROM Opportunity 
                    WHERE StageName = 'Closed Won']; 
                    
String jsonString = JSON.serialize(opp);
System.debug(jsonString);

//get 2 cases (CaseNumber, Subject, Description, Contact.FirstName, Contact.LastName, Account.Name) where subject is not null
//convert them into json format

List<Case> cs = [SELECT CaseNumber, Subject,Description,Contact.FirstName, Contact.LastName, Account.Name FROM Case WHERE Subject != NULL  LIMIT 2];
String jsonString = JSON.serialize(cs);
System.debug(jsonString); 





