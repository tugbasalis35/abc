AccountsSchedulable accSchedule = new AccountsSchedulable();
string cron = '0 0 13 * * ?';
id jobId = system.schedule('we', cron, accSchedule);