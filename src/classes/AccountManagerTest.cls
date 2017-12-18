@isTest
public class AccountManagerTest {

    @isTest static void testGetAccount(){
        Id recordId = createTestRecord();

        RestRequest request = new RestRequest();
        request.requestUri =
            'https://11404-dev-ed.my.salesforce.com/services/apexrest/Accounts/'
            + recordId + '/contacts';
        System.debug('RecordId: ' + recordId);
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();
        System.assertEquals(recordId, thisAccount.Id, 'Not equal.');
    }
    
	// Helper method
    static Id createTestRecord() {
        // Create test record
        Account accountTest = new Account(
            Name ='Test record');
        insert accountTest;
        
        ID sId = accountTest.Id;
        
        Contact contactTest1 = new Contact(
        	LastName = 'Test1',
            AccountId = sId
        );
        
        Contact contactTest2 = new Contact(
        	LastName = 'Test2',
            AccountId = sId
        );
        
        List<Contact> contacts = new List<Contact>();
        contacts.add(contactTest1);
        contacts.add(contactTest2);
        
        insert contacts;
        return accountTest.Id;
    }         

 
    
}