testing
testACharacterProducesCharacters
        | data |
        data := OrderedCollection new.
        100 timesRepeat: [ | datum |
                datum := Character dataFrom: generator.
                data add: datum.
                self assert: datum isCharacter].
        "Test that the data varies, even though we don't know what that variation looks like."
        self assert: ((data collect: #charCode) range > 0).