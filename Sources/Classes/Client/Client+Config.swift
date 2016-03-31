//
//  Client+Config.swift
//  GithubSwift
//
//  Created by Khoa Pham on 27/03/16.
//  Copyright © 2016 Hyper Interaktiv AS. All rights reserved.
//

import Foundation

public extension Client {
  public struct Config {
    // Sets the HTTP User-Agent for the current app. This will have no effect on any
    // clients that have already been created.
    public static var userAgent: String = ""
    
    // Sets OAuth client information for the current app.
    //
    // If you only ever use +unauthenticatedClientWithUser:, you do not need to use this
    // method. Otherwise, you must invoke this method before making any
    // authentication requests.
    //
    // The information you provide here must match a registered OAuth application on
    // the server. You can create a new OAuth application via
    // https://github.com/settings/applications/new.
    //
    // Note that, because the `clientSecret` will be embedded in your app and sent
    // over the user's internet connection, the secret isn't terribly secret. To
    // help mitigate the risk of a web app stealing and using your `clientID` and
    // `clientSecret`, set the Callback URL for your OAuth app to a URL you control.
    // Even if this URL is never used by your app, this will prevent other apps
    // from using your client ID and secret in a web flow.
    //
    // This method is thread-safe, and must be invoked before making any
    // authentication requests. This will have no effect on any clients that have
    // already been created.
    //
    // clientID     - The OAuth client ID for your application. This must not be
    //                nil.
    // clientSecret - The OAuth client secret for your application. This must not be
    //                nil.
    
    public static var clientID: String = ""
    public static var clientSecret: String = ""
  }
  
  public struct Constant {

    public static let apiVersion = "v3"
    
    /// See https://developer.github.com/changes/2014-12-08-removing-authorizations-token/
    public static let miragePreviewAPIVersion = "mirage-preview"
    
    /// See https://developer.github.com/changes/2014-12-08-organization-permissions-api-preview/
    public static let moondragonPreviewAPIVersion = "moondragon"
    
    public static let notModifiedStatusCode = 304
    public static let oneTimePasswordHeaderField = "X-GitHub-OTP"
    public static let oAuthScopesHeaderField = "X-OAuth-Scopes"
    
    // An environment variable that, when present, will enable logging of all
    // responses.
    public static let responseLoggingEnvironmentKey = "LOG_API_RESPONSES"
    
    // An environment variable that, when present, will log the remaining API calls
    // allowed before the rate limit is enforced.
    public static let rateLimitLoggingEnvironmentKey = "LOG_REMAINING_API_CALLS"
  }
}