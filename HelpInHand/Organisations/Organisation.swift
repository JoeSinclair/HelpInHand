//
//  Organisation.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 31/3/2023.
//

import Foundation
import SwiftUI
import Combine

class Organisation: Identifiable, Hashable {
    static func == (lhs: Organisation, rhs: Organisation) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    let id = NSUUID().uuidString
    @Published var name: String
    @Published var donationHistory: [Double]
    @Published var description: String
    @Published var orgPic: String
    
    init(name: String, donationHistory: [Double], description: String, orgPic: String) {
        self.name = name
        self.donationHistory = donationHistory
        self.description = description
        self.orgPic = orgPic
    }
    
    func createRandomOrganization() -> Organisation {
        let names = ["Red Cross", "UNICEF", "World Wildlife Fund", "Doctors Without Borders", "Save the Children", "Habitat for Humanity", "Oxfam", "Greenpeace", "Feeding America", "The Nature Conservancy"]
        let descriptions = ["A humanitarian organization that provides emergency assistance, disaster relief, and education inside the United States", "A United Nations program that provides long-term humanitarian and developmental assistance to children and mothers in developing countries", "An international non-governmental organization that aims to conserve nature and reduce the most pressing threats to the diversity of life on Earth", "An international medical humanitarian organization that provides emergency aid in war zones and other areas of conflict", "An international non-governmental organization that promotes children's rights, provides relief and helps support children in developing countries", "A non-governmental organization that aims to provide safe, decent, and affordable housing to people in need", "An international confederation of 20 non-governmental organizations working to alleviate global poverty", "An international environmental organization that aims to protect and conserve the natural environment", "A United States-based nonprofit organization that is a nationwide network of more than 200 food banks that feed more than 46 million people through food pantries, soup kitchens, shelters, and other community-based agencies", "A global environmental nonprofit organization that works to create a world where people and nature can thrive together"]
        let orgPics = ["Yellow Flower"]
        let randomIndex = Int.random(in: 0..<names.count)
        let name = names[randomIndex]
        let donationHistory = Array(repeating: Double.random(in: 0..<1000), count: 12)
        let description = descriptions[randomIndex]
        let orgPic = orgPics[randomIndex]
        return Organisation(name: name, donationHistory: donationHistory, description: description, orgPic: orgPic)
    }
}

class OrganisationStore: ObservableObject {
    @Published var organisations: [Organisation] = []
}
