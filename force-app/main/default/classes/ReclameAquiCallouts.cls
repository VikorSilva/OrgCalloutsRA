public class ReclameAquiCallouts {
		
    	
    public static HttpResponse makeGetCallout(String id) {
        TicketById resposta;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:ReclameAquiURL' + Callout_Setting__mdt.getInstance('RA_Ticket').Endpoint__c+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String conteudo = response.getBody();
        if(response.getStatusCode() == 200) {
        resposta = (TicketById) JSON.deserialize(response.getBody(), TicketById.class);
        }
        System.debug(resposta);
        System.debug(conteudo);
        return response;
    }
    
    public static HttpResponse makePostCallout(String ticketId, String message) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:ReclameAquiURL/services/apexrest/Tickets/');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        request.setBody('{"ticketid":"'+ ticketId + '",' + '"message":"' + message +'"}');
        HttpResponse response  = http.send(request);
        PublicMessageResponse resposta = (PublicMessageResponse) JSON.deserialize(response.getBody(), PublicMessageResponse.class);
        System.debug(resposta);
        return response;
         
    }
    
    public static HttpResponse makePostEvaluationCallout(String id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:ReclameAquiURL/services/apexrest/TicketEvaluation');
        request.setMethod('POST');
        request.setBody('{"id":"' + id + '"}');
        request.setHeader('Content-Type', 'application/json');
        HttpResponse response = http.send(request);
        TicketEvaluation resposta = (TicketEvaluation) JSON.deserialize(response.getBody(), TicketEvaluation.class);
        System.debug(resposta);
        return response;
        
        
    }
    
    
    private HttpReponse sendGetCallout(String url){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMehtod(Callout_Setting__mdt.getInstance('MethodGET').Method__c);
        HttpResponse = http.send(request);
    }
}