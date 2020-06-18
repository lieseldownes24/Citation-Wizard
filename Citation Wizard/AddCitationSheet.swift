//
//  AddCitationSheet.swift
//  Citation Wizard
//
//  Created by Liesel on 18/6/20.
//  Copyright © 2020 Liesel Downes. All rights reserved.
//

import SwiftUI

struct AddCitationSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedCitationType = ""
    @State private var citationTypes = ["Website"]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Create citation").font(.headline).fontWeight(.medium)
            Text("What are you citing?")
            Picker(selection: $selectedCitationType, label: Text("Select a type")) {
                ForEach(0 ..< citationTypes.count) {
                    Text(self.citationTypes[$0]).tag($0)
                }
            }
            Spacer()
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                }
            }
        }.padding()
            .frame(minWidth: 300)
    }
}

struct AddCitationSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddCitationSheet()
    }
}
