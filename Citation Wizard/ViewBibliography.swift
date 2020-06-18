//
//  ViewBibliography.swift
//  Citation Wizard
//
//  Created by Liesel on 18/6/20.
//  Copyright © 2020 Liesel Downes. All rights reserved.
//

import SwiftUI

struct ViewBibliography: View {
    
    var bibliography: Bibliography
    
    @State var showingAddCitationSheet = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack() {
                    Text(bibliography.name!).font(.title).fontWeight(.heavy)
                    Spacer()
                    Button(action: {
                        self.showingAddCitationSheet.toggle()
                    }) {
                        Text("Add Citation")
                    }.sheet(isPresented: $showingAddCitationSheet, content: {
                        AddCitationSheet()
                    })
                    
                }
                
            }
            .padding()
            .frame(maxWidth: 700)
        }
    }
}
