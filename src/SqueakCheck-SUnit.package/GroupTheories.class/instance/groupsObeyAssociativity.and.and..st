group theories
groupsObeyAssociativity: a and: b and: c
	"example test for group associativity"
	<theoryTaking: #SmallInteger>
	
	self assert: (a + (b + c)) equals: ((a + b) + c).