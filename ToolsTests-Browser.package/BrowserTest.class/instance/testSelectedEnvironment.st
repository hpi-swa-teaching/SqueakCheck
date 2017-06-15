as yet unclassified
testSelectedEnvironment
	browser selectSystemCategory: browser class category.
	self assert: browser selectedEnvironment = Smalltalk globals.
	
	"browser selectSystemCategory: nil.
	self assert: browser selectedEnvironment isNil."
	"selectedClass would not work in a hierarchy browser that has to display classes from different environments (because the correct categories might be missing)"