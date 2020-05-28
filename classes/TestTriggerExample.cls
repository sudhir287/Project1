@istest 
public class TestTriggerExample {
    
    @istest static void testinsert(){
        Account a = new account(name='Test12 Class');
      insert a;
        
        Account acc=[select id,site from account where id=:a.Id limit 1];
      system.assertEquals('Hyderabad',acc.Site);
        }
     @istest static void testupdate(){
         Account a = new account(name='Test14 Class');
      insert a;
        
    Account acc=[select id,name,rating,accountnumber from account where name='Test14 Class' limit 1];
        a.accountnumber='1234';
         update a;
         account acctest=[select id,site from account where id=:a.Id limit 1];
         system.assertEquals('Hyderabad', acctest.Site);
    }

     @istest static void testdelete()
    {
        Account a = new account(name='Test15 Class',rating='hot');
      insert a;
        database.DeleteResult result= database.delete(a,false);
        system.assertEquals('Test account cannot be deleted',result.getErrors()[0].getmessage());
        
        
    }
   
}