public class AnimalLocator {
	public class AnimalResult {
		public Animal animal;
	}

	public class Animal {
		public Integer id;
		public String name;
		public String eats;
		public String says;
	}
    
    public static String getAnimalNameById(Integer animalId){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        HttpResponse response = http.send(request);
        String strResp = 'chicken';
        if(response.getStatusCode() == 200){
            AnimalResult result = (AnimalResult) JSON.deserialize(response.getBody(), AnimalResult.class);
             System.debug('Result: ' + result);
            //Object animals = result.get('animal');
            System.debug('animals name: ' + result.animal.name);
            strResp = result.animal.name;
        }
        
        return strResp;
    }
}