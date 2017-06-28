group theories
groupsObeyRightIdentityLaw: x
	"i think this shouldn't even work, changing theory to theoryTaking: #SmallInteger for now"
	<theoryTaking: #SmallInteger>
	"<theory>"
	self assert: x equals: (x + x class zero).