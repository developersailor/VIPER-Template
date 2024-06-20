import SwiftUI

struct ___VARIABLE_ModuleName___View: View {
    @ObservedObject var presenter: ___VARIABLE_ModuleName___Presenter

    var body: some View {
        VStack {
            if let error = presenter.error {
                Text(error)
                    .foregroundColor(.red)
            } else {
                Text(presenter.data)
            }
        }
        .onAppear {
            presenter.onViewDidLoad()
        }
    }
}

struct ___VARIABLE_ModuleName___View_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let router = ___VARIABLE_ModuleName___Router()
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        return ___VARIABLE_ModuleName___View(presenter: presenter)
    }
}
