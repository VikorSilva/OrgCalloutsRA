public class ReclameAquiCallouts {
		
    	
    public static HttpResponse makeGetCallout(String id) {
        TicketById resposta;
        String callout = 'callout:ReclameAquiURL' + Callout_Setting__mdt.getInstance('RA_Ticket').Endpoint__c+id;
        HttpResponse response = sendGetCallout(callout);
        String conteudo = response.getBody();
        if(response.getStatusCode() == 200) {
            resposta = (TicketById) JSON.deserialize(response.getBody(), TicketById.class);
        }
        System.debug(resposta);
        System.debug(conteudo);
        return response;
    }
    
    public static HttpResponse makePostCallout(String ticketId, String message) {
        PublicMessageResponse resposta;
        String callout = 'callout:ReclameAquiURL' + Callout_Setting__mdt.getInstance('RA_Ticket').Endpoint__c;
        String body = '{"ticketid":"'+ ticketId + '",' + '"message":"' + message +'"}';
        HttpResponse response  = sendPostCallout(callout, body);
        if(response.getStatusCode() == 200) {
        resposta = (PublicMessageResponse) JSON.deserialize(response.getBody(), PublicMessageResponse.class);
        }
        System.debug(resposta);
        return response;
         
    }
    
    public static HttpResponse makePostEvaluationCallout(String id) {
        TicketEvaluation resposta;
        String callout = 'callout:ReclameAquiURL' + Callout_Setting__mdt.getInstance('RA_TicketEvaluation').Endpoint__c;
        String body = '{"id":"' + id + '"}';
        HttpResponse response = sendPostCallout(callout, body);
        if(response.getStatusCode() == 200) {
        resposta = (TicketEvaluation) JSON.deserialize(response.getBody(), TicketEvaluation.class);
        }
        System.debug(resposta);
        return response;
        
        
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