global class PublicMessageResponse {
    
    
    public List<ticketDetails> ticketDetails;
	public ticketInteractionType ticketInteractionType;
	public video video;
	public String message ;	    //Operação efetuada com sucesso
	public Integer interactionId ;	    //0
	public String createdAt;	    //2020-12-07T10:44:58
	public picture picture;
	public consumer consumer;
	public boolean success;
	public person person;
	public ticket ticket;
    
	global class ticketDetails {
        
		public String createdAt ;	    //2020-12-07T10:44:58
		public String text;	    //IP
		public String type ;	    //IP
		public String value ;	    //0
	}

	global class ticketInteractionType {
		public Integer id;	    //0
		public String name;	    //Resposta
	}

	global class video {
        public string video;
	}

	global class picture {
        public string picture;
	}

	global class consumer {
        public string consumer;
	}

	global class person {
        public string person;
	}

	global class ticket {
		public systemStatus systemStatus;
        public List<ticketStatus> ticketStatus;

	}

	global class systemStatus {
		public Integer id;	    //0
		public String value;	    //Respondido
	}

	global class ticketStatus {
		public Integer id;	    //0
		public Integer type;	    //0
		public String value;	    //Respondido
	}

}