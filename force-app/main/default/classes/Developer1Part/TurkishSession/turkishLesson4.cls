public  class turkishLesson4 {
     //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık
      //değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık
       //ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 
       //derece ve altındaki şehirleri ayrı liste olarak yazdırın.

   public static void termometre(Map<string,list<decimal>>MapListOfHots) {
    set<string>cityList = MapListOfHots.keySet();
    for (string city : cityList) {
        System.debug( city + 'sehirlerin haftalik sicaklik degerleri==> '+ MapListOfHots.get(city));
        
    }
    //haftalik sicaklik ortalamasini ayti bir map ile gosterelim
    Map <string,decimal> avrgOfHots= new map<string,decimal>();

    for (string city  : cityList) {
        decimal sum = 0;
        for (decimal eachHot  : MapListOfHots.get(city)) {
            sum += eachHot;
            
        }
        integer sz = MapListOfHots.get(city).size();
        decimal ort = (sum/sz).setScale(2);
        avrgOfHots.put(city, ort);
        
    }
    System.debug(avrgOfHots);
     
   }
}
