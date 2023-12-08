//
//  AddingCodableConformanceToAtObservableClass.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    
    var name = "Taylor"
}


struct AddingCodableConformanceToAtObservableClass: View {
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    AddingCodableConformanceToAtObservableClass()
}
