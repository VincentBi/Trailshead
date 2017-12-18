@isTest
private class ParkLocatorTest {
    @isTest static void testParkLocator(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> result = ParkLocator.country('country');
    }
}