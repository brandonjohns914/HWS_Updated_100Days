//
//  String-EmptyChecking.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/9/23.
//

import SwiftUI

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
