//
// MapTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MapTest: Codable {

    public enum MapOfEnumString: String, Codable, CaseIterable {
        case upper = "UPPER"
        case lower = "lower"
    }
    public private(set) var mapMapOfString: [String: [String: String]]?
    public private(set) var mapOfEnumString: [String: String]?
    public private(set) var directMap: [String: Bool]?
    public private(set) var indirectMap: StringBooleanMap?

    public init(mapMapOfString: [String: [String: String]]? = nil, mapOfEnumString: [String: String]? = nil, directMap: [String: Bool]? = nil, indirectMap: StringBooleanMap? = nil) {
        self.mapMapOfString = mapMapOfString
        self.mapOfEnumString = mapOfEnumString
        self.directMap = directMap
        self.indirectMap = indirectMap
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mapMapOfString = "map_map_of_string"
        case mapOfEnumString = "map_of_enum_string"
        case directMap = "direct_map"
        case indirectMap = "indirect_map"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(mapMapOfString, forKey: .mapMapOfString)
        try container.encodeIfPresent(mapOfEnumString, forKey: .mapOfEnumString)
        try container.encodeIfPresent(directMap, forKey: .directMap)
        try container.encodeIfPresent(indirectMap, forKey: .indirectMap)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        mapMapOfString = try container.decodeIfPresent([String: [String: String]].self, forKey: .mapMapOfString)
        mapOfEnumString = try container.decodeIfPresent([String: String].self, forKey: .mapOfEnumString)
        directMap = try container.decodeIfPresent([String: Bool].self, forKey: .directMap)
        indirectMap = try container.decodeIfPresent(StringBooleanMap.self, forKey: .indirectMap)
    }
}

extension MapTest: Hashable {
    public static func == (lhs: MapTest, rhs: MapTest) -> Bool {
        lhs.mapMapOfString == rhs.mapMapOfString &&
        lhs.mapOfEnumString == rhs.mapOfEnumString &&
        lhs.directMap == rhs.directMap &&
        lhs.indirectMap == rhs.indirectMap
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(mapMapOfString?.hashValue)
        hasher.combine(mapOfEnumString?.hashValue)
        hasher.combine(directMap?.hashValue)
        hasher.combine(indirectMap?.hashValue)
        
    }
}

