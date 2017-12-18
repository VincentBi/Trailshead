@isTest
public class AddPrimaryContactTest {
    
    @testSetup
    static void Setup(){
        List<Account> accounts = new List<Account>();
        for(Integer i = 0; i< 50; i++){
            Account account = new Account(Name='Account '+i,
                                          BillingState = 'NY'
                                         );
            accounts.add(account);
        }
        
        for(Integer j=50; j<100; j++){
            Account account = new Account(Name='Account '+j,
                                          BillingState = 'CA'
                                         );
            accounts.add(account);
        }
        
        insert accounts;
    }
    
    static testmethod void testAddPrimaryContact(){
        Contact contact = new Contact(LastName = 'BI');
        String state = 'CA';
        AddPrimaryContact addPC = new AddPrimaryContact(contact, state);
        Test.startTest();
        System.enqueueJob(addPC);
        Test.stopTest();
        
    }

}