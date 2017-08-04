*SqueakCheck-Integration
squeakCheck
	"This method was automatically generated. Edit it using:"
	"TerseGuideHelp edit: #squeakCheck"
	^(HelpTopic
		title: 'SqueakCheck'
		contents: 
'"************************************************************************
 * SqueakCheck:														*
 ************************************************************************"

"
SqueakCheck creates tests for your methods and will input random values into the tests.
If a test fails SqueakCheck will create a new test, that tests the failed value. They are called counterexamples.

To add a new test to a method:  						rightclick the method and click on -new SqueakCheck Test-
To run the new test: 									rightclick the method and select -SqueakCheck tests-, then select your test and click -run-
													OR: use the TestRunner to run the tests
To delete generated counterexamples: 					rightclick the method and select -SqueakCheck tests-, then select your test and click -delete counter examples-
To open the new test: 									rightclick the method and select -SqueakCheck tests-, then select your test and click -open-
To specify the class of objects to be tested:				switch -SmallInteger- in the pragma <theoryTaking: #(SmallInteger)> for your class
To specify multiple classes for multiple parameters:		switch from <theoryTaking: #(SmallInteger)> to e.g. <theoryTaking: #(SmallInteger String SmallInteger)> 		
To prevent counterexamples from being generated: 	remove the pragma <generateCounterExamples>
"
!' readStream nextChunkText)
			key: #squeakCheck