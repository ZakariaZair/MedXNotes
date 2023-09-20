//
//  NoteView.swift
//  MedOum
//
//  Created by Zakaria Zair on 2023-09-26.
//

import SwiftUI

struct NoteView: View {
    let note: NoteData
    var body: some View {
        Text(note.rawData)
    }
}
 
#Preview {
    NoteView(note: NoteData(rawData: "Hello World"))
}
