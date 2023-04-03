//
//  OrganisationsView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct OrganisationRowView: View {
    @Binding var selectedOrganisation: String
    let org: Organisation
    

    var body: some View {
        ZStack {
            if selectedOrganisation == org.name {
                Rectangle()
                    .padding(-16)
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 0.25))
            }
            HStack {
                Image(org.orgPic)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 8) {
                    Text(org.name)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text(org.description)
                        .font(.caption)
                }
                Spacer()

                Image(systemName: "arrow.up.forward.square.fill")
                    .font(.title)
            
            }
        }.padding(.horizontal)
    }
}


struct OrganisationRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrganisationRowView(selectedOrganisation: .constant("Charity Preview"), org: Organisation(name: "Charity A", donationHistory: [10.0, 20.0, 30.0], description: "A charity that helps people in need.", orgPic: "Yellow Flower"))
    }
}
