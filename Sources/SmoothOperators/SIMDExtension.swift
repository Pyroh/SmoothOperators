//
//  File.swift
//  
//
//  Created by Pierre Tacchi on 20/05/22.
//

import simd

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD2 where Scalar == Float {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD3 where Scalar == Float {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD4 where Scalar == Float {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD8 where Scalar == Float {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD16 where Scalar == Float {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD2 where Scalar == Double {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD3 where Scalar == Double {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD4 where Scalar == Double {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public extension SIMD8 where Scalar == Double {
    @inlinable static func **(lhs: Self, rhs: Self) -> Self { pow(lhs, rhs) }
    @inlinable static func **(lhs: Self, rhs: Scalar) -> Self { pow(lhs, .init(repeating: rhs)) }
}
