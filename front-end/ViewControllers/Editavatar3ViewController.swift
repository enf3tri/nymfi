import UIKit

class Editavatar3ViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var editYourAvatarImageView: UIImageView!
	@IBOutlet private weak var ellipse1ImageView: UIImageView!
	@IBOutlet private weak var business3dgirlstandingImageView: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView2: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView3: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView4: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView5: UIImageView!
	@IBOutlet private weak var arrowiosbackImageView6: UIImageView!
	@IBOutlet private weak var go_but: UIButton!
	@IBOutlet private weak var ekranResmi20211119200706ImageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension Editavatar3ViewController {
	private func setupViews() {

		ellipse1ImageView.layer.cornerRadius = 267
		ellipse1ImageView.layer.masksToBounds =  true


		go_but.setImage(UIImage(named: "ellipse2") , for: .normal)



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
