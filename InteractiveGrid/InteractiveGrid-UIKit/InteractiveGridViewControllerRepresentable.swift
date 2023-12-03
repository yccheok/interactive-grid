import SwiftUI

/// A very simple SwiftUI wrapper around the `InteractiveGridViewController`.
///
/// The `updateUIViewController(_:context:)` method executes when the user selects
/// a new set of `Model`s from the demo app's "select model" menu.
struct InteractiveGridViewControllerRepresentable: UIViewControllerRepresentable {

    var models: [Model]

    func makeUIViewController(context _: Context) -> InteractiveGridViewController {
        // Pass a dummy layout to avoid "UICollectionView must be initialized with a non-nil layout parameter". We will
        // provide our own layout later on.
        let interactiveGridViewController = InteractiveGridViewController(collectionViewLayout: UICollectionViewLayout())
        
        return interactiveGridViewController
    }

    func updateUIViewController(_ viewController: InteractiveGridViewController, context _: Context) {
        viewController.models = models
    }
}
