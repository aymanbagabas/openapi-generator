//
// ClassModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



/** Model for testing model with \&quot;_class\&quot; property */
internal struct ClassModel: Codable {

    internal var `class`: String?

    internal init(`class`: String? = nil) {
        self.`class` = `class`
    }
    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case `class` = "_class"
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(`class`, forKey: .`class`)
    }

    // Decodable protocol methods

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        `class` = try container.decodeIfPresent(String.self, forKey: .`class`)
    }
}

extension ClassModel: Hashable {
    internal static func == (lhs: ClassModel, rhs: ClassModel) -> Bool {
        lhs.`class` == rhs.`class`
        
    }

    internal func hash(into hasher: inout Hasher) {
        hasher.combine(`class`?.hashValue)
        
    }
}

