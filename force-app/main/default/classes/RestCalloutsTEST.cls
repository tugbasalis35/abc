@isTest
public with sharing class RestCalloutsTEST {
    @isTest
    private static void getAnimalsTest(){
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class,mock);
        HttpResponse response = RestCallouts.getAnimals();
        system.assertEquals(response.getStatus(), 'OK');
        system.assertEquals(response.getStatusCode(), 200);
    }
    
}
