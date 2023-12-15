//
//  ContentView.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/13/23.
//

import CoreImage
import CoreImage.CIFilterBuiltins

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    @State private var selectedItem: PhotosPickerItem?
    
    @State private var filterIntensity = 0.5
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                PhotosPicker(selection: $selectedItem) {
                    if let processedImage {
                        processedImage
                            .resizable()
                            .scaledToFit()
                    } else {
                        ContentUnavailableView("No Picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                    }
                }
                Spacer()
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                .padding(.vertical)
                
                HStack {
                    Button("Change Filter", action: changeFilter)
                }
                Spacer()
                
            }
        }
        .padding([.horizontal, .bottom])
        .navigationTitle("InstaFilter")
        .onChange(of: selectedItem, loadImage)
    }
    
    func changeFilter() {
        
    }
    
    func loadImage() {
        Task {
            guard let imageData = try await selectedItem?.loadTransferable(type: Data.self) else  {return}
            guard let inputImage = UIImage(data: imageData) else {return}
            
            // more
        }
    }
}

#Preview {
    ContentView()
}
