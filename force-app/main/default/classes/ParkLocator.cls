public with sharing class ParkLocator {
    public static String[] country(String country){
        ParkService.ParksImplPort park = new ParkService.ParksImplPort();
        String[] parksName = park.byCountry(country);
        return (List<String>)parksName;
    }
}
