//
//  DOOMView.swift
//  TrollMods
//
//  Created by Hariz Shirazi on 2023-01-08.
//

import SwiftUI

struct DOOMView: View {
    @State private var showInfo = false;
    var body: some View {
        VStack {
            Button("Replace the iOS Licence page! (English)", action: OverwriteLicence)
                .controlSize(.large)
                .tint(.red)
                .buttonStyle(.bordered)
        }
        .navigationTitle("DOOMLicence")
        .toolbar {
            Button(action: { showInfo = true }) {
                Image(systemName: "info.circle")
            }
            .alert(isPresented: $showInfo) {
                Alert(
                    title: Text("DOOMLicence"),
                    message: Text("Developed by BomberFish. Thanks to iSource#3334 for documenting the warranty page. DOOM is property of id Software and ZeniMax Media. All rights reserved.")
                )
            }
        }
    }
}

struct DOOMView_Previews: PreviewProvider {
    static var previews: some View {
        DOOMView()
    }
}
