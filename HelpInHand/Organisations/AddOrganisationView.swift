//
//  SwiftUIView.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import SwiftUI

struct AddOrganisationView: View {
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Request New Organisation")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all)
                Button {
                    self.isPresented = false
                    //add random
                    //go back to prev screen
                } label: {
                    Text("Request")
                }.buttonStyle(DefaultButtonStyle())
                    .padding(.all)
                Spacer()
                Spacer()
            }
        }
    }
}

struct AddOrganisationView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrganisationView()
    }
}
