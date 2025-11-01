@isTest
public with sharing class SampleApexForDeploymentTest {
 
    @IsTest
    static void methodName(){
        
        Test.startTest();
        
        // Create a new account
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        System.Assert.areEqual(acc.Name, 'Test Account');
        // trigger validate workflow
        Test.stopTest();
        
    }
}