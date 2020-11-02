# SmoothOperators

A tiny collection of (more or less) useful Swift operators.

## Use with SPM

```Text
dependencies: [
    // Dependencies declare other packages that this package depends on.
    ...
    .package(url: "https://github.com/Pyroh/SmoothOperators.git", .upToNextMajor(from: "0.4.0")),
    ...
],
```

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

### NaN-Coalescing `??`
Is the same as the nil-coalescing operator but for floating point values. These values can be NaN.   
This operator returns the value if it's not NaN otherwise it returns the default value.

```Swift
let a: Double? = 42
let b: Double? = nil
let c: Double = 42
let d: Double = .nan
let e: Double? = .nan

a ?? 0 // 42.0
b ?? 0 // 0.0
c ?? 0 // 42.0
d ?? 0 // 0.0
(e ?? 0) ?? 1 // 1.0
```

### Empty-Coalescing `??`
Is the same as the nil-coalescing operator but for collections.
This operator returns the collection if it's not empty otherwise it returns the default collection.

### Optional assignment `?=`
Assign the right hand side value to the left hand side optional if its nil.
`a ?= 42` is equivalent to `a = a ?? 42` for any `var a: Int?`.

## License

See LICENSE.
