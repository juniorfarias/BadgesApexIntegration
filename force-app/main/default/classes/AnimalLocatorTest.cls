@isTest
public with sharing class AnimalLocatorTest {
    @isTest static void testGetAnimalLocator(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String nomeAnimal = AnimalLocator.getAnimalNameById(777);
        System.assertEquals('dog', nomeAnimal);
    }
}