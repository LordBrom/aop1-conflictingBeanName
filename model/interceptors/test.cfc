component accessors="true"{

	public function init(){

		return this;
	}

	public function before(targetBean, methodName, args) {
		writeDump(var="THE INTERCEPTOR HAS RUN ON ...");
        writeDump(var=targetBean, abort="true");
    }

}