//
//  NavigationBarView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct NavigationBarView: View {
    let title: String
    let currentOrg: String
    let userName: String
    let profileImage: String
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            HStack {
                Image("\(profileImage)")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                Text("\(userName)")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "plus.app")
                        .font(.title)
                        .foregroundColor(.black)
                }
                .sheet(isPresented: $isPresented) {
                    AddOrganisationView(isPresented: $isPresented)
                }

            }
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(title)")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    Text("\(currentOrg)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            

        }.padding()
            
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(title: "Title", currentOrg: "Org", userName: "Name", profileImage: "Bird")
    }
}
