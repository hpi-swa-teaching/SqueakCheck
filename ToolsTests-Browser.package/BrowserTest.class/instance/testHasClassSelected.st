as yet unclassified
testHasClassSelected
	browser selectSystemCategory: browser class category.
	self deny: browser hasClassSelected.

	browser selectClass: browser class.
	self assert: browser hasClassSelected.

	browser selectClass: nil.
	self deny: browser hasClassSelected.

	browser selectClassNamed: browser class name asString.
	self assert: browser hasClassSelected.