//
//  OptionalExtension.swift
//  Sylex
//
//  Created by Pierre TACCHI on 25/07/2018.
//

public extension Optional {
    
    /// Returns true if `rhs` is not nil.
    /// - Parameter rhs: The value to test against nil.
    @inlinable
    static prefix func !!(rhs: Self) -> Bool {
        return rhs != nil
    }
}
