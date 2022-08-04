account acc = new account ();
acc.name = 'Trigger acc 3 ';
insert acc;

List<Contact> conList = new List<Contact>();
for(integer i=1 ; i<=5 ; i++){
    contact cn = new contact();
    cn.lastName = 'contact New ' + i;
    cn.AccountId = acc.id;
    conList.add(cn);
}
     insert conlist;