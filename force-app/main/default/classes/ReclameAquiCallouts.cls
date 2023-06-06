public class ReclameAquiCallouts {
		
    	
    public static HttpResponse getTicketById(String id) {
        TicketById content;
        String url = makeUrlRA('RA_Ticket');
        HttpResponse response = sendGetCallout(url + id);

        if(response.getStatusCode() == 200) {
            content = (TicketById) JSON.deserialize(response.getBody(), TicketById.class);
        }
        return response;
    }
    
    public static HttpResponse sendPublicMessage(String ticketId, String message) {
        PublicMessageResponse content;
        String url = makeUrlRA('RA_Ticket');
        String body = '{"ticketid":"'+ ticketId + '",' + '"message":"' + message +'"}';
        HttpResponse response  = sendPostCallout(url, body);

        if(response.getStatusCode() == 200) {
        content = (PublicMessageResponse) JSON.deserialize(response.getBody(), PublicMessageResponse.class);
        }
        return response;
    }
    
    public static HttpResponse sendEvaluationTicket(String id) {
        TicketEvaluation content;
        String url = makeUrlRA('RA_TicketEvaluation');
        String body = '{"id":"' + id + '"}';
        HttpResponse response = sendPostCallout(url, body);

        if(response.getStatusCode() == 200) {
        content = (TicketEvaluation) JSON.deserialize(response.getBody(), TicketEvaluation.class);
        }
        System.debug(content);
        return response;
    }
    
    private static String makeUrlRA(String nameMdt){
        String root = 'callout:ReclameAquiURL';
        String path = Callout_Setting__mdt.getInstance(nameMdt).Endpoint__c;
        String url = root + path;
        return url;
    }
    
    private static HttpResponse sendGetCallout(String url){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod(Callout_Setting__mdt.getInstance('MethodGET').Method__c);
        HttpResponse response = http.send(request);
        return response;
    }

    private static HttpResponse sendPostCallout(String url, String body){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod(Callout_Setting__mdt.getInstance('MethodPOST').Method__c);
        request.setHeader(Callout_Setting__mdt.getInstance('HeaderCA').Header__c, Callout_Setting__mdt.getInstance('HeaderCA').Value_Header__c);
        request.setBody(body);
        HttpResponse response = http.send(request);
        return response;
    }
}