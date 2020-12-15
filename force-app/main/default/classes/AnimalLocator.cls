public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer idAnimal){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + idAnimal);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String nameAnimal;
        if(response.getStatusCode() == 200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            nameAnimal = String.valueOf(animal.get('name'));
            System.debug(nameAnimal);
        }
        return nameAnimal;
    }
}
