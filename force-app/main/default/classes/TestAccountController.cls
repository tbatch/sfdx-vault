@istest
public class TestAccountController {
    @isTest
    public static void testAccountController(){
        List<Account> accounts = AccountController.findAll();
        System.assertEquals(1, accounts.size());

    }

    @testsetup
    private static void setup(){
        Account a = new Account(  
            Name = 'Test Account',
            Location__Latitude__s = 34.7896895,
            Location__Longitude__s = 134.559696
        );
        insert a;
    } 
}
