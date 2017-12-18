@isTest
public class DailyLeadProcessorTest {
	public static string cronExp = '0 0 0 15 3 ? 2020';
    static testmethod void testDailyLeadProcessor(){
        List<Lead> leads = new List<Lead>();
        
        for(Integer i = 0; i<200; i++){
            Lead lead = new Lead(lastname = 'ln '+ i,
                                 company = 'CEO'
                                );
            leads.add(lead);
        }
        
        insert leads;
        
        //Map<Id, Lead> leadMap = new Map<Id, Lead>(leads);
        //List<Id> leadIds = new List<Id>(leadMap.keySet());
        
        Test.startTest();
        System.schedule('DailyLeadProcessor', cronExp, new DailyLeadProcessor());
        //List<Task> lt = [select Id from Task where WhatId = :leadIds];
        //System.assertEquals(0, lt.size(), 'Tasks exist before job has run');
        Test.stopTest();
        
        //lt = [select Id from Task where WhatId = :leadIds];
        //System.assertEquals(leadIds.size(), lt.size(), 'Tasks were created');
    }
}