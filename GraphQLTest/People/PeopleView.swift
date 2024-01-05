import SwiftUI
import StarWarsAPI

struct PeopleView<ViewModel: PeopleViewModelProtocol>: View {
    @ObservedObject private var viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.planetas,id:\.id) { planeta in
                    Text("Planeta: \(planeta.name ?? "")")
                }
            }
        }
    }
}

#Preview {
    PeopleView(viewModel: PeopleViewModel())
}
