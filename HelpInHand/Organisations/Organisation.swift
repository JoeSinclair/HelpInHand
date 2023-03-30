//
//  Organisation.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import Foundation
import SwiftUI
import Combine

class Organisation: Identifiable {
    var name: String
    var donationHistory: [Double]
    var description: String
    
    init(name: String, donationHistory: [Double], description: String) {
        self.name = name
        self.donationHistory = donationHistory
        self.description = description
    }
}

class OrganisationStore: ObservableObject {
    @Published var organisations: [Organisation] = []
}
