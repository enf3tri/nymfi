import UIKit

class Statistic1ViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var path11238ImageView: UIImageView!
	@IBOutlet private weak var ekranResmi20211119200706ImageView: UIImageView!
	@IBOutlet private weak var group11ImageView: UIImageView!
	@IBOutlet private weak var podium408161533774090ImageView: UIImageView!
	@IBOutlet private weak var novemberChampionsImageView: UIImageView!
	@IBOutlet private weak var business3dgirlstanding22ImageView: UIImageView!
	@IBOutlet private weak var ellipse8ImageView: UIImageView!
	@IBOutlet private weak var group9353ImageView: UIImageView!
	@IBOutlet private weak var group9357ImageView: UIImageView!
	@IBOutlet private weak var business3dwhatImageView: UIImageView!
	@IBOutlet private weak var ellipse9ImageView: UIImageView!
	@IBOutlet private weak var group9358ImageView: UIImageView!
	@IBOutlet private weak var group9359ImageView: UIImageView!
	@IBOutlet private weak var ellipse10ImageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension Statistic1ViewController {
	private func setupViews() {

		ellipse8ImageView.layer.cornerRadius = 38
		ellipse8ImageView.layer.masksToBounds =  true


		ellipse9ImageView.layer.cornerRadius = 23
		ellipse9ImageView.layer.masksToBounds =  true


		ellipse10ImageView.layer.cornerRadius = 48
		ellipse10ImageView.layer.masksToBounds =  true



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
