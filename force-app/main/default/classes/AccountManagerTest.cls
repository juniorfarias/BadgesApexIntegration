@isTest
public with sharing class AccountManagerTest {
    @isTest static void testGetAccount() {
        Id recordId = createTestAccRecord();
        createTestCctRecord(recordId);
        RestRequest request = new RestRequest();
        request.requestURI = 
        'https://resourceful-impala-5o65df-dev-ed.my.salesforce.com/services/apexrest/Accounts/' + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();

        System.assert(thisAccount!=null);
        System.assertEquals('Test Account Manager', thisAccount.Name);

    }
    static Id createTestAccRecord() {
        Account acc = new Account(
            Name='Test Account Manager'
        );
        insert acc;
        return  acc.Id;
    }
    static void createTestCctRecord(Id accId) {
        Contact cct = new Contact(
            LastName='TestedorSilva',
            AccountId=accId
        );
        insert cct;
    }
}
