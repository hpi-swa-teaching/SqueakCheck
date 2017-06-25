group theories
groupsObeyAssociativity: a and: b and: c
	"i think this shouldn't even work, changing theory to theoryTaking: #SmallInteger for now"
	<theoryTaking: #SmallInteger>
	a class zero. "It's absolutely crap that you have to specify this to lock down the protocol!"
	self assert: (a + (b + c)) equals: ((a + b) + c).