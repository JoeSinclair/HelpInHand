//
//  ContentView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 30/3/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let organisations = [
        Organisation(name: "Charity A", donationHistory: [10.0, 20.0, 30.0], description: "A charity that helps people in need."),
        Organisation(name: "Charity B", donationHistory: [5.0, 15.0, 25.0], description: "A charity that supports education."),
        Organisation(name: "Charity C", donationHistory: [8.0, 18.0, 28.0], description: "A charity that fights against poverty.")
    ]
    
    var body: some View {
        NavigationView {
            TabView {
                OrganisationListView(organisations: organisations)
                    .tabItem {
                        Image(systemName: "1.circle")
                    }
                OrganisationListView(organisations: organisations)
                    .tabItem {
                        Image(systemName: "2.circle")
                    }
                    .tabViewStyle(/*@START_MENU_TOKEN@*/DefaultTabViewStyle()/*@END_MENU_TOKEN@*/)
                
            }
        }
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
