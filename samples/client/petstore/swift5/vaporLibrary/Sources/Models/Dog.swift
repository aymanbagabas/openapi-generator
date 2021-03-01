//
// Dog.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

public final class Dog: Content {

    public var className: String
    public var color: String? = "red"
    public var breed: String?

    public init(className: String, color: String? = "red", breed: String? = nil) {
        self.className = className
        self.color = color
        self.breed = breed
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case className
        case color
        case breed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(className, forKey: .className)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(breed, forKey: .breed)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        className = try container.decode(String.self, forKey: .className)
        color = try container.decodeIfPresent(String.self, forKey: .color)
        breed = try container.decodeIfPresent(String.self, forKey: .breed)
    }
}

extension Dog: Hashable {
    public static func == (lhs: Dog, rhs: Dog) -> Bool {
        lhs.className == rhs.className &&
        lhs.color == rhs.color &&
        lhs.breed == rhs.breed
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(className.hashValue)
        hasher.combine(color?.hashValue)
        hasher.combine(breed?.hashValue)
        
    }
}

