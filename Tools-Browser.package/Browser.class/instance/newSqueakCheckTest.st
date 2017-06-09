SWT014-Browsererweiterung
newSqueakCheckTest

	self addSqueakCheckPackage.
	(self selectedClass environment hasClassNamed: (self classNameSqueakCheck)) ifFalse: [self addSqueakCheckClass].
	self addSqueakCheckMethodAndCategory.


