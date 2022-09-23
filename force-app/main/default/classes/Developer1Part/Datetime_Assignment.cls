public  class Datetime_Assignment {
    public void diffofDate(){

        date varTomorrowDate = Date.newInstance(2022, 07, 14);
        system.debug('tomorrow\'s date is ' + varTomorrowDate); 

        Date varTodayDate = Date.newInstance(2022, 07, 13);
        system.debug('Today\'s date is  ' + varTodayDate);

        Integer numberDaysDifference = varTodayDate.daysBetween(varTomorrowDate);
        system.debug('The difference is just ' + numberDaysDifference + 'day.');
        
    }
    public void Timecheck(){
        date varTomorrowDate = Date.newInstance(2022, 07, 14);
        Time newTime = Time.newInstance(7, 0, 0, 0);
        DateTime varTomorrowDateTime = Datetime.newInstance(varTomorrowDate,newTime);
         system.debug('New date and Time is ' + varTomorrowDateTime);

         Datetime var10DaysDatetime =Datetime.newInstanceGmt(2022, 07, 13);
         Datetime newDatetime =var10DaysDatetime.addDays(10);
         system.debug('After add 10 days my new date is ' + newDatetime);

         Long varDatetimeLong = 12339874361L;
         Datetime prnt = Datetime.newInstance(varDatetimeLong);
         system.debug('This is varDatetimeLong ' + prnt);
        

         Datetime var7DaysDatetime =Datetime.newInstance(2022, 07, 13);
         Datetime newDatetime2 =var7DaysDatetime.addDays(7);
         system.debug('After add 7 days my new date is ' + newDatetime2);








    }
}
