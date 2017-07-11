testing
testACharacterProducesCharacters
	| data |
	
      data := Character dataFrom: generator.
	data do: [ :datum |
                self assert: datum isCharacter].

        "Test that the data varies, even though we don't know what that variation looks like."
        self assert: ((data collect: #charCode) range > 0).