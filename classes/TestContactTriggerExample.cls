@istest
public class TestContactTriggerExample {

    @istest static void testcontact(){
        Account a =new account(name='trigger test');
        insert a;
        
       list<Account> acc=[select id,(select id,name from contacts)from account where id=:a.Id];
        system.assertEquals(1, acc[0].contacts.size());
    }
}