//
// Cat.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Cat: Codable {

    public private(set) var className: String
    public private(set) var color: String? = "red"
    public private(set) var declawed: Bool?

    public init(className: String, color: String? = "red", declawed: Bool? = nil) {
        self.className = className
        self.color = color
        self.declawed = declawed
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case className
        case color
        case declawed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(className, forKey: .className)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(declawed, forKey: .declawed)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        className = try container.decode(String.self, forKey: .className)
        color = try container.decodeIfPresent(String.self, forKey: .color)
        declawed = try container.decodeIfPresent(Bool.self, forKey: .declawed)
    }
}

extension Cat: Hashable {
    public static func == (lhs: Cat, rhs: Cat) -> Bool {
        lhs.className == rhs.className &&
        lhs.color == rhs.color &&
        lhs.declawed == rhs.declawed
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(className.hashValue)
        hasher.combine(color?.hashValue)
        hasher.combine(declawed?.hashValue)
        
    }
}

