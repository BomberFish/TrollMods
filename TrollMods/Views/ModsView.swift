//
//  ModsView.swift
//  TrollMods
//
//  Created by Chris on 2022-12-31.
//

import SwiftUI

func respring() {
    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
        guard let window = UIApplication.shared.windows.first else { return }
        while true {
            window.snapshotView(afterScreenUpdates: false)
        }
    }
}

struct ModsList: View {
    var body: some View {
        List {
            // TODO: Move to a for loop.
            NavigationLink(destination: TrollMods.TrollLockView()) {
                HStack {
                    Image("TrollLock")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .cornerRadius(8)
                    Text("TrollLock")
                }
            }
            
            NavigationLink(destination: TrollMods.TrollFXView()) {
                HStack {
                    Image("TrollFX")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .cornerRadius(8)
                    Text("TrollFX")
                }
            }
            
            NavigationLink(destination: TrollMods.TrollHomeView()) {
                HStack {
                    Image("trollhome")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .cornerRadius(8)
                    Text("TrollHome")
                }
            }
            NavigationLink(destination: TrollMods.DirtyCOWView()) {
                HStack {
                    Image("DirtyCow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .cornerRadius(8)
                    Text("DirtyCOW")
                }
            }
            NavigationLink(destination: TrollMods.DOOMView()) {
                HStack {
                    //TODO: Icon!!
                    Image("DOOM")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .cornerRadius(8)
                    Text("DOOM RFExposure")
                }
            }
        }
        .navigationTitle("TrollMods")
    }
}

struct ModsNavigation<Content>: View where Content: View {
    @ViewBuilder var content: () -> Content;
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack(root: content)
        } else {
            NavigationView(content: content)
        }
    }
}

struct ModsView: View {
    var body: some View {
        ModsNavigation {
            ModsList()
            .toolbar {
                Button(action: respring) {
                    Image(systemName: "arrow.triangle.2.circlepath")
                }
            }
        }
    }
}
