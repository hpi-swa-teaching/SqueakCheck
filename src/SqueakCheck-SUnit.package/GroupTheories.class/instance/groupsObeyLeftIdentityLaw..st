group theories
groupsObeyLeftIdentityLaw: x
	"example test for group identity"
	<theoryTaking: #SmallInteger>

	self assert: x equals: (x class zero + x).