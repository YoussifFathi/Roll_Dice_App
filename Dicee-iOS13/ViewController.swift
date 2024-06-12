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
    
    var myNumbers = [ UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix"),]
    var leftDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
    }
    
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        diceImageOne.image = myNumbers[leftDiceNumber]
        
        if(leftDiceNumber < 5){
            leftDiceNumber+=1

        }else{
            leftDiceNumber = 0;
        }
        

    }
    
    
}
