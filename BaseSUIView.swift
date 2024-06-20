import SwiftUI

struct BaseView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content
            .background(Theme.defaultTheme.themeColor.backgroundColor) // Tema rengine uygun
            .onAppear {
                setupView()
            }
    }

    func setupView() {
        // Ekstra ayarlar burada yapılabilir
    }
}

// Örnek kullanım

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
