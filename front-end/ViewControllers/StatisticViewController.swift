import UIKit

class StatisticViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var back2menu: UIButton!
	@IBOutlet private weak var business3dgraph4ImageView: UIImageView!
	@IBOutlet private weak var statisticsImageView: UIImageView!
	@IBOutlet private weak var group9349ImageView: UIImageView!
	@IBOutlet private weak var ellipse11ImageView: UIImageView!
	@IBOutlet private weak var kitchenImageView: UIImageView!
	@IBOutlet private weak var ellipse12ImageView: UIImageView!
	@IBOutlet private weak var bathroomImageView: UIImageView!
	@IBOutlet private weak var ellipse13ImageView: UIImageView!
	@IBOutlet private weak var faucetImageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension StatisticViewController {
	private func setupViews() {

		back2menu.setImage(UIImage(named: "path11230") , for: .normal)


		ellipse11ImageView.layer.cornerRadius = 9
		ellipse11ImageView.layer.masksToBounds =  true


		ellipse12ImageView.layer.cornerRadius = 9
		ellipse12ImageView.layer.masksToBounds =  true


		ellipse13ImageView.layer.cornerRadius = 9
		ellipse13ImageView.layer.masksToBounds =  true



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
