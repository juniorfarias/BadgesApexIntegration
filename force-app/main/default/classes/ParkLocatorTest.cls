@isTest
private with sharing class ParkLocatorTest {
    @isTest static void testCallout(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'India';
        String[] result = ParkLocator.country(country);
        List<String> expectedvalue = new List<String>{'Park1','Park2','Park3'};
        System.assertEquals(expectedvalue, result);
    }
    
}
