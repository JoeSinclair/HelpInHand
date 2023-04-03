//
//  ContentView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 30/3/2023.
//

import SwiftUI
import CoreData
let organisations = [
    Organisation(name: "Charity A", donationHistory: [10.0, 20.0, 30.0], description: "A charity that helps people in need.", orgPic: "Yellow Flower"),
    Organisation(name: "Charity B", donationHistory: [5.0, 15.0, 25.0], description: "A charity that supports education.",orgPic: "Yellow Flower"),
    Organisation(name: "Charity C", donationHistory: [8.0, 18.0, 28.0], description: "A charity that fights against poverty.",orgPic: "Yellow Flower")
]

struct ContentView: View {
    @State var selectedOrganisation = "selectedOrganisation"
    
    var body: some View {
        TabView {
            VStack {
                NavigationBarView(title: "Organisations", currentOrg: selectedOrganisation, userName: "Joe Sinclair", profileImage: "Bird")
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        ForEach(organisations) { org in
                            Button {
                                selectedOrganisation = org.name
                            } label: {
                                OrganisationRowView(selectedOrganisation: $selectedOrganisation, org: org)
                            }.foregroundColor(.black)
                        }
                    }.padding(.top, 16)
                }
            }
                .tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                }
            Text("Screen 2")
                .tabItem {
                    Image(systemName: "2.circle")
                }
                .tabViewStyle(DefaultTabViewStyle())
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

