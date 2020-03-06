# SmoothOperators

A tiny collection of (more or less) useful Swift operators.

## Numeric manipulation oriented operators

- Adds back prefixed and postfixed `++` and `--` operators.
- Introduces postfixed `+` and `-` operators that respectively return `value + 1` and  `value - 1`.
- Adds an exponent operator `**`.

## Comparison operator

Features a variant for `==`, `!=`, `>`, `<`, `>=`, `<=` respectively `==?`, `!=?`, `>?`, `<?`, `>=?`, `<=?` that return an optional value instead of a boolean one.
If the outcome should have been `true` the left value is returned in a form of an optional. If the outcome should have been `false` `nil` is returned.

```Swift
5 ==? 5 // Optional(5)
5 ==? 6 // nil

5 !=? 6 // Optional(5)
5 !=? 5 // nil

5 >? 4 // Optional(5)
5 >? 6 // nil

5 >=? 5 // Optional(5)
5 >=? 6 // nil

5 <? 6 // Optional(5)
5 <? 4 // nil

5 <=? 5 // Optional(5)
5 <=? 4 // nil
```

## Other operators
### Transform and reassign: `<-`
This infix operator take take the left variable, transform it using the closure at its right and put the resulting value back in the left variable.

```Swift
var a: Int = 42

a <- { $0 - 2 } // a == 40

func divideByTwo(_ value: Int) -> Int {
value / 2
}

a <- divideByTwo // a == 20
```

### Boolean cast for optionals: `!!`
This prefixed operator returns `false` if the value its attached to is `nil`. `true` otherwise.

```Swift
let a: Int? = 5
let b: Int? = nil

!!a // true
!!a // false
```

## License

See LICENSE.
