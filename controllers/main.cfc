component name="main" output="false" accessors="true"{
	property testService;
	property fw;
	public void function default(struct rc = {}) {
		param name="rc.skeletonType" default="Basic FW/1 Skeleton";
	}

	public void function aoptest(struct rc = {}) {
		variables.fw.renderData('html', testService.notInsert());
	}

}