//
//  Styles.swift
//  MedOum
//
//  Created by Zakaria Zair on 2023-09-21.
//

import SwiftUI


struct RoundButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.blue.opacity(0.5) : Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct AppColors {
    static let primaryColor = Color(red: 0, green: 0, blue: 0.82)
    static let secondaryColor = Color(red: 0, green: 0, blue: 0)
    static let tertiaryColor = Color(red: 1, green: 1, blue: 1)
}
