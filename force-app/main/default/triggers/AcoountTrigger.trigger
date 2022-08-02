trigger AcoountTrigger on Account (before insert,after insert) {
    if(trigger.isBefore)
    System.debug('before insert trigger');
    if(trigger.isAfter)
    System.debug('after inser tiregger');
}