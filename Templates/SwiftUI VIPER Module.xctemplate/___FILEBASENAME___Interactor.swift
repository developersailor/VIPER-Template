import Foundation

final class ___VARIABLE_ModuleName___Interactor: PresenterToInteractor___VARIABLE_ModuleName___Protocol {

    weak var presenter: InteractorToPresenter___VARIABLE_ModuleName___Protocol?

    func fetchData() {
        // Veri çekme işlemi burada yapılır. Başarılı olursa:
        presenter?.dataFetchedSuccess("Fetched Data")
        // Başarısız olursa:
        // presenter?.dataFetchFailed("Error fetching data")
    }
}
