precedencegroup ExponentationPrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
    lowerThan: BitwiseShiftPrecedence
}

prefix operator ++
prefix operator --
prefix operator !!

postfix operator ++
postfix operator --

postfix operator -
postfix operator +

infix operator <-: AssignmentPrecedence

infix operator **: ExponentationPrecedence

infix operator >?: ComparisonPrecedence
infix operator >=?: ComparisonPrecedence

infix operator <?: ComparisonPrecedence
infix operator <=?: ComparisonPrecedence

infix operator ==?: ComparisonPrecedence
infix operator !=?: ComparisonPrecedence


/// Transform `lhs` using `rhs` and stores it in `lhs`.
/// - Parameters:
///   - lhs: A read write variable.
///   - rhs: A transforming closure.
@inlinable
public func <-<T>(lhs: inout T, rhs: (T) throws -> T) rethrows {
    lhs = try rhs(lhs)
}
