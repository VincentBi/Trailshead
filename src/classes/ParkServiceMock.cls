@isTest
global class ParkServiceMock implements WebServiceMock {

    global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {

        // start - specify the response you want to send
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
               //List<String> return_x = new List<String>();       
               //for(Integer i = 0 ; i< 10; i++){
               //    String parkName = 'Park ' + i;
               //    return_x.add(parkName);
               //}
               
        //response_x.return_x = return_x;
               response_x.return_x = new List<String>{'a','b'};
        // end
        response.put('response_x', response_x); 
    }
}