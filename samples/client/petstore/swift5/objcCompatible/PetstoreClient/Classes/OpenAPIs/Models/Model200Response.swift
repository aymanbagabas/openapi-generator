//
// Model200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



/** Model for testing model name starting with number */
@objc public class Model200Response: NSObject, Codable {

    public var name: Int?
    public var nameNum: NSNumber? {
        get {
            return name as NSNumber?
        }
    }
    public var _class: String?

    public init(name: Int? = nil, _class: String? = nil) {
        self.name = name
        self._class = _class
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _class = "class"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_class, forKey: ._class)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decodeIfPresent(Int.self, forKey: .name)
        _class = try container.decodeIfPresent(String.self, forKey: ._class)
    }
}


