//listenin elemanlarini nasil yazdiririz??
//bir string elemanini metod kullanmadan yapalim?
//aranan isim listede yoksa 'Aradiginiz isim listede bulanmamaktadir..'
//aranan isim listede varsa '....ism listede bulunmaktadir...'
//aranan isim birden fazla ise kac defa oldugunu gostersin.

List<String> isimList = new list<string>{'Ayse' , 'Tunc' , 'Bilge' , 'Ayse','Deniz','Ayse','Bora','Bilge','Ayse'};
string check = 'Ayse';
integer counter = 0;
//string msg = 'Bu isim listemisde bulunmamaktadir..';
for(string eachName : isimList){
    if (eachName ==check){
        counter++;
        //msg='Aradigin isim listede bulunmaktadir..';
    }

}
//system.debug(msg);
system.debug(check  + ' ismi listemizde  ' + counter + ' tane bulunmaktadir. ');

List<Decimal> list1 = new list<Decimal>();
list1.add(15.22);
list1.add(8.12);
list1.add(28.34);
list1.add(68.11);
list1.add(44.44);
system.debug('Listenin elemanlarinin toplami = ' + turkishLesson3.sum(list1));
system.debug('Listenin aritmatik ortalamasi = ' + turkishLesson3.avarage(list1));
system.debug('Listenin en buyuk sayisi = ' + turkishLesson3.highest(list1));
system.debug('Listenin en buyuk sayisi = ' + turkishLesson3.lowest(list1));


