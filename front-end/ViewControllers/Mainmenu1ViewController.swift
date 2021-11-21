import UIKit

class Mainmenu1ViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var menu: UIButton!
	@IBOutlet private weak var ekranResmi20211119200706ImageView: UIImageView!
	@IBOutlet private weak var group11ImageView: UIImageView!
	@IBOutlet private weak var group9355ImageView: UIImageView!
	@IBOutlet private weak var group9356ImageView: UIImageView!
	@IBOutlet private weak var newsImageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension Mainmenu1ViewController {
	private func setupViews() {

		menu.setImage(UIImage(named: "path11238") , for: .normal)



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
