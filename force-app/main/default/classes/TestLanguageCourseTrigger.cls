@isTest
private class TestLanguageCourseTrigger {
     
    public static testmethod void myTessst() {
        
        Language_Course_Designer__c f = new Language_Course_Designer__c();
        f.Name = 'Javier Santiago';
        insert f;
        
        Language_Course_Instructor__c x = new Language_Course_Instructor__c();
        x.name = 'Ed Santiago';
        insert x;
        
        Test.startTest();
        Language_Course__c a = new Language_Course__c();
        a.name = 'My custom name';
        a.Course_Instructor__c = x.id;
        a.Language_Course_Designer__c = f.id;
        
        insert a;
       
        Test.stopTest();
         system.assertEquals('My custom name', a.name, 'it works');
    }
    
    
}