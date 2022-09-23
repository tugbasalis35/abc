global  class AccountsSchedulable1 implements Schedulable {
    global void execute(SchedulableContext sc){
        BatchApexExampleTurkish bax = new BatchApexExampleTurkish();
        Integer numberOfRecords = 10;
        ID batchId = database.executeBatch(bax,numberOfRecords);
        System.debug(batchId);
    }
    
}
