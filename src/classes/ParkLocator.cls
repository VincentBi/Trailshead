public class ParkLocator {

    public static List<String> country(String country){
         List<String> parkNames = new  List<String>();
        
        ParkService.ParksImplPort pkService = new ParkService.ParksImplPort();
        
        parkNames = pkService.byCountry(country);
        
        return parkNames;
    }
}