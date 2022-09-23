public  class classOrnekTest {
    
    public static integer numberType(integer a) {
        if (a <0) {
            a = a + 100;
            System.debug('Sayi sifirdan küçük');
        } else if (a>0) {
            a = a + 50;
            System.debug('Sayi sifirdan büyük');
        } else {
            a= a + 75;
            System.debug('Sayi sifira eşit');
        }
        return a;
    }
}
