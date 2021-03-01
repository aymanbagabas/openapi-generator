//
// SpecialModelName.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

public final class SpecialModelName: Content {

    public var specialPropertyName: Int64?

    public init(specialPropertyName: Int64? = nil) {
        self.specialPropertyName = specialPropertyName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case specialPropertyName = "$special[property.name]"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(specialPropertyName, forKey: .specialPropertyName)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        specialPropertyName = try container.decodeIfPresent(Int64.self, forKey: .specialPropertyName)
    }
}

extension SpecialModelName: Hashable {
    public static func == (lhs: SpecialModelName, rhs: SpecialModelName) -> Bool {
        lhs.specialPropertyName == rhs.specialPropertyName
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(specialPropertyName?.hashValue)
        
    }
}

