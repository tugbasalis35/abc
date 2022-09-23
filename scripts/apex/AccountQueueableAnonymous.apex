List<Account> accounts = [select id,name from account];
AccountQueueableExample aq = new AccountQueueableExample(accounts);
ID jobId = system.enqueueJob(aq);
System.debug('job ID is .....' + jobId );