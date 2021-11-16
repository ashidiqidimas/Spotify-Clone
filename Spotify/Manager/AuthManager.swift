//
//  AuthManager.swift
//  Spotify
//
//  Created by Dimas on 13/11/21.
//

import Foundation

final class AuthManager {
	static let shared = AuthManager()
	
	private init() {
		
	}
	
	var isSignedIn: Bool {
		return false
	}
	
	private var acccessToken: String? {
		return nil
	}
	
	private var refreshToken: String? {
		return nil
	}
	
	private var tokenExpirationDate: Date? {
		return nil
	}
	
	private var shouldRefreshToken: Bool {
		return false
	}
}
