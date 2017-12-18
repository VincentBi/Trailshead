global class HandleWhims implements Messaging.InboundEmailHandler { 
  global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email, 
  Messaging.InboundEnvelope env) { 
    Messaging.InboundEmailResult result= new Messaging.InboundEmailResult(); 
    System.debug('from email address:' + email.fromAddress);
    System.debug('email body:' + email.plainTextBody);
    System.debug('email subject:' + email.subject);  
    return result;
  }
}