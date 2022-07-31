public  class PrimitiveDataTypeDemo {
    public void printBasicDataType () {

        string batchName ='Falcons 8';
        integer totalCandidates = 40;
        boolean isAdminComleted = true;
        
        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminComleted);

        string batchDescription =batchName + ' are the BESTEST';
        system.debug(batchDescription);

    }
     public void printBasicDataType2(){
        Decimal decValue =27.01;
        System.debug('Decimal value: '+ decValue);
        long longValue = 2147483648L;
        system.debug( 'Long value ' + longValue);

        ID id1 = '0018Z00002f0HqeQAE';
        system.debug('id is  ' + id1);
        
     }
}
