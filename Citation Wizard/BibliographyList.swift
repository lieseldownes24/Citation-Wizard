import SwiftUI

struct BibligraphyList: View {

    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Bibliography.getAllBibliographies()) var bibliographies: FetchedResults<Bibliography>

    @Binding var selectedBibliography: Bibliography?
    @State private var newBibliography = ""

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("New bibliography").font(.caption).fontWeight(.bold)
                    Spacer()
                }
                HStack {
                    TextField("Title", text: self.$newBibliography)
                    Button(action: {
                        let newBibliography = Bibliography(context: self.managedObjectContext)
                        newBibliography.name = self.newBibliography
                        newBibliography.createdAt = Date()
                        
                        do {
                            try self.managedObjectContext.save()
                        } catch {
                            print(error)
                        }
                        
                        self.newBibliography = ""
                        
                    }) {
                        Text("Create")
                    }
                }
            }.padding(10)
            Divider()
            List(selection: $selectedBibliography) {
                ForEach(bibliographies) { bibliography in
                    BibliographyRow(bibliography: bibliography).tag(bibliography)
                }
            }
        }
    }
}
