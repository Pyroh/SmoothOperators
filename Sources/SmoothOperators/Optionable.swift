//
//  File.swift
//  
//
//  Created by Pierre TACCHI on 03/03/2020.
//

public extension Equatable {
    
    /// Returns `lhs` if it is equal to the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Equatable` value.
    ///   - rhs: An expression of `Equatable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func ==?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs == rhs() ? lhs : nil }
    
    /// Returns `lhs` if it is not equal to the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Equatable` value.
    ///   - rhs: An expression of `Equatable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func !=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs != rhs() ? lhs : nil }
}

public extension Comparable {
    
    /// Returns `lhs` if it is greater than the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Comparable` value.
    ///   - rhs: An expression of `Comparable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func >?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs > rhs() ? lhs : nil }
    
    /// Returns `lhs` if it is lesser than the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Comparable` value.
    ///   - rhs: An expression of `Comparable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func <?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs < rhs() ? lhs : nil }
    
    /// Returns `lhs` if it is greater than or equal to the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Comparable` value.
    ///   - rhs: An expression of `Comparable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func >=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs >= rhs() ? lhs : nil }
    
    /// Returns `lhs` if it is lesser than or equal to the result of `rhs`. `nil` otherwise.
    /// - Parameters:
    ///   - lhs: An `Comparable` value.
    ///   - rhs: An expression of `Comparable` type.
    /// - Returns: An optional carrying `lhs` or `nil`.
    @inlinable static func <=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs <= rhs() ? lhs : nil }
}
