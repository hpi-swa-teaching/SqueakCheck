SWT014-Browsererweiterung
showSqueakCheckTestsForSelectedMethodAsValues

(self environment hasClassNamed: (self classNameSqueakCheck)) ifFalse: [^ Dictionary new].
^ ((self returnNewClass) methodDict values select: [:each | ((self returnNewClass) organization categoryOfElement: (each selector)) = #squeakCheckTests]) select: [:each | each messages includes: (self selectedMessageName)]