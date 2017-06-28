*SqueakCheck-Integration
openCompiledMethod: aMethod
	
	self classWithTestsForSelectedClass browse selectMessageNamed: aMethod selector.
	self flag: 'TODO: Methodenname besser wählen und an Funktionalität anpassen'.