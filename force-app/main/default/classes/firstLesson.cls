public  class firstLesson {
   public void fullName(){
        string fn = 'Tugba';
        string ln = 'Salis';
        string fullname = fn + '  '  +ln;
        system.debug('Classin icindeki method calisiyor');
        system.debug(fullname);
     }
    public void stringMetotlar(){
        String s = 'hello maximillian';
        String s2 = s.capitalize();
        system.debug('Capitalize metodu ' + s2);

        String myString1 = 'abcde';
        String myString2 = 'abcd';
        Boolean result = myString1.contains(myString2);
        system.debug('contains metodu ' +result);

        String s1 = '   Hello! Ali  ';
        String trimmed = s1.trim();
        system.debug('trim metodu ' + trimmed);
    }
    public void dateMethods(){
        Datetime mydateTime = Datetime.newInstance(1960, 2, 17);
        Datetime newdateTime = mydateTime.addDays(2);
        system.debug('1960-2-19 = ' +newdateTime);

        Integer gun = newdateTime.day();
        System.debug('gun 19 olmali = '+ gun);

        Integer yil = newdateTime.year();
        system.debug('yil 1960 olmali = ' + yil);

        public void betweenMethod(){
            Date startDate = Date.newInstance(2007, 1, 1);
            Date endDate = Date.newInstance(2008, 1, 30);
            Integer numberDays = startDate.daysBetween(endDate);
            system.debug('aradaki gün sayısı = '+ numberDays);
    }

    
}
