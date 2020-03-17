component extends="framework.one" output="false" {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		generateSES = false,
		SESOmitIndex = false,
		diEngine = "aop1",
		diComponent = "framework.aop",
		diLocations = "model, controllers",
        diConfig = {
        	interceptors = [
        		{beanName="testDAO", interceptorName="testInterceptor", methods="insert"}
        	]
        },
        routes = [ ],
       reloadApplicationOnEveryRequest = true,
       reload         = 'reload', <!--- URL param to force a refresh --->
		password       = 'av1be',   <!--- Must be passed with the reload param. IE ?reload=av1be --->
	};

	public void function setupSession() {  }

	public void function setupRequest() {  }

	public void function setupView() {  }

	public void function setupResponse() {  }

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found.";
	}
}