precedencegroup ExponentationPrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
}

prefix operator ++
prefix operator --
prefix operator !!

postfix operator ++
postfix operator --

postfix operator -
postfix operator +

infix operator **: ExponentationPrecedence

infix operator >?: ComparisonPrecedence
infix operator >=?: ComparisonPrecedence

infix operator <?: ComparisonPrecedence
infix operator <=?: ComparisonPrecedence

infix operator ==?: ComparisonPrecedence
infix operator !=?: ComparisonPrecedence
