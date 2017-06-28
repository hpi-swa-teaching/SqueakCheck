group theories
groupsObeyLeftIdentityLaw: x
	"i think this shouldn't even work, changing theory to theoryTaking: #SmallInteger for now"
	<theoryTaking: #SmallInteger>
	"<theory>"
	self assert: x equals: (x class zero + x).