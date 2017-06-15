as yet unclassified
testClassCommentAnnotation
	| annotation |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	annotation := browser annotationForClassCommentFor: browser class.
	self assert: (annotation includesSubstring: browser class organization commentStamp).
	self assert: (annotation includesSubstring: 'class comment for').
	self assert: (annotation includesSubstring: browser className).