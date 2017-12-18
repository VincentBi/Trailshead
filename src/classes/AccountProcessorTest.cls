@isTest
public class AccountProcessorTest {

    @isTest(SeeAllData=true)
    private static void testAccountProcessor(){
        List<Id> Ids = new List<Id>();
        Account[] accts = [SELECT Name FROM Account LIMIT 10];
        System.debug('Got ' + accts.size() + ' Accouts.');
        for(Account acc : accts){
            Ids.add(acc.Id);
        }
        System.debug('Got Account size ' + accts.size() + ' sObjects.');
        System.debug('Got Account Ids ' + Ids + ' .');
        
        Test.startTest();
        AccountProcessor.countContacts(Ids);
        Test.stopTest();
    }
}