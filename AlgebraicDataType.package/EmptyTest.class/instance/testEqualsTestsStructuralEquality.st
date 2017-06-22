testing
testEqualsTestsStructuralEquality
	| t1 t2 t3 |
	t1 := Empty new.
	t2 := Empty new.
	t3 := t1 unapply.
	self deny: t1 == t2. "Not the same object."
	self assert: t1 = t2. "But are equal objects."
	self assert: t1 = t3. "Equality means structural equality."