import SwiftUI

final class ___VARIABLE_ModuleName___Router: PresenterToRouter___VARIABLE_ModuleName___Protocol {

    static func createModule() -> ___VARIABLE_ModuleName___View {
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let router = ___VARIABLE_ModuleName___Router()

        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter

        return ___VARIABLE_ModuleName___View(presenter: presenter)
    }

    func navigateToSomewhere() {
        // Navigasyon işlemleri burada yapılır.
    }
}
