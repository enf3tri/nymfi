import UIKit

class Mainmenu2ViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var back2menus: UIButton!
	@IBOutlet private weak var bell32604462725139ImageView: UIImageView!
	@IBOutlet private weak var warningsImageView: UIImageView!
	@IBOutlet private weak var guyholdingwrenchandtoolkit30802732598579ImageView: UIImageView!
	@IBOutlet private weak var rectangle2241ImageView: UIImageView!
	@IBOutlet private weak var findPlumberImageView: UIImageView!
	@IBOutlet private weak var arrowiosforwardImageView: UIImageView!
	@IBOutlet private weak var group9351ImageView: UIImageView!
	@IBOutlet private weak var group9350ImageView: UIImageView!
	@IBOutlet private weak var group9352ImageView: UIImageView!
	@IBOutlet private weak var group9350ImageView2: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension Mainmenu2ViewController {
	private func setupViews() {

		back2menus.setImage(UIImage(named: "path11233") , for: .normal)


		rectangle2241ImageView.layer.cornerRadius = 10
		rectangle2241ImageView.layer.masksToBounds =  true



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
