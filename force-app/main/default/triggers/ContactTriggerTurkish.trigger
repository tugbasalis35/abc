trigger ContactTriggerTurkish on Contact (before insert,after insert, before update, after update) {
    
    if(trigger.isAfter){ 
    System.debug('Contact Trigger tetiklendi');
    System.debug('trigger New==> ' + trigger.new);
    System.debug('islem yapilan record sayisi==> ' + trigger.new.size() );        
      for (contact c : trigger.new) {
          System.debug(c.LastName);
      }
    }
}