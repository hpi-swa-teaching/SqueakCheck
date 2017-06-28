as yet unclassified
testClassCommentAnnotationIgnoresParameter
	| annotation |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	"And the method ignores the parameter:"
	annotation := browser annotationForClassCommentFor: browser class superclass.
	self assert: (annotation includesSubstring: browser className).