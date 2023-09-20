//
//  Interfaces.swift
//  MedOum
//
//  Created by Zakaria Zair on 2023-09-26.
//

import Foundation
import SwiftUI


struct MainButtonData {
    let imageName: String
    let name: String
    let sickData: [SicknessButtonData]
}

struct SicknessButtonData {
    let imageName: String
    let name: String
    let note: NoteData
}

struct NoteData {
    let rawData: String
}

struct CustomDivider: View {
    let color: Color
    let width: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
