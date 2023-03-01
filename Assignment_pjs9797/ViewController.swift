
import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    let url1 = URL(string: "https://cdn.pixabay.com/photo/2023/01/31/05/59/zebra-7757193_1280.jpg")
    let url2 = URL(string: "https://cdn.pixabay.com/photo/2023/01/05/22/35/flower-7700011_1280.jpg")
    let url3 = URL(string: "https://cdn.pixabay.com/photo/2023/02/05/17/25/leaves-7770035_1280.jpg")
    let url4 = URL(string: "https://cdn.pixabay.com/photo/2023/02/04/09/20/castle-7766794_1280.jpg")
    let url5 = URL(string: "https://cdn.pixabay.com/photo/2023/02/06/01/14/superb-fairywren-7770904_1280.jpg")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapFirstLoadButton(_ sender: UIButton) {
        self.firstImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.firstImageView.kf.setImage(with: self.url1)
        })
        
    }
    
    @IBAction func tapSecondLoadButton(_ sender: UIButton) {
        self.secondImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.secondImageView.kf.setImage(with: self.url2)
        })
    }
    
    @IBAction func tapThirdLoadButton(_ sender: UIButton) {
        self.thirdImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.thirdImageView.kf.setImage(with: self.url3)
        })
    }
    
    @IBAction func tapFourthLoadButton(_ sender: UIButton) {
        self.fourthImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.fourthImageView.kf.setImage(with: self.url4)
        })
    }
    
    @IBAction func tapFifthLoadButton(_ sender: UIButton) {
        self.fifthImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.fifthImageView.kf.setImage(with: self.url5)
        })
    }
    
    @IBAction func tapAllLoadButton(_ sender: UIButton) {
        self.firstImageView.image = UIImage(systemName: "photo")
        self.secondImageView.image = UIImage(systemName: "photo")
        self.thirdImageView.image = UIImage(systemName: "photo")
        self.fourthImageView.image = UIImage(systemName: "photo")
        self.fifthImageView.image = UIImage(systemName: "photo")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.fifthImageView.kf.setImage(with: self.url5)
            self.fourthImageView.kf.setImage(with: self.url4)
            self.thirdImageView.kf.setImage(with: self.url3)
            self.secondImageView.kf.setImage(with: self.url2)
            self.firstImageView.kf.setImage(with: self.url1)
        })
    }
    
}

