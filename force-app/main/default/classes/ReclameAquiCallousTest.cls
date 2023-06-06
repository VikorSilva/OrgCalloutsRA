@isTest
private class ReclameAquiCallousTest {
    @isTest
    static void testGetTicketId(){
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('TicketByIdReponse');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json');
        
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse result = ReclameAquiCallouts.getTicketById('');
        System.assertEquals(200, result.getStatusCode());
        
    }
    
    @isTest
    static void testPostsendPublicMessage() {
        Test.setMock(HttpCalloutMock.class, new ReclameAquiHttpCalloutMock());
        HttpResponse response = ReclameAquiCallouts.sendPublicMessage('','');
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = System.Label.PublicMessageRA;
        System.debug(expectedValue);
        System.assertEquals(expectedValue, actualValue);
        System.assertEquals(200, response.getStatusCode());
    }
    
    @isTest
    static void testPostTicketEvaluation() {
        Test.setMock(HttpCalloutMock.class, new ReclameAquiHttpCalloutMock());
        HttpResponse response = ReclameAquiCallouts.sendEvaluationTicket('');
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = System.Label.TicketEvaluationRA;
        System.debug(expectedValue);
        System.assertEquals(expectedValue, actualValue);
        System.assertEquals(200, response.getStatusCode());
    }
}