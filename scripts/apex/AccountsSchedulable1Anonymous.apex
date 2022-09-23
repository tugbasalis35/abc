AccountsSchedulable1 as = new AccountsSchedulable1();
string cronExp = '0 0 11 * * ?';
ID jobId = system.schedule('accBatch everyday', cronExp, as);
system.debug(jobId);