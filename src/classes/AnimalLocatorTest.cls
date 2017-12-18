@isTest
private class AnimalLocatorTest {

    @isTest static void testAnimalLocator(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String response = AnimalLocator.getAnimalNameById(1);
        System.debug(response);
    }
}