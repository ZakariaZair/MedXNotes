//
//  SickView.swift
//  MedOum
//
//  Created by Zakaria Zair on 2023-09-26.
//

import SwiftUI

struct SickView: View {
    let sickList: [SicknessButtonData]
    
    var body: some View {
        SickPage(sickList: sickList)
    }
}


struct SickPage: View {
    let sickList: [SicknessButtonData]
    
    var body: some View {
        ZStack {
            // List of Sickness
            let columns: [GridItem] = [GridItem(.flexible())]
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(sickList, id: \.name) { data in
                        SickButton(imageName: data.imageName, name: data.name, note: data.note)
                    }
                }
            }.navigationTitle("ContentNav")

        }
    }
}

struct SickButton: View {
    let imageName: String
    let name: String
    let note: NoteData
    
    var body: some View {
        VStack {
            NavigationLink (destination:
                            NoteView(note: note)
            ){
                HStack {
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30,height: 30, alignment: .leading)
                        .foregroundColor(.black)
                    Text(name)
                        .font(.subheadline)
                        .fontWeight(.light)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.black)
                    Spacer()
                        .foregroundColor(.black)
                }
            }
            CustomDivider(color: Color.blue, width: 0.7)
        }
        .padding(.leading, 20)
        .padding(.top, 10)
    }
}

#Preview {
    SickView(sickList: sicknessList)
}
