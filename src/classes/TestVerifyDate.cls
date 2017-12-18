@isTest
private class TestVerifyDate {
    @isTest static void CheckDates1(){
        Date dt = VerifyDate.CheckDates(Date.valueOf('2017-08-06'), Date.valueOf('2017-08-07'));
        System.assertEquals(Date.valueOf('2017-08-07'), dt);
    }
    
    @isTest static void CheckDates2(){
        Date dt = VerifyDate.CheckDates(Date.valueOf('2017-08-06'), Date.valueOf('2017-08-01'));
        System.assertEquals(Date.valueOf('2017-08-31'), dt);
    }
    
    @isTest static void CheckDates3(){
        Date dt = VerifyDate.CheckDates(Date.valueOf('2017-08-06'), Date.valueOf('2017-10-01'));
        System.assertEquals(Date.valueOf('2017-08-31'), dt);
    }
}