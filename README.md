# aop1-conflictingBeanName

This is a small application to re-create an issue seen in fw/1, aop/1 with interceptors not correctly being registered to newly created beans if the bean has the same base name as another in a different folder in the model. For example if `model.services.test` and `model.daos.test` both exist, you can not have interceptors using beanName `testDAO`. Upon diving in to `aop.cfc` it was determined the reason is that aop using simply `test` is coming back with the targetBean of `testService`

To run example using `CommandBox`:

	server start

Once the Basic FW/1 application begins goto the following URL: http://localhost:8500/?action=main.aoptest

You should see a message indicating that the interceptor did not run... to see a debug dump from with `aop.construct` goto: http://localhost:8500/?action=main.aoptest&debug


Thanks for your input.
