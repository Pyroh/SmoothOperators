//
//  BinaryFloatingPointExtension.swift
//  Sylex
//
//  Created by Pierre TACCHI on 13/08/2018.
//

#if !os(macOS)
import CoreGraphics
#else
import Foundation
#endif


public extension BinaryFloatingPoint {

    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable
    static func **<T: BinaryInteger>(lhs: Self, rhs: T) -> Self {
        return Self(pow(CGFloat(lhs), CGFloat(rhs)))
    }

    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    static func **<T: BinaryFloatingPoint>(lhs: Self, rhs: T) -> Self {
        return Self(pow(CGFloat(lhs), CGFloat(rhs)))
    }
}
