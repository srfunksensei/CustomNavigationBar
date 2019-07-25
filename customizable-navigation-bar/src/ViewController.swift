import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        setupNavigationBarItems()
    }
    
    private func setupNavigationBarItems() {
        navigationItem.title = "Custom navigation bar"
        
        setupLeftNavigationBar()
        setupRightNavigationBar()
    }
    
    private func setupLeftNavigationBar() {
        let lockButton = UIButton(type: .system)
        lockButton.setImage(UIImage(named: "secure-cloud-50.png"), for: .normal)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: lockButton)
    }
    
    private func setupRightNavigationBar() {
        let rebelButton = UIButton(type: .system)
        rebelButton.setImage(UIImage(named: "sw-rebel-48.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        let empireButton = UIButton(type: .system)
        empireButton.setImage(UIImage(named: "sw-empire-48.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: rebelButton), UIBarButtonItem(customView: empireButton)]
    }
}

