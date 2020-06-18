//
//  BibliographyRow.swift
//  Citation Wizard
//
//  Created by Liesel on 18/6/20.
//  Copyright © 2020 Liesel Downes. All rights reserved.
//


import SwiftUI

struct BibliographyRow: View {
    var bibliography: Bibliography

    var body: some View {
        HStack(alignment: .center) {

            VStack(alignment: .leading) {
                Text(bibliography.name!)
                    .truncationMode(.tail)
                    .frame(minWidth: 20)
            }
        }
    }
}
