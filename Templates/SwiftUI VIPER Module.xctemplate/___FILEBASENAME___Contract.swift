import Foundation

// MARK: - View Output (Presenter -> View)
protocol PresenterToView___VARIABLE_ModuleName___Protocol: AnyObject {
    func updateView(with data: String)
    func showError(_ error: String)
}

// MARK: - View Input (View -> Presenter)
protocol ViewToPresenter___VARIABLE_ModuleName___Protocol: AnyObject {
    func onViewDidLoad()
}

// MARK: - Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractor___VARIABLE_ModuleName___Protocol: AnyObject {
    var presenter: InteractorToPresenter___VARIABLE_ModuleName___Protocol? { get set }
    func fetchData()
}

// MARK: - Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenter___VARIABLE_ModuleName___Protocol: AnyObject {
    func dataFetchedSuccess(_ data: String)
    func dataFetchFailed(_ error: String)
}

// MARK: - Router Input (Presenter -> Router)
protocol PresenterToRouter___VARIABLE_ModuleName___Protocol: AnyObject {
    static func createModule() -> ___VARIABLE_ModuleName___View
    func navigateToSomewhere()
}
