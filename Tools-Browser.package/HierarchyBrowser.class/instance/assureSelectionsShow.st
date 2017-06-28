class list
assureSelectionsShow
	"This is a workaround for the fact that a hierarchy browser, when launched, often does not show the selected class"

	| saveMsgName saveCatName |
	saveCatName := self selectedMessageCategoryName.
	saveMsgName := self selectedMessageName.
	self selectClassNamed: selectedClassName.
	self selectMessageCategoryNamed: saveCatName.
	self selectMessageNamed: saveMsgName