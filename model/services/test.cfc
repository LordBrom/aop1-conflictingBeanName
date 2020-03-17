component accessors="true"{
	property testDAO;
	public function init(){

		return this;
	}

	public string function notInsert(){
		return "THIS IS THE SERVICE. It does not have an insert function()...calling testDAO..." & getTestDAO().insert();
	}

}