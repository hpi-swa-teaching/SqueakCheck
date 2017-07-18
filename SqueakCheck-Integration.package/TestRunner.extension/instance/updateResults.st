*SqueakCheck-Integration
updateResults
	"<lint: #expect rule: #guardingClause>"
	"<lint: #expect rule: #longMethods>"

	self updateStatus: false.
	failedList size = result failures size ifFalse: [
		failedListWithCounterexamples := result failures collect: [:each| ((each asString), ((each class canUnderstand: #currentExample) ifTrue: [ '   failed with: ',(each currentExample asString)] ifFalse: ''))].
		failedListWithCounterexamples := failedListWithCounterexamples asArray
			sort: [ :a :b | a printString <= b printString ].
		failedList := result failures.
		failedList := failedList asArray
			sort: [ :a :b | a printString <= b printString ].

		failedSelected := nil.
		self 
			changed: #failedListWithCounterexamples;
			changed: #failedList; 
			changed: #failedSelected;
			changed: #hasFailures;
			changed: #hasProgress  ].
	errorList size = result errors size ifFalse: [
		errorList := result errors asArray
			sort: [ :a :b | a printString <= b printString ].
		errorSelected := nil.
		self 
			changed: #errorList; 
			changed: #errorSelected;
			changed: #hasErrors;
			changed: #hasProgress ].