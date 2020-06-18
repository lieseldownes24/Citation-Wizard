import SwiftUI

struct NavigationMaster: View {
    @Binding var selectedBibliography: Bibliography?
    
    var body: some View {
       VStack {

       BibligraphyList(
        selectedBibliography: $selectedBibliography
       )
       .listStyle(SidebarListStyle())
       
       }
       .frame(minWidth: 225, maxWidth: 300)
    }
}
