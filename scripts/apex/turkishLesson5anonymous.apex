turkishLesson5.creatAccount('Apex Account ');
turkishLesson5.creatAccount('Miss Tugba');

//*son oluşturduğumuz 5 contactı getirecek bir sorgu yazın. Account name leri ile beraber getirsin.
list<contract> conList=[select name, id, lastName  account.name from contact limit 5];
system.debug(conList);

