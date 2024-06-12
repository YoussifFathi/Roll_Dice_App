import UIKit

//class ViewController: UIViewController {
//    @IBOutlet weak var diceImageOne: UIImageView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}

class ViewController: UIViewController{
    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let myNumbers = [ UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix"),]
    
    var leftDiceNumber = 5
    var rightDiceNumber = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
    }
    
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        diceImageOne.image = myNumbers[leftDiceNumber]
        diceImageTwo.image = myNumbers[rightDiceNumber]

    }
    
    
}
