generators
stringData
        | stream t |
        t := rng nextInt: integerRange.
        stream := WriteStream on: (WideString new: t).
        t timesRepeat: [stream nextPut: self characterData].
        ^ stream contents.