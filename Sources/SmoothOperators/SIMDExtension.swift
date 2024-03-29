//
//  File.swift
//  
//
//  Created by Pierre Tacchi on 20/05/22.
//

import simd

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD2 where Scalar == Float {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD3 where Scalar == Float {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD4 where Scalar == Float {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD8 where Scalar == Float {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD16 where Scalar == Float {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD2 where Scalar == Double {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD3 where Scalar == Double {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD4 where Scalar == Double {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD8 where Scalar == Double {
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable static func **(lhs: Scalar, rhs: Self) -> Self { pow(.init(repeating: lhs), rhs) }
}
