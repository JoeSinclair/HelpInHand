//
//  NavigationBarView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                }
            }
            .navigationBarTitle(Text("(selectedOrganisation)"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                // Button action here
            }, label: {
                Image(systemName: "plus")
            }))
            .overlay(
                VStack(alignment: .leading) {
                    Text("Subtitle")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.top, 12)
                .padding(.horizontal)
                , alignment: .topLeading
            )
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
