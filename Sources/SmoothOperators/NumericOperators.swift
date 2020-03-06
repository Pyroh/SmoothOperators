//
//  NumericOperators.swift
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

import Foundation

public extension Strideable {

// MARK: - Operator ++

/// Increments the given value by one unit and returns it.
    @discardableResult @inlinable
    static prefix func ++(rhs: inout Self) -> Self  {
        rhs = rhs.advanced(by: 1)
        return rhs
    }

    /// Returns the given value and increments it by one unit.
    @discardableResult @inlinable
    static postfix func ++(lhs: inout Self) -> Self {
        defer { lhs = lhs.advanced(by: 1) }
        return lhs
    }
    // MARK: - Operator --

    /// Decrements the given value by one unit and returns it.
    @discardableResult @inlinable
    static prefix func --(rhs: inout Self) -> Self  {
        rhs = rhs.advanced(by: -1)
        return rhs
    }

    /// Returns the given value and decrements it by one unit.
    @discardableResult @inlinable
    static postfix func --(lhs: inout Self) -> Self {
        defer { lhs = lhs.advanced(by: -1) }
        return lhs
    }

    // MARK: -

    /// Returns the given value incremented by one unit.
    @inlinable
    static postfix func +(lhs: Self) -> Self {
        return lhs.advanced(by: 1)
    }

    /// Returns the given value decremented by one unit.
    @inlinable
    static postfix func -(lhs: Self) -> Self {
        return lhs.advanced(by: -1)
    }
}
