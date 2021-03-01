//
// CatAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct CatAllOf: Codable {

    internal var declawed: Bool?

    internal init(declawed: Bool? = nil) {
        self.declawed = declawed
    }
    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case declawed
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(declawed, forKey: .declawed)
    }

    // Decodable protocol methods

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        declawed = try container.decodeIfPresent(Bool.self, forKey: .declawed)
    }
}

extension CatAllOf: Hashable {
    internal static func == (lhs: CatAllOf, rhs: CatAllOf) -> Bool {
        lhs.declawed == rhs.declawed
        
    }

    internal func hash(into hasher: inout Hasher) {
        hasher.combine(declawed?.hashValue)
        
    }
}

