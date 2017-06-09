testing
testStringProducesStrings
        | data |
        data := OrderedCollection new.
        100 timesRepeat: [ | datum |
                datum := String dataFrom: generator.
                data add: datum.
                self assert: datum isString].
        "Test that the data varies, even though we don't know what that variation looks like."
        self assert: ((data collect: #size) range > 0)