//
// AnotherFakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class AnotherFakeAPI {

    public enum Call123testSpecialTags {
        case http200(value: Client?, raw: ClientResponse)
        case http0(value: Client?, raw: ClientResponse)
    }

    /**
     To test special tags

     PATCH /another-fake/dummy

     To test special tags and operation ID starting with number

     - parameter body: (body) client model 
     - returns: `EventLoopFuture` of `Call123testSpecialTags` 
     */
    open class func call123testSpecialTags(body: Client, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<Call123testSpecialTags> {
        let path = "/another-fake/dummy"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PATCH, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            try request.content.encode(body)
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> Call123testSpecialTags in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Client.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Client.self), raw: response)
            }
        }
    }


}
