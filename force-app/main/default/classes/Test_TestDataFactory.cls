@isTest
private with sharing class Test_TestDataFactory {
    @isTest
    static void initDataTest() {
        Test.startTest();
        TestDataFactory.initData(5,10);
        Test.stopTest();
        Integer accounts = [SELECT count() FROM Account];
        Integer contacts = [SELECT count() FROM Contact];
        system.assertEquals(5, accounts);
        system.assertEquals(50, contacts);
    }
}