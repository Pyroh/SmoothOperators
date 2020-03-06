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
