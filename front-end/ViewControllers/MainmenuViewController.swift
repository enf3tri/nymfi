import UIKit

class MainmenuViewController: UIViewController, Storyboarded {
	var coordinator: MainCoordinator?

	// MARK: - Properties
	@IBOutlet private weak var ellipse5ImageView: UIImageView!
	@IBOutlet private weak var ellipse4ImageView: UIImageView!
	@IBOutlet private weak var ellipse1ImageView: UIImageView!
	@IBOutlet private weak var business3dgirlstanding3ImageView: UIImageView!
	@IBOutlet private weak var belloutlineImageView: UIImageView!
	@IBOutlet private weak var ellipse3ImageView: UIImageView!
	@IBOutlet private weak var johannaImageView: UIImageView!
	@IBOutlet private weak var rectangle10ImageView: UIImageView!
	@IBOutlet private weak var mapImageView: UIImageView!
	@IBOutlet private weak var alkutieHelsinkiImageView: UIImageView!
	@IBOutlet private weak var stats: UIButton!
	@IBOutlet private weak var hunder: UIButton!
	@IBOutlet private weak var crowns: UIButton!
	@IBOutlet private weak var shower_times: UIButton!
	@IBOutlet private weak var warn: UIButton!
	@IBOutlet private weak var bookstacks40228893328660ImageView: UIImageView!
	@IBOutlet private weak var learn: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setupLayout()
	}

}

extension MainmenuViewController {
	private func setupViews() {

		ellipse5ImageView.layer.cornerRadius = 101
		ellipse5ImageView.layer.masksToBounds =  true


		ellipse4ImageView.layer.cornerRadius = 155
		ellipse4ImageView.layer.masksToBounds =  true


		ellipse1ImageView.layer.cornerRadius = 98
		ellipse1ImageView.layer.masksToBounds =  true


		ellipse3ImageView.layer.cornerRadius = 55
		ellipse3ImageView.layer.masksToBounds =  true


		rectangle10ImageView.layer.cornerRadius = 14
		rectangle10ImageView.layer.masksToBounds =  true


		stats.setImage(UIImage(named: "group9") , for: .normal)


		hunder.setImage(UIImage(named: "group8") , for: .normal)


		crowns.setImage(UIImage(named: "group6") , for: .normal)


		shower_times.setImage(UIImage(named: "group4") , for: .normal)


		warn.setImage(UIImage(named: "group10") , for: .normal)


		learn.setImage(UIImage(named: "group12") , for: .normal)



	}

	private func setupLayout() {
		//Constraints are defined in Storyboard file.
	}

}
