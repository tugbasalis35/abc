public  class turkishLesson3 {
    //sum
    public static decimal sum(list<decimal> declist) {
        decimal toplam = 0;
        for (decimal d1 : declist) {
            //toplam = toplam + d1;
            toplam += d1;
        }
        return toplam;
    }
    //avarage
    public static decimal avarage(list<decimal> declist) {
        integer elmnSys = declist.size();
        Decimal tplm = sum(declist);
        Decimal avrg = tplm/elmnSys;
        return avrg;
    }
    //Highest
    public static decimal highest(list<decimal> declist) {
        if(!declist.isEmpty()){   
        Decimal highElement = declist.get(0);
        for (decimal d : decList) {
               if(d>highElement){
                highElement = d;
               }
        }
        return highElement;
        }
        return null;
    }
    public static decimal lowest(list<decimal> declist) {
        if(!declist.isEmpty()){   
        Decimal lowest = declist.get(0);
        for (decimal d : decList) {
               if(d>lowestElement){
                lowestElement = d;
               }
        }
        return lowestElement;
        }
        return null;
    }
}
