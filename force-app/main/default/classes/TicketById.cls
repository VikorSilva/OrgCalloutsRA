global class TicketById {

	global List<data> data;
	global meta meta;
	global class data {
		public hugme_status hugme_status;
		public ra_status ra_status;
		public favorable_assessment favorable_assessment;
		public information_source information_source;
		public source source;
		public company company;
		public last_feeling last_feeling;
		public feed_type feed_type;
		public moderation moderation;
		public ra ra;
		public customer customer;
		public user user;
		public account account;
		public rafone rafone;
		public String x_id;	    //0
		public Integer id;	    //0
		public String source_external_id;	    //0
		public boolean can_like;
		public String creation_date;	    //2020-10-19T14:58:18.000Z
		public String insertion_date;	    //2020-10-19T14:58:34.000Z
		public String complaint_title;	    //string
		public boolean filed;
		public String last_modification_date;	    //2020-10-27T17:40:41.000Z
		public closed_date closed_date;
		public boolean request_moderation;
		public boolean request_evaluation;
		public boolean frozen;
		public String complaint_content;	    //string
		public String ra_reason;	    //string
		public ra_feeling ra_feeling;
		public String complaint_response_content;	    //string
		public String complaint_response_date;	    //2020-10-26T12:45:15.000Z
		public Integer interactions_count;	    //0
		public Integer interactions_not_readed_count;	    //0
		public boolean resolved_issue;
		public boolean back_doing_business;
		public String consumer_consideration;	    //string
		public String consumer_consideration_date;	    //2020-10-26T13:24:42.000Z
		public String company_consideration;	    //string
		public String company_consideration_date;	    //2020-10-27T17:38:42.000Z
		public private_treatment_time private_treatment_time;
		public String public_treatment_time;	    //0
		public String rating_time;	    //0
		public String rating;	    //0
		public String rating_date;	    //2020-10-26T13:24:42.000Z
		public Integer comments_count;	    //0
		public Integer redistributions_count;	    //0
		public redistributions_reason redistributions_reason;
		public Integer ticket_moderations_count;	    //0
		public Integer ticket_messages_count;	    //0
		public String last_replica_date;	    //2020-10-27T17:38:42.000Z
		public contact_us contact_us;
		public boolean rating_without_response;
		public hugme_ticket_type hugme_ticket_type;
		public Integer customer_interactions_count;	    //0
		public Integer company_interactions_count;	    //0
		public Integer assignment_count;	    //0
		public Integer rule_id;	    //0
		public List<duplicate_ticket> duplicate_ticket;
		public List<tags> tags;
		public extra_data extra_data;
		public List<sticky_notes> sticky_notes;
		public List<autos> autos;
		public List<personalized_fields> personalized_fields;
		public List<attached> attached;
		public List<categories> categories;
		public List<historical> historical;
		public List<interactions> interactions;
		public boolean active;
		public List<duplicate_tiqt> duplicate_tiqt;
	}

	class hugme_status {
		public Integer id;	    //0
		public String name;	    //string
	}

	class ra_status {
		public Integer id;	    //0
		public String name;	    //string
	}

	class favorable_assessment {
		public Integer id;	    //0
		public String description;	    //string
	}

	class information_source {
		public Integer id;	    //0
		public String name;	    //string
	}

	class source {
		public Integer id;	    //0
		public String name;	    //string
	}

	class company {
		public Integer id;	    //0
		public String name;	    //string
	}

	class last_feeling {
		public Integer id;	    //0
		public String name;
	}



	class feed_type {
		public Integer id;	    //0
		public String name;
	}

	class moderation {
		public user user;
		public status status;
		public String reason;	    //string
		public String request_date;	    //2020-10-26T13:24:14.000Z
		public response_date response_date;
	}

	class user {
		public Integer id;	    //0
		public String name;
		public String email;
	}

	class status {
	}

	class response_date {
	}

	class ra {
		public Integer replicas_count;	    //0
		public Integer source_id;	    //0
		public String source_name;	    //string
		public deactivation_date deactivation_date;
		public deactivation_reason deactivation_reason;
		public boolean internal_process;
		public boolean blackfriday;
	}

	class deactivation_date {
	}

	class deactivation_reason {
	}

	class customer {
		public List<String> birthday;
		public List<String> cpf;
		public List<String> rg;
		public List<String> gender;
		public List<String> email;
		public List<String> phone_numbers;
		public List<photo> photo;
		public Integer id;	    //0
		public Integer duplicate_id;	    //0
		public String name;	    //string
		public List<String> cnpj;
		public String company_name;	    //[]
		public List<city> city;
		public List<state> state;
		public String type;	    //string
		public List<tags> tags;
		public Integer pending_tickets_count;	    //0
	}

	
	class photo {
	}



	class city {
		public Integer id;	    //0
		public String name;	    //string
	}

	class state {
		public Integer id;	    //0
		public String name;	    //string
		public String fs;	    //string
	}

	class tags {
	}

	class account {
		public Integer id;	    //0
		public name name;
	}

	class rafone {
		public expiration_date expiration_date;
		public Integer status_id;	    //0
		public status_name status_name;
	}

	class expiration_date {
	}

	class status_name {
	}

	class closed_date {
	}

	class ra_feeling {
	}

	class private_treatment_time {
	}

	class redistributions_reason {
	}

	class contact_us {
	}

	class hugme_ticket_type {
	}

	class duplicate_ticket {
	}

	class extra_data {
	}

	class sticky_notes {
	}

	class autos {
	}

	class personalized_fields {
	}

	class attached {
		public String id;	    //0
		public Integer type_detail_id;	    //0
		public String name;	    //string
		public String detail_description;	    //https://raichu-uploads.s3.amazonaws.com/complain_000000000.jpg
		public String creation_date;	    //2020-10-19T14:58:18.000Z
		public boolean privacy;
	}

	class categories {
	}

	class historical {
		public user user;
		public auto auto;
		public Integer id;	    //0
		public String creation_date;	    //2020-10-19T14:58:35.000Z
		public type type;
	}

	class auto {
		public Integer id;	    //0
		public name name;
	}

	class type {
		public Integer id;	    //0
		public String name;	    //string
	}

	class interactions {
		public String ticket_interaction_id;	    //0
		public Integer ticket_interaction_type_id;	    //0
		public String ticket_interaction_name;	    //string
		public String customer_id;	    //0
		public responsible_id responsible_id;
		public responsible_name responsible_name;
		public String message;	    //string
		public boolean privacy;
		public String creation_date;	    //2020-10-19T14:58:18.000Z
		public modification_date modification_date;
		public boolean delivered;
		public boolean readed;
		public boolean visualized;
		public video video;
		public picture picture;
		public List<details> details;
	}

	class responsible_id {
	}

	class responsible_name {
	}

	class modification_date {
	}

	class video {
	}

	class picture {
	}

	class details {
		public String ticket_detail_id;	    //0
		public Integer ticket_detail_type_id;	    //0
		public String name;	    //string
		public String value;	    //string
		public code code;
		public String creation_date;	    //2020-10-19T14:58:18.000Z
		public boolean privacy;
		public modification_date modification_date;
	}

	class code {
	}

	class duplicate_tiqt {
	}

	class meta {
		public PageRA page;
		public Integer total;	    //0
	}

	class PageRA {
		public Integer number_z;	    //0
		public Integer size;	    //0
	}
}