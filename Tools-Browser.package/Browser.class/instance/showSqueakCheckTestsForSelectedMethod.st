SWT014-Browsererweiterung
showSqueakCheckTestsForSelectedMethod

(self environment hasClassNamed: (self classNameSqueakCheck)) ifFalse:[^ Dictionary new].
^ ((self returnNewClass) methodDict keys select: [:each | ((self returnNewClass) organization categoryOfElement: each) = #squeakCheckTests]) select: [:each | ((self returnNewClass) methodDict at: each) messages includes: (self selectedMessageName asSymbol)]