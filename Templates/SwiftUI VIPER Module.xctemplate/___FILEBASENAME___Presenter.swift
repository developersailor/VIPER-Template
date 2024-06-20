import Foundation
import Combine

final class ___VARIABLE_ModuleName___Presenter: ObservableObject, ViewToPresenter___VARIABLE_ModuleName___Protocol {

    @Published var data: String = ""
    @Published var error: String?

    var interactor: PresenterToInteractor___VARIABLE_ModuleName___Protocol?
    var router: PresenterToRouter___VARIABLE_ModuleName___Protocol?

    func onViewDidLoad() {
        interactor?.fetchData()
    }
}

extension ___VARIABLE_ModuleName___Presenter: InteractorToPresenter___VARIABLE_ModuleName___Protocol {
    func dataFetchedSuccess(_ data: String) {
        self.data = data
    }

    func dataFetchFailed(_ error: String) {
        self.error = error
    }
}
