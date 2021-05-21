//
//  SmoothOperators.swift
//
//  SmoothOperators
//
//  MIT License
//
//  Copyright (c) 2020 Pierre Tacchi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import CoreGraphics

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

postfix operator %

infix operator <- : AssignmentPrecedence
infix operator ?= : AssignmentPrecedence

infix operator ** : ExponentationPrecedence

infix operator >? : ComparisonPrecedence
infix operator >=? : ComparisonPrecedence

infix operator <? : ComparisonPrecedence
infix operator <=? : ComparisonPrecedence

infix operator ==? : ComparisonPrecedence
infix operator !=? : ComparisonPrecedence

infix operator => : ComparisonPrecedence

/// Transform `lhs` using `rhs` and stores it in `lhs`.
/// - Parameters:
///   - lhs: A read write variable.
///   - rhs: A transforming closure.
@inlinable
public func <-<T>(lhs: inout T, rhs: (T) throws -> T) rethrows {
    lhs = try rhs(lhs)
}

@inlinable
public func ?=<T>(lhs: inout T, rhs: T?) {
    lhs = rhs ?? lhs
}

@inlinable
public func =><T>(lhs: Bool, rhs: @autoclosure () throws -> T) rethrows -> T? {
    lhs ? try rhs() : nil
}

public postfix func %<I: BinaryInteger>(_ lhs: I) -> Double { Double(lhs) / 100.0 }

public postfix func %<I: BinaryFloatingPoint>(_ lhs: I) -> Double { Double(lhs) / 100.0 }

public postfix func %<I: BinaryInteger>(_ lhs: I) -> CGFloat { CGFloat(lhs) / 100.0 }

public postfix func %<I: BinaryFloatingPoint>(_ lhs: I) -> CGFloat { CGFloat(lhs) / 100.0 }

public postfix func %<I: BinaryInteger>(_ lhs: I) -> Float { Float(lhs) / 100.0 }

public postfix func %<I: BinaryFloatingPoint>(_ lhs: I) -> Float { Float(lhs) / 100.0 }
