import UIKit

class ViewController: UIViewController {
    
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages () {
        randomIndex1 = Int.random(in: 0...5)
        randomIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomIndex2])
    }
}

