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
        
        XCTAssertTrue(!!a)
        XCTAssertFalse(!!b)
    }
    
    func testTransformAndReassign() {
        var a: Int = 42
        
        a <- { $0 - 2 }
        
        XCTAssert(a == 40)
        
        func divideByTwo(_ value: Int) -> Int {
            value / 2
        }
        
        a <- divideByTwo
        
        XCTAssert(a == 20)
    }
    
    func testNaNCoalescing() {
        let a: Double? = 42
        let b: Double? = nil
        let c: Double = 42
        let d: Double = .nan
        let e: Double? = .nan
        
        XCTAssert(a ?? 0 == 42)
        XCTAssert(b ?? 0 == 0)
        XCTAssert(c ?? 0 == 42)
        XCTAssert(d ?? 0 == 0)
        XCTAssert((e ?? 0) ?? 1 == 1)

        let f: Decimal? = 42
        let g: Decimal? = nil
        let h: Decimal = 42
        let i: Decimal = .nan
        let j: Decimal? = .nan

        XCTAssert(f ?? 0 == 42)
        XCTAssert(g ?? 0 == 0)
        XCTAssert(h ?? 0 == 42)
        XCTAssert(i ?? 0 == 0)
        XCTAssert((j ?? 0) ?? 1 == 1)
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
    }
    
    func testPercent() {
        let a: CGFloat = 60%
        let b = 70%
        XCTAssert(a == 0.6)
        XCTAssert(b == 0.7)
        
        let c: CGFloat = 60.5%
        let d = 70.5%
        XCTAssert(c == 0.605)
        XCTAssert(d == 0.705)
    }

    static var allTests = [
        ("testTransformAndReassign", testTransformAndReassign),
        ("testPlusMinus", testPlusMinus),
        ("testPrefix", testPrefix),
        ("testPostfix", testPostfix),
        ("testExponentInteger", testExponentInteger),
        ("testExponentFloatingPoint", testExponentFloatingPoint),
        ("testBooleanCast", testBooleanCast),
        ("testTransformAndReassign", testTransformAndReassign)
    ]
}
