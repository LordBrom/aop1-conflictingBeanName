component accessors="true"{

	public function init(){

		return this;
	}

	public string function insert(){
		return "THIS IS THE DAO INSERT() FUNCTION. If you see this, the before interceptor did not run!";
	}

}