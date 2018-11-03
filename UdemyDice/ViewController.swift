import UIKit

class ViewController: UIViewController {
    
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomIndex1 = Int.random(in: 0...5)
        randomIndex2 = Int.random(in: 0...5)
        
        print(randomIndex1)
        print(randomIndex2)
    }
    
}

