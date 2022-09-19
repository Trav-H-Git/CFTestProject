component {

	// The application name. If you do not set this variable, or set it to the empty string, your CFC applies to the unnamed application scope, which is the Lucee J2EE servlet context. THIS.name = "foo";
	this.name = "cfTest";
	this.applicationTimeout = createTimeSpan(0, 1, 0, 0);
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
    this.datasource = "cfUser";



	/*	
	
	this.applicationTimeout = createTimeSpan(0, 1, 0, 0); // Life span, as a real number of days, of the application, including all Application scope variables. 
	this.clientManagement = false; // Whether the application supports Client scope variables. 
	this.clientStorage = "registry"; //cookie||registry||datasource // Where Client variables are stored; can be cookie, registry, or the name of a data source. 	this.customTagPaths = ""; // Contains Lucee custom tag paths. 	this.datasource = ""; // Name of the data source from which the query retrieves data. 
	this.loginStorage = "cookie"; //cookie||session // Whether to store login information in the Cookie scope or the Session scope. 
	this.mappings = {};	// A structure that contains Lucee mappings. Each element in the structure consists of a key and a value. The logical path is the key and the absolute path is the value. 
	this.sessionManagement = true; // Whether the application supports Session scope variables. 
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0); // Life span, as a real number of days, of the user session, including all Session variables. 
	this.setClientCookies = true; // Whether to send CFID and CFTOKEN cookies to the client browser. 
	this.setDomainCookies = false;	// Whether to set CFID and CFTOKEN cookies for a domain (not just a host). 	
	this.timeout = 30; //Request timeout. Overrides the default administrator settings. 
	this.sessionType="cfml|j2ee"; //CFML or J2EE Based Sessions
	this.clientCluster=true; //if set to true, railo uses the storage backend for the client scope as master and Railo checks for changes in the storage backend with every request, set to false (default), the storage is only used as slave, railo only initially gets the data from the storage. Ignored for storage type "memory".
	this.sessionCluster=true; //if set to true, railo uses the storage backend for the session scope as master and Railo checks for changes in the storage backend with every request, set to false (default), the storage is only used as slave, railo only initially gets the data from the storage. Ignored for storage type "memory".
	this.sessionStorage="file|memory|cookie|<datasource-name>|<cache-name>"; //sets where the session scope should be stored.
	this.clientStorage="file|memory|cookie|<datasource-name>|<cache-name>"; //sets where client scope should be store
	this.clientTimeout=createTimeSpan(180,0,0,0); //Sets when the client scope should timeout. The default is 90 days.
	this.localMode="always|update|true|false"; //defines how the local scope is invoked always|true = local scope is invoked always, even variable does not exist in the local scope 	update|false = local scope is only invoked when variable already exists in the local scope
	this.defaultDatasource=""; //alias for this.datasource
	this.s3.server="s3.amazonaws.com"; //host name of the S3 Server, default is "s3.amazonaws.com"
	this.invokeImplicitAccessor=true; //alias for triggerDataMember
	this.triggerDataMember=true; //this allows to enable triggering set<ValueName>() when you call Component.<valueName> 
	this.cache.function="<cache-name>"; //Set the default cache name for each type:
	this.cache.query="<cache-name>";
	this.cache.object="<cache-name>";
	this.cache.resource="<cache-name>";
	this.cache.template="<cache-name>";
	this.inmemoryfilesystem ="<cache-name>" //Sets a cache for the use of the in memory file system. This is an alias for this.cache.resource="<cache-name>
	this.sameFormFieldsAsArray=true|false; //Converts FORM fields of the samme name to an array
	this.sameURLFieldsAsArray=true|false; //Converts URL fields of the samme name to an array
	this.webAdminPassword=<web-admin-password>; //used by the functions restInitApplication/restDeleteApplication
	*/

	
	boolean function onApplicationStart(){
        application.logInComp = createObject("component", "CFTestProject/src/components/logInComp");
		application.arrayErrors = arrayNew(1);
        return true;
	}

	void function onApplicationEnd(struct application){

	}

	void function onSessionStart() {

	}

	void function onSessionEnd(struct application,struct session) {

	}

	boolean function onRequestStart(string targetPage) {
        if (isDefined("url.new")) {
            onApplicationStart();
        }
        include targetPage;
		return true;
        
	}

	void function onRequestEnd(string targetPage) {
		//arrayClear(application.arrayErrors);

	}

	void function onRequest(string targetPage) {

	}

	void function onCFCRequest(string cfcName, string methodName, struct args) {

	}

	// void function onError(struct exception, string eventName) {
	// 	dump(var:exception,label:eventName);
	// }

	void function onAbort(string targetPage) {
		dump("request "&targetPage&" ended with a abort!");
	}

	void function onDebug(struct debuggingData) {
		dump(var:debuggingData,label:"debug information");
	}

	void function onMissingTemplate(string targetPage) {
		echo("missing:"&targetPage);
	}

}