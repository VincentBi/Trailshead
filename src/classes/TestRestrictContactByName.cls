@isTest
public class TestRestrictContactByName {

    @isTest static void TestContactWithLNINVALIDNAME(){
        Contact con = new Contact(FirstName='Riggo', LastName='INVALIDNAME');
        
        
        Test.startTest();
        try{
            insert con;
        } catch(Exception e){
            
        }
        //Database.SaveResult result = Database.insert(con, false);
        Test.stopTest();
        
        //System.assert(!result.isSuccess());
		//System.assert(result.getErrors().size() > 0);
		//System.assertEquals('The Last Name INVALIDNAME is not allowed for DML',
                             //result.getErrors()[0].getMessage());

    }
}