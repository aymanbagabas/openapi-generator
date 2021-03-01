//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


@objc public class User: NSObject, Codable {

    public var _id: Int64?
    public var _idNum: NSNumber? {
        get {
            return _id as NSNumber?
        }
    }
    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var password: String?
    public var phone: String?
    /** User Status */
    public var userStatus: Int?
    public var userStatusNum: NSNumber? {
        get {
            return userStatus as NSNumber?
        }
    }

    public init(_id: Int64? = nil, username: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, password: String? = nil, phone: String? = nil, userStatus: Int? = nil) {
        self._id = _id
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.phone = phone
        self.userStatus = userStatus
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case username
        case firstName
        case lastName
        case email
        case password
        case phone
        case userStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(userStatus, forKey: .userStatus)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        _id = try container.decodeIfPresent(Int64.self, forKey: ._id)
        username = try container.decodeIfPresent(String.self, forKey: .username)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        password = try container.decodeIfPresent(String.self, forKey: .password)
        phone = try container.decodeIfPresent(String.self, forKey: .phone)
        userStatus = try container.decodeIfPresent(Int.self, forKey: .userStatus)
    }
}


