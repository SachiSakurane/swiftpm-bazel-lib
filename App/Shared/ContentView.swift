//
//  ContentView.swift
//  Shared
//
//  Created by Sachi Sakurane on 2022/09/11.
//

import SwiftUI
import swiftpm_bazel_lib

struct ContentView: View {
    var body: some View {
        Text(swiftpm_bazel_lib().text)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
