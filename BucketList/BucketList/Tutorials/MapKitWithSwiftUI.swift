//
//  MapKitWithSwiftUI.swift
//  BucketList
//
//  Created by Brandon Johns on 3/26/24.
//

import SwiftUI
import MapKit

struct Locations: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}


struct MapKitWithSwiftUI: View {
    let locations = [
        Locations(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Locations(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]

    var body: some View {
        Map {
            ForEach(locations) { location in
                Marker(location.name, coordinate: location.coordinate)
            }
        }
    }
}

#Preview {
    MapKitWithSwiftUI()
}
