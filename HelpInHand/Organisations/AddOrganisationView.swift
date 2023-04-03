//
//  SwiftUIView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct AddOrganisationView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Request New Organisation")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.all)
            Button {
                isPresented = false
            } label: {
                Text("Request")
            }.buttonStyle(DefaultButtonStyle())
                .padding(.all)
            Spacer()
            Spacer()
        }
    }
}

struct AddOrganisationView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrganisationView(isPresented: .constant(false))
    }
}
