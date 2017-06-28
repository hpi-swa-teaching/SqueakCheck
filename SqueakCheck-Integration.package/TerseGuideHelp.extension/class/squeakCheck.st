*SqueakCheck-Integration
squeakCheck

	^HelpTopic
		title: 'SqueakCheck' 
		contents:

'"************************************************************************
 * SqueakCheck:														*
 ************************************************************************"

"
SqueakCheck creates tests for your methods and will input random values into the tests.
If a test fails squeakCheck will create a new test, that tests the failed value. This new test is called counterexample.

To add a new test to a method:  						rightclick the method and click on -new SqueakCheck Test-
To run the new test: 									rightclick the method and select -SqueakCheck tests-, then select your test and click -run-
To delete generated counterexamples: 					rightclick the method and select -SqueakCheck tests-, then select your test and click -delete counter examples-
To open the new test: 									rightclick the method and select -SqueakCheck tests-, then select your test and click -open-
To speciy the class of objects to be tested:				switch -SmallInteger- in the pragma <theoryTaking: #SmallInteger> for your class		
To prevent counterexamples from being generated: 	remove the pragma <generateCounterExamples>
"
'