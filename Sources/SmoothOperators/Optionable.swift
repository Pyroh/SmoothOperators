//
//  File.swift
//  
//
//  Created by Pierre TACCHI on 03/03/2020.
//

public extension Equatable {
    @inlinable static func ==?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs == rhs() ? lhs : nil }
    @inlinable static func !=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs != rhs() ? lhs : nil }
}

public extension Comparable {
    @inlinable static func >?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs > rhs() ? lhs : nil }
    @inlinable static func <?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs < rhs() ? lhs : nil }
        
    @inlinable static func >=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs >= rhs() ? lhs : nil }
    @inlinable static func <=?(lhs: Self, rhs: @autoclosure () -> Self) -> Self? { lhs <= rhs() ? lhs : nil }
}
