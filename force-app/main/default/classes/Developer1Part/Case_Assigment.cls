public  class Case_Assigment {
   public static void CaseInsert() {
    Case caseinst = new case ();
    caseinst.Origin = 'Web' ;
    caseinst.Status = 'New';
    caseinst.Subject = 'Testcase';

    insert caseinst;
    System.debug('New Recort insert = ' + caseinst);
   }
   public static void UpdateCase() {
        case caseinst = [select id,subject from case where subject like '%testcase%'];
        caseinst.Subject = 'Testing case 1';
        update caseinst;
        System.debug('update case record== ' + caseinst);
   }
   public static void DeleteCase() {
    case caseinst = [select id,subject from case where subject like '%Testing case 1%'];

    delete caseinst;
    System.debug('Delete case record== ' + caseinst);
}
}
