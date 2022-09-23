public  class TurkishLesson2 {
    public static void numberCompaire(integer a, integer b  ) {
        if (a>b) {
            system.debug('Buyuk sayi=> ' + a);

        } else if(b>a) {
            system.debug('Buyuk sayi=> ' + b);
        }else{
            system.debug('Bu iki sayi esittir');
        }
    }
    public static void numberCompaireMath(integer a , integer b) {
        integer bigNum=Math.max(a,b);
        System.debug('Buyuk sayi ==> ' + bigNum);
        integer minNum = Math.min(a, b);
        System.debug('kucuk sayi==> ' + minNum);
    }
   /* 2. Ekmek, simit ve kek siparişlerinden birini istediğiniz adet ile beraber alan 2 parametreli bir metot yazın. size toplam ödeyeceğiniz miktarı mesajla beraber dönsün. 
Ekmek : 1$ 
Simit : 2$
Kek : 3$ */
     public static void siparis(string order, integer adet) {
        integer ucret;
        if (order =='ekmek') {
             ucret=adet*1;
             System.debug('odeyeceginiz miktar simit icin $=> ' + ucret);
        }else if (order=='simit') {
            ucret=adet*2;
            System.debug('odeyeceginiz miktar kek icin $=> ' + ucret);
        }else if (order=='kek') {
            ucret=adet*3;
            System.debug('odeyeceginiz miktar ekmek icin $=> ' + ucret);
        }else {
            System.debug('boyle bir urun bulunmamaktadir...');
        }
     }
     public static integer sum(integer n ) {
        integer toplam = 0;
        for (Integer i = 1; i <= n; i++){
            toplam +=i;
            
        }
        return toplam;
     }
     //Parametre olarak bir string ve bir integer olarak 2 parametre alan Bu stringi integer değer kadar ard arda ekleyerek döndüren bir metot yazın.
     public static string addString(string word , integer adet) {
        string addStr= '';
        for (Integer i = 1; i <= adet; i++) {
            addStr = addStr + ' ' + word;
        }
        return addStr;
     }
}
