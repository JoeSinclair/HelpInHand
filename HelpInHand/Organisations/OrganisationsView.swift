//
//  OrganisationsView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct OrganisationListView: View {
    var organisations: [Organisation]
    @State var selectedOrganisation = "selectedOrganisation"
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("\(selectedOrganisation)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.leading)
                    Spacer()
                }
                GeometryReader { geo in
                    ScrollView {
                        VStack(spacing: 16){
                            ForEach(organisations) { organisation in
                                Button(action: {
                                    selectedOrganisation = organisation.name
                                }) {
                                    OrganisationView(organisation: organisation)
                                        .frame(width: geo.size.width, height: 100) .background(Color.white)
                                        .cornerRadius(8)
                                        .shadow(radius: 4)
                                }
                            }
                        }.padding(.top)
                    }
                }
            }
            .navigationBarTitle(Text("Organisations").font(.largeTitle))
            .navigationBarItems(trailing: Button(action: {
                //
            }, label: {
                Image(systemName: "plus")
            }))
        }
    }
}


struct OrganisationView: View {
    var organisation: Organisation
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(organisation.name).font(.title2).fontWeight(.bold)
            Spacer()
            Text(organisation.description)
            Spacer()
        }.foregroundColor(.black)
    }
}
