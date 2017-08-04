testdata
setUp

	self browser: Browser new.
	self browser selectClass: self class.
	self browser selectMessageNamed: #returnTrue.
	SystemOrganization removeSystemCategory: self browser categoryNameForTest asSymbol.	