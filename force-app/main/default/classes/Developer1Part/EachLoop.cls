public  class EachLoop {
   public static void IteateListInteger() {
    List<integer> integerList = new list<integer>();
    integerList.add(10);
    integerList.add(15);
    integerList.add(21);
    integerList.add(15);
    integerList.add(55);
    System.debug('list of random integer = ' + integerList);
    
    for (integer eachinteger : integerList) {
        System.debug(eachinteger);
    }
   }
   public static integer add(List<integer> listInt) {
    integer returnInt = 0;
    
    for (integer eachInteger : listInt) {
        returnInt = returnInt + eachInteger;
        //0//r==0 + 10;
        //1// r = 10+15;
        //2//r = 25+11
        //3//r= 46+15
        //4//r=61+15
    }

     //r=76;
    return returnInt;
    
   }
}
