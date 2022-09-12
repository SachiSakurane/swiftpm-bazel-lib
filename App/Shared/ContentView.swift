//
//  ContentView.swift
//  Shared
//
//  Created by Sachi Sakurane on 2022/09/11.
//

import SwiftUI
import CppCoreLib

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
        Button("say") {
            let machine = make_machine("yo waiwai")
            say_machine(machine)
            destory_machine(machine)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
