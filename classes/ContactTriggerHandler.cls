public class ContactTriggerHandler{

public static void NewContact(list<account> acclist){
list <contact> con= new list<contact>();

for (Account a:acclist)
{
contact c= new contact();
c.accountid=a.id;
c.lastname='Test account';
con.add(c);
}

insert con;
}
}