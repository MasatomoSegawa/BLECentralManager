import UIKit
import CoreBluetooth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        CentralManager.sharedInstance.StartPeripheralScane()
        
    }
    
    
}