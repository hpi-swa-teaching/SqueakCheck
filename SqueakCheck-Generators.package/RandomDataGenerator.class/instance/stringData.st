generators
stringData
        | stream t |

        t := rng nextInt: self moderateComplexity.
        stream := WriteStream on: (WideString new: t).
        t timesRepeat: [stream nextPut: self characterData].
        ^ stream contents.