//
//  ContentView.swift
//  Citation Wizard
//
//  Created by Liesel on 18/6/20.
//  Copyright © 2020 Liesel Downes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var selectedBibliography: Bibliography?
    
    var body: some View {
        NavigationView {
            NavigationMaster(selectedBibliography: $selectedBibliography)
            if selectedBibliography != nil {
                ViewBibliography(bibliography: selectedBibliography!)
            }
        }
        .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
