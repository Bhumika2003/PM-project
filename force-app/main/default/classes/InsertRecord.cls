public class InsertRecord {
    public static void newrecord(){
        Account obj = New Account();
        obj.Name = 'Created1';
        obj.Phone = '990999';
        Insert obj;
        System.debug('Id'+obj.Id);
        
        
        Account obj1 = New Account();
        obj1.Name = 'Created2';
        obj1.Phone = '990999';
        Insert obj1;
        System.debug('Id'+obj1.Id);
        
        
        Account obj2 = New Account();
        obj2.Name = 'Created3';
        obj2.Phone = '990999';
        Insert obj2;
        System.debug('Id'+obj2.Id);
        
        
        Account obj3 = New Account();
        obj3.Name = 'Created4';
        obj3.Phone = '9909879';
        Insert obj3;
        System.debug('Id'+obj3.Id);
        
        
        Account obj4 = New Account();
        obj4.Name = 'Created5';
        obj4.Phone = '9907899';
        Insert obj4;
        System.debug('Id'+obj4.Id);
        
        
        
        
        Contact con1=New Contact();
        Con1.FirstName = 'Raj';
        Con1.LastName= 'Sharma';
        Con1.AccountId=obj.id;
        Insert Con1;
        
        
         Contact con2=New Contact();
        Con2.FirstName = 'Rishabh';
        Con2.LastName= 'Shah';
        Con2.AccountId=obj.id;
        Insert Con2;
        
        
        Contact con3=New Contact();
        Con3.FirstName = 'Ram';
        Con3.LastName= 'Sharma';
        Con3.AccountId=obj1.id;
        Insert Con3;
        
        
         Contact con4=New Contact();
        Con4.FirstName = 'Manish';
        Con4.LastName= 'Rai';
        Con4.AccountId=obj1.id;
        Insert Con4;
        
        
        
        
        Contact con5=New Contact();
        Con5.FirstName = 'Tanu';
        Con5.LastName= 'Rajput';
        Con5.AccountId=obj2.id;
        Insert Con5;
        
         Contact con6=New Contact();
        Con1.FirstName = 'Raj';
        Con1.LastName= 'Sharma';
        Con1.AccountId=obj2.id;
        Insert Con6;
        
        
        
         Contact con7=New Contact();
        Con7.FirstName = 'Rishima';
        Con7.LastName= 'Rai';
        Con7.AccountId=obj3.id;
        Insert Con7;
        
         Contact con8=New Contact();
        Con8.FirstName = 'Raj';
        Con8.LastName= 'Sharma';
        Con8.AccountId=obj3.id;
        Insert Con8;
        
         Contact con9=New Contact();
        Con9.FirstName = 'Rishima';
        Con9.LastName= 'Rai';
        Con9.AccountId=obj4.id;
        Insert Con9;
        
        
        Contact con10=New Contact();
        Con10.FirstName = 'Mahi';
        Con10.LastName= 'Verma';
        Con10.AccountId=obj4.id;
        Insert Con10;
        
        
        
        
    }

}