import XCTest
@testable import SmoothOperators

final class SmoothOperatorsTests: XCTestCase {
    func testPlusMinus() {
        let i: Int = 42
        XCTAssert(i+ == 43)
        XCTAssert(i- == 41)
        
        let j: CGFloat = 42
        XCTAssert(j+ == 43)
        XCTAssert(j- == 41)
    }
    
    func testPrefix() {
        var i: Int = 0
        XCTAssertEqual(++i, 1)
        XCTAssertEqual(i, 1)
        XCTAssertEqual(--i, 0)
        XCTAssertEqual(i, 0)
        
        XCTAssertEqual(1 + ++i, 2)
        XCTAssertEqual(i, 1)
        XCTAssertEqual(1 + --i, 1)
        XCTAssertEqual(i, 0)
    
        var j: CGFloat = 0.0
        XCTAssertEqual(++j, 1.0)
        XCTAssertEqual(j, 1.0)
        XCTAssertEqual(--j, 0.0)
        XCTAssertEqual(j, 0.0)
        
        XCTAssertEqual(1.0 + ++j, 2.0)
        XCTAssertEqual(j, 1.0)
        XCTAssertEqual(1.0 + --j, 1.0)
        XCTAssertEqual(j, 0.0)
    }
    
    func testPostfix() {
        var i: Int = 0
        XCTAssertEqual(i++, 0)
        XCTAssertEqual(i, 1)
        XCTAssertEqual(i--, 1)
        XCTAssertEqual(i, 0)
        
        XCTAssertEqual(1 + i++, 1)
        XCTAssertEqual(i, 1)
        XCTAssertEqual(1 + i--, 2)
        XCTAssertEqual(i, 0)

        var j: CGFloat = 0.0
        XCTAssertEqual(j++, 0.0)
        XCTAssertEqual(j, 1.0)
        XCTAssertEqual(j--, 1.0)
        XCTAssertEqual(j, 0.0)
        
        XCTAssertEqual(1.0 + j++, 1.0)
        XCTAssertEqual(j, 1.0)
        XCTAssertEqual(1.0 + j--, 2.0)
        XCTAssertEqual(j, 0.0)
    }
    
    func testExponentInteger() {
        let i: Int = 2
        
        XCTAssertEqual(i ** 3, 8)
        XCTAssertEqual(i ** 3 + 2, 10)
        XCTAssertEqual(i ** 0, 1)
        
        XCTAssertEqual(i ** 3.0, 8)
        XCTAssertEqual(i ** 3.0 + 2, 10)
        XCTAssertEqual(i ** 0.0, 1)
    }
    
    func testExponentFloatingPoint() {
        let i: CGFloat = 2
        
        XCTAssertEqual(i ** 3, 8)
        XCTAssertEqual(i ** 3 + 2, 10)
        XCTAssertEqual(i ** 0, 1)
        
        XCTAssertEqual(i ** 3.0, 8)
        XCTAssertEqual(i ** 3.0 + 2, 10)
        XCTAssertEqual(i ** 0.0, 1)
        
        XCTAssertEqual(2.5 ** 3.4, pow(2.5, 3.4))
    }
    
    func testBooleanCast() {
        let a: Int? = 42
        let b: Int? = nil
        
        let c: Bool? = true
        let d: Bool? = false
        let e: Bool? = nil
        
        XCTAssertTrue(!!a)
        XCTAssertFalse(!!b)
        
        XCTAssertFalse(!!!a)
        XCTAssertTrue(!!!b)
        
        XCTAssertTrue(!!c)
        XCTAssertFalse(!!d)
        XCTAssertFalse(!!e)
        
        XCTAssertFalse(!!!c)
        XCTAssertTrue(!!!d)
        XCTAssertTrue(!!!e)
    }
    
    func testTransformAndReassign() {
        func divideByTwo(_ value: Int) -> Int {
            value / 2
        }

        var a: Int = 42
        
        a <- { $0 - 2 }
        XCTAssert(a == 40)
        
        a <- divideByTwo
        XCTAssert(a == 20)
        
        var b: Int? = 42
        
        b <- { $0.map { $0 - 2 } }
        XCTAssert(b == 40)
        
        b <-? divideByTwo
        XCTAssert(b == 20)
        
        var c: Int?
        
        c <-? divideByTwo
        XCTAssert(c == nil)
        
        c <-? { _ in 42 }
        XCTAssert(c == nil)
        
        c <- { _ in 42 }
        XCTAssert(c == 42)
    }
    
    func testNaNCoalescing() {
        let a: Double? = 42
        let b: Double? = nil
        let c: Double = 42
        let d: Double = .nan
        let e: Double? = .nan
        
        XCTAssert(a ?? 0 == 42)
        XCTAssert(b ?? 42 == 42)
        XCTAssert(c ?? 0 == 42)
        XCTAssert(d ?? 42 == 42)
        XCTAssert((e ?? 0).isNaN)
        XCTAssert((e ?? 0) ?? 42 == 42)

        let f: Decimal? = 42
        let g: Decimal? = nil
        let h: Decimal = 42
        let i: Decimal = .nan
        let j: Decimal? = .nan

        XCTAssert(f ?? 0 == 42)
        XCTAssert(g ?? 42 == 42)
        XCTAssert(h ?? 0 == 42)
        XCTAssert(i ?? 42 == 42)
        XCTAssert((j ?? 0).isNaN)
        XCTAssert((j ?? 0) ?? 42 == 42)
    }
    
    func testEmptyCoalescing() {
        let a = "Hello"
        let b = ""
        
        XCTAssert(a ?? "foo" == a)
        XCTAssert(b ?? "foo" == "foo")
    }
    
    func testOptionalAssignment() {
        var a: Int? = 0
        var b: Int?
        
        a ?= 42
        b ?= 42
        
        XCTAssert(a == 0)
        XCTAssert(b == 42)
        
        var c: Int = 42
        
        c ?= nil
        XCTAssert(c == 42)
        
        c = 0
        XCTAssert(c == 0)
        
        var d: Int? = 0
        var e: Int?
        
        d !?= 42
        e !?= 42
        
        XCTAssert(d == 42)
        XCTAssert(e == nil)
    }
    
    func testPercent() {
        let a: CGFloat = 60%
        let b: Double = 70%
        let c: Float = 80%
        XCTAssert(a == 0.6)
        XCTAssert(b == 0.7)
        XCTAssert(c == 0.8)
        
        let d: CGFloat = 60.5%
        let e: Double = 70.5%
        let f: Float = 80.5%
        XCTAssert(d == 0.605)
        XCTAssert(e == 0.705)
        XCTAssert(f == 0.805)
    }
    
    func testConditonalNil() {
        XCTAssertNil(false => 42.0)
        XCTAssertNotNil(true => 42.0)
        XCTAssertNil(0 == 1 => 42.0)
        XCTAssertNotNil(0 != 1 => 42.0)
    }
    
    func testPredecessorAndSuccessors() {
        let a = 1
        let b = 2
        let c = 3
        let d = 1
        
        XCTAssertTrue(a <| b)
        XCTAssertTrue(b <| c)
        XCTAssertTrue(a <=| d)
        
        XCTAssertFalse(a <| c)
        XCTAssertFalse(b <=| d)
        
        let f = -1
        let g = -2
        let h = -3
        let i = -1
        
        XCTAssertTrue(f |> g)
        XCTAssertTrue(g |> h)
        XCTAssertTrue(f |>= i)
        
        XCTAssertFalse(f |> h)
        XCTAssertFalse(g |>= i)
        
        XCTAssertFalse(a <| f)
        XCTAssertFalse(a |> f)
        XCTAssertFalse(a <=| f)
        XCTAssertFalse(a |>= f)
    }
    
    func testBoolAlgebraAssignment() {
        var a = true
        var b = false
        
        a ||= false
        XCTAssertTrue(a)
        b &&= false
        XCTAssertFalse(b)
        
        b &&= true
        XCTAssertFalse(b)
        b ||= true
        XCTAssertTrue(b)
    }
    
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func testSIMDFloatExp() {
        let sf2in = SIMD2<Float>(repeating: 2)
        let sf2out = SIMD2<Float>(repeating: 8)
        let sf2exp = SIMD2<Float>(repeating: 3)
        
        XCTAssert(sf2in ** sf2exp == sf2out)
        XCTAssert(sf2in ** 3 == sf2out)
        
        let sf3in = SIMD3<Float>(repeating: 2)
        let sf3out = SIMD3<Float>(repeating: 8)
        let sf3exp = SIMD3<Float>(repeating: 3)
        
        XCTAssert(sf3in ** sf3exp == sf3out)
        XCTAssert(sf3in ** 3 == sf3out)
        
        let sf4in = SIMD4<Float>(repeating: 2)
        let sf4out = SIMD4<Float>(repeating: 8)
        let sf4exp = SIMD4<Float>(repeating: 3)
        
        XCTAssert(sf4in ** sf4exp == sf4out)
        XCTAssert(sf4in ** 3 == sf4out)
        
        let sf8in = SIMD8<Float>(repeating: 2)
        let sf8out = SIMD8<Float>(repeating: 8)
        let sf8exp = SIMD8<Float>(repeating: 3)
        
        XCTAssert(sf8in ** sf8exp == sf8out)
        XCTAssert(sf8in ** 3 == sf8out)
        
        let sf16in = SIMD16<Float>(repeating: 2)
        let sf16out = SIMD16<Float>(repeating: 8)
        let sf16exp = SIMD16<Float>(repeating: 3)
        
        XCTAssert(sf16in ** sf16exp == sf16out)
        XCTAssert(sf16in ** 3 == sf16out)
    }
    
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func testSIMDDoubleExp() {
        let sf2in = SIMD2<Double>(repeating: 2)
        let sf2out = SIMD2<Double>(repeating: 8)
        let sf2out2 = SIMD2<Double>(repeating: 9)
        let sf2exp = SIMD2<Double>(repeating: 3)
        
        XCTAssert(sf2in ** sf2exp == sf2out)
        XCTAssert(sf2in ** 3 == sf2out)
        XCTAssert(3 ** sf2in == sf2out2)
        
        let sf3in = SIMD3<Double>(repeating: 2)
        let sf3out = SIMD3<Double>(repeating: 8)
        let sf3out2 = SIMD3<Double>(repeating: 9)
        let sf3exp = SIMD3<Double>(repeating: 3)
        
        XCTAssert(sf3in ** sf3exp == sf3out)
        XCTAssert(sf3in ** 3 == sf3out)
        XCTAssert(3 ** sf3in == sf3out2)
        
        let sf4in = SIMD4<Double>(repeating: 2)
        let sf4out = SIMD4<Double>(repeating: 8)
        let sf4out2 = SIMD4<Double>(repeating: 9)
        let sf4exp = SIMD4<Double>(repeating: 3)
        
        XCTAssert(sf4in ** sf4exp == sf4out)
        XCTAssert(sf4in ** 3 == sf4out)
        XCTAssert(3 ** sf4in == sf4out2)
        
        let sf8in = SIMD8<Double>(repeating: 2)
        let sf8out = SIMD8<Double>(repeating: 8)
        let sf8out2 = SIMD8<Double>(repeating: 9)
        let sf8exp = SIMD8<Double>(repeating: 3)
        
        XCTAssert(sf8in ** sf8exp == sf8out)
        XCTAssert(sf8in ** 3 == sf8out)
        XCTAssert(3 ** sf8in == sf8out2)
    }
}
