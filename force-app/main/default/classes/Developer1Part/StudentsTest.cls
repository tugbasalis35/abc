@isTest
public with sharing class StudentsTest {
  @isTest  
   static void testForTugba() {
    Students t = new Students();
    t.firstName = 'Tugba';
    t.lastName = 'Salis';
    t.major = 'Teacher';
    t.generateReport();
  }
}
