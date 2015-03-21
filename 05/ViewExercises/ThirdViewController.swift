//STATUS: This seems really shitty. Half done, trying to see if there's a way to create a class of the blue squares?

import UIKit

class ThirdViewController: ExerciseViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view 
        */
        
/*
        class BlueSquare : UIView {
            var blueSquare = UIView()
            .backgroundColor = UIColor.blueColor()
            .setTranslatesAutoresizingMaskIntoConstraints(false)
            
            let blueSquareHeight = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
            
            let blueSquareWidth = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        }
*/


        var blueSquare = UIView()
        blueSquare.backgroundColor = UIColor.blueColor()
        blueSquare.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var blueSquare2 = UIView()
        blueSquare2.backgroundColor = UIColor.blueColor()
        blueSquare2.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var blueSquare3 = UIView()
        blueSquare3.backgroundColor = UIColor.blueColor()
        blueSquare3.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var blueSquare4 = UIView()
        blueSquare4.backgroundColor = UIColor.blueColor()
        blueSquare4.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let blueSquareHeight = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquareWidth = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        
        let blueSquare2Height = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquare2Width = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)

        
        let alignRight = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 0)
        
        
        
        self.exerciseView.addSubview(blueSquare)
        self.exerciseView.addSubview(blueSquare2)
        self.exerciseView.addConstraints([blueSquareHeight, blueSquareWidth, blueSquare2Height, blueSquare2Width, alignRight])

    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
