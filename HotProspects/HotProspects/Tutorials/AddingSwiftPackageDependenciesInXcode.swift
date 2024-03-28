//
//  AddingSwiftPackageDependenciesInXcode.swift
//  HotProspects
//
//  Created by Brandon Johns on 3/28/24.
//

import SwiftUI
import SamplePackage

struct AddingSwiftPackageDependenciesInXcode: View {
    let possibleNumbers = 1...60
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.formatted()
    }
    var body: some View {
           Text(results)
       }
}

#Preview {
    AddingSwiftPackageDependenciesInXcode()
}
