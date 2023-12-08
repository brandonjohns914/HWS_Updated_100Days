//
//  ValidatingAndDisablingForms.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import SwiftUI

struct ValidatingAndDisablingForms: View {
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            Section {
                Button("Create account") {
                    print("Creating accout...")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    ValidatingAndDisablingForms()
}
