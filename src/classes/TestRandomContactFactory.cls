@isTest
public class TestRandomContactFactory {
    @isTest static List<Contact> generateRandomContactsTest1(){
        List<Contact> conList = RandomContactFactory.generateRandomContacts(1, 'Bi');
        return conList;
    }
}