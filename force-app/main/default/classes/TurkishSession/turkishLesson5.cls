public  class turkishLesson5 {
    public static void creatAccount(string nm){
        // name parametre olarak alan o name ile Account create eden bir metot yazın? 
        account acc = new account();
        acc.Name = nm;
        insert acc;
         //*. aynı metot o Accounta bağlı 5 tane de contact create etsin first name acoountun ismi olsun last name 'Contact' olsun ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.
         list<contact> conlist = new list<contact>(); 
         for (Integer i = 1; i <=5 ; i++) {
            contact cn = new contact();
            cn.FirstName = acc.name;
            cn.LastName = 'contact' + i;
            //asagidaki satirda contact i account a bagliyoruz
            cn.AccountId = acc.Id;
            conList.add(cn);
         }
         insert conList;
    }

}
