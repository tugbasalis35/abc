public class DmlDemo3 {
    public static void dmlMultipleRecordUpdate_right() {
        //add all the accounts which we want to update in this list
        list<account> updateAccounts = new list<account>();
        //fetch all account

        List<account> listAccount = [select name from Account];
        for (account eachAccount : listAccount) {
            eachAccount.Name +='via B.0';
            updateAccounts.add(eachAccount);
        }
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
        }
        }
    
}
