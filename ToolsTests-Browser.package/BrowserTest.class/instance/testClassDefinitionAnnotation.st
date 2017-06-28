as yet unclassified
testClassDefinitionAnnotation
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	self assert: browser class comment equals: (browser annotationForClassDefinitionFor: browser class).
	"And the method ignores the parameter:"
	self assert: browser class comment equals: (browser annotationForClassDefinitionFor: browser class superclass).