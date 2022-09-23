public with sharing class AccountQueueableExample implements Queueable{
    List<Account> listAcc = new List<Account>();
    public AccountQueueableExample(List<Account> accs) {
        listAcc = accs;
    }

    public void execute(QueueableContext Qc){
        for (account acc : ListAcc) {
            acc.Name +='--SI';
            
        }
        update listAcc;
    }
}
