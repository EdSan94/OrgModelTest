trigger LanguageCourseTrigger on Language_Course__c (before insert) {
for (Language_Course__c x : Trigger.new) {
    System.debug('lol');
}
}