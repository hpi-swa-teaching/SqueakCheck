as yet unclassified
setUp
	| fileout testCat package packageDict organizer |
	testCat := self class category.
	fileout := WriteStream on: (String new: 10000).
	SystemOrganization fileOutCategory: testCat on: fileout.

	packageDict := Dictionary new.
	browser := FileContentsBrowser new.
	organizer := SystemOrganizer defaultList: Array new.
	package := (FilePackage new fullName: testCat; fileInFrom: fileout readStream).
	packageDict 
		at: package packageName 
		put: package.
	organizer 
		classifyAll: package classes keys 
		under: package packageName.
	(browser := FileContentsBrowser systemOrganizer: organizer)
		packages: packageDict.