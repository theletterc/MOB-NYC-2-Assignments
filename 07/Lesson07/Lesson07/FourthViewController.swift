import UIKit

//TODO four: Read the file saved in the previous TODO, and make this text box print out the text of that file.

class FourthViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let path = NSTemporaryDirectory() + "thirdview.plist"
        var textToDisplay = String()
        
        if NSFileManager().fileExistsAtPath(path) {
        textToDisplay = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)!
        textView.text = textToDisplay
        } else {
        textView.text = "No file found"
        }
        */
        
        
        let file = "file.txt"

        if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {
        let dir = dirs[0] //documents directory
        let path = dir.stringByAppendingPathComponent(file);

        //reading
        let text = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)
            
        textView.text = text

        }
    
    }
    
}

