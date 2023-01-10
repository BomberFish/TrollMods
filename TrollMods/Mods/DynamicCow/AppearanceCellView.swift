//
//  AppearanceCellView.swift
//  DynamicCow
//
//  Created by ethernal on 08/01/23.
//

import SwiftUI

struct AppearanceCellView: View {
    
    @Binding var checkedPro: Bool
    @Binding var checkedProMax: Bool
    
    var body: some View {
        if #available(iOS 16, *) {
        listview
        .listStyle(.insetGrouped)
        .listRowSeparator(.hidden)
        .scrollDisabled(true)
        } else {
            listview
            .listStyle(.insetGrouped)
            .listRowSeparator(.hidden)
        }
    }
    @ViewBuilder
    var listview: some View {
        List{
            Section {
                HStack(spacing: 10){
                    VStack(alignment: .center, spacing: 10){
                        Image(systemName: "iphone.gen3")
                            .font(.system(size: 120))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundStyle(Color(UIColor.label).opacity(0.7))
                    
                        Text("iPhone 14\nPro")
                            .multilineTextAlignment(.center)
                        
                        Image(systemName: checkedPro ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(checkedPro ? Color(UIColor.label) : Color(UIColor.secondaryLabel))
                            .font(.title)
                            .padding([.horizontal, .top])
                                
                        
                    }//.padding()
                    .onTapGesture {
                        let impact = UIImpactFeedbackGenerator(style: .light)
                        impact.impactOccurred()
                        checkedProMax = false
                        self.checkedPro = true
                    }
                    
                    
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 10){
                        Image(systemName: "iphone.gen3")
                            .font(.system(size: 120))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundStyle(Color(UIColor.label).opacity(0.7))
                           
                        Text("iPhone 14\nPro Max")
                            .multilineTextAlignment(.center)
                        
                        Image(systemName: checkedProMax ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(checkedProMax ? Color(UIColor.label) : Color(UIColor.secondaryLabel))
                            .font(.title)
                            .padding([.horizontal, .top])
                                   
                        
                    }//.padding()
                    .onTapGesture {
                        let impact = UIImpactFeedbackGenerator(style: .light)
                          impact.impactOccurred()
                        checkedPro = false
                        self.checkedProMax = true
                    }
                    
                }
                .padding()
            } header: {
                Text("Layout")
            } footer: {
                Text("Choose between the iPhone 14 Pro and the iPhone 14 Pro Max layout before start.")
                    .padding(.top)
            }

        }
    }
    
}

/*
struct AppearanceCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceCellView()
    }
}
*/
