public class SoqlDemo {
    public static void accountSOQL_1() {
        //SOQL query returns LIST <sObject>
        List<Account>listacc=[select id,name,Active__c from account WHERE name like '%A%'];
        System.debug('ListsAcc = ' + listAcc);
        System.debug('size of listAcc = ' + listacc.size());
         //sadece bir tane account alacaksak liste gerek yok
        Account acc = [Select id, name from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('Last created account record  ' + acc);


    }

    public static void accountSOQL_2() {
        Account acc = [Select id, name,phone , accountNumber from Account ORDER BY CreatedDate desc LIMIT 1]; 
        System.debug('Last created account record  ' + acc);

        string accountName = acc.Name;
        string accountPhone = acc.Phone;
        System.debug('account name is ' + accountName + 'Account phone is '+ accountPhone);
        System.debug('Account number is '+ acc.AccountNumber );


    }
    public static void accountSOQL_3() {
        List<Account>listAcc = [Select id, name,phone , accountNumber from Account ORDER BY CreatedDate desc];
        System.debug('All accounts ' + listAcc);

        for (Account eachAccount : listAcc) {
             string accountName = eachAccount.Name;
             string accountPhone = eachAccount.Phone;
             System.debug('account name is ' + accountName + 'Account phone is '+ accountPhone);
             System.debug('Account number is '+ eachAccount.AccountNumber );


            
        }
    }
    public static void accountSOQL_Filter (string accNameFilter) {
        List<Account> listAcc = [select name,phone from account where name = :accNameFilter];
        System.debug('filtered account are ' + listAcc);
        
    }
}
