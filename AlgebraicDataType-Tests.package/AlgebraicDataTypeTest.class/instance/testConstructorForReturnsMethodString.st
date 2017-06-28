testing - instance creation
testConstructorForReturnsMethodString
	self assert: (AlgebraicDataType constructorFor: #foo:) = 'foo: foo\	^ self new foo: foo.' withCRs.
	self assert: (AlgebraicDataType constructorFor: #foo:bar:) = 'foo: foo bar: bar\	^ self new foo: foo bar: bar.' withCRs.