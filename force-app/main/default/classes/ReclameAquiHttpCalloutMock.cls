@isTest
global class ReclameAquiHttpCalloutMock implements HttpCalloutMock{
    public ReclameAquiHttpCalloutMock() {
        
    }
    
    global HttpResponse respond(HttpRequest request) {
        String url =  request.getEndpoint();
        String body = request.getBody();
        HttpResponse response = new HttpResponse();
        
        if(body.contains('ticketid') && url.contains(Callout_Setting__mdt.getInstance('RA_Ticket').Endpoint__c)) {
            response.setHeader('Content-Type', 'application/json');
			response.setBody(System.Label.PublicMessageRA);
            response.setStatusCode(200);
        }
        else if (body.contains('id') && url.contains(Callout_Setting__mdt.getInstance('RA_TicketEvaluation').Endpoint__c)){
            response.setHeader('Content-Type', 'application/json');
           	response.setBody(System.Label.TicketEvaluationRA);
            response.setStatusCode(200);
        }
        return response;
        
        
    }
    
    
}