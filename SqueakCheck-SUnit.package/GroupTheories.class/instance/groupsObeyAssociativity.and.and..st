group theories
groupsObeyAssociativity: a and: b and: c
	<theory>
	a class zero. "It's absolutely crap that you have to specify this to lock down the protocol!"
	self assert: (a + (b + c)) equals: ((a + b) + c).