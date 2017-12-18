@isTest
public class LeadProcessorTest {
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        // insert 10 accounts
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead(lastName='Lead '+i, Company='CEO'+i));
        }
        insert leads;
    }

    static testmethod void test() {        
        Test.startTest();
        LeadProcessor leadPro = new LeadProcessor();
        Id batchId = Database.executeBatch(leadPro);
        Test.stopTest();

        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from lead]);
    }
    
    
}