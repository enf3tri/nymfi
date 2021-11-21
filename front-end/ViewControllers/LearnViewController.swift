import UIKit

class LearnViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var ellipse5ImageView2: UIImageView!
	@IBOutlet private weak var ellipse4ImageView2: UIImageView!
	@IBOutlet private weak var back2main: UIButton!
	@IBOutlet private weak var ellipse3ImageView2: UIImageView!
	@IBOutlet private weak var ekranResmi20211120150658ImageView: UIImageView!
	@IBOutlet private weak var ellipse3ImageView: UIImageView!
	@IBOutlet private weak var ellipse4ImageView: UIImageView!
	@IBOutlet private weak var ellipse5ImageView: UIImageView!
	@IBOutlet private weak var whoHowToHandwashWithSoapAndWaterImageView: UIImageView!
	@IBOutlet private weak var ekranResmi20211120150707ImageView: UIImageView!
	@IBOutlet private weak var handwashingLearnHowToWashYourHands10StepsToWashingYourHandsImageView: UIImageView!
	@IBOutlet private weak var ekranResmi20211120150721ImageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension LearnViewController {
	private func setupViews() {

		ellipse5ImageView2.layer.cornerRadius = 101
		ellipse5ImageView2.layer.masksToBounds =  true


		ellipse4ImageView2.layer.cornerRadius = 155
		ellipse4ImageView2.layer.masksToBounds =  true


		back2main.setImage(UIImage(named: "group14") , for: .normal)


		ellipse3ImageView2.layer.cornerRadius = 55
		ellipse3ImageView2.layer.masksToBounds =  true


		ellipse3ImageView.layer.cornerRadius = 72
		ellipse3ImageView.layer.masksToBounds =  true


		ellipse4ImageView.layer.cornerRadius = 203
		ellipse4ImageView.layer.masksToBounds =  true


		ellipse5ImageView.layer.cornerRadius = 132
		ellipse5ImageView.layer.masksToBounds =  true



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
