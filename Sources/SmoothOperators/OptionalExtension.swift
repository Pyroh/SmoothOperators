//
//  OptionalExtension.swift
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


public extension Optional {
    
    /// Returns true if `rhs` is not nil.
    /// - Parameter rhs: The value to test against nil.
    @inlinable
    static prefix func !!(rhs: Self) -> Bool {
        return rhs != nil
    }
    
    static func ?=(lhs: inout Self, rhs: @autoclosure () throws -> Wrapped) rethrows {
        guard lhs == nil else { return }
        lhs = try rhs()
    }
}

public extension Optional where Wrapped == Bool {
    
    /// Returns the wrapped `Bool` value if not `nil`. `false` otherwise.
    @inlinable
    static prefix func !!(rhs: Self) -> Bool {
        rhs ?? false
    }
}
