////
////  SwitchingViewStatesWithEnums.swift
////  BucketList
////
////  Created by Brandon Johns on 3/26/24.
////
//
//import SwiftUI
//
//enum LoadingState {
//    case loading, success, failed
//}
//
//struct LoadingView: View {
//    var body: some View {
//        Text("Loading...")
//    }
//}
//
//struct SuccessView: View {
//    var body: some View {
//        Text("Success!")
//    }
//}
//
//struct FailedView: View {
//    var body: some View {
//        Text("Failed.")
//    }
//}
//
//struct SwitchingViewStatesWithEnums: View {
//    @State private var loadingState = LoadingState.loading
//    var body: some View {
//        Section("If statements"){
//            if loadingState == .loading {
//                LoadingView()
//            } else if loadingState == .success {
//                SuccessView()
//            } else if loadingState == .failed {
//                FailedView()
//            }
//        }
//        
//        Section("Switch statements") {
//            switch loadingState {
//            case .loading:
//                LoadingView()
//            case .success:
//                SuccessView()
//            case .failed:
//                FailedView()
//            }
//        }
//    }
//}
//
//#Preview {
//    SwitchingViewStatesWithEnums()
//}
