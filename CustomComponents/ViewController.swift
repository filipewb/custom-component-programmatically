import UIKit

class ViewController: UIViewController {
    
    private lazy var clickableImageView : ClickableImageView = {
        let imageView = ClickableImageView.init()
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addClickableImageView()
    }
    
    private func addClickableImageView() {
        self.view.addSubview(clickableImageView)
        clickableImageView.translatesAutoresizingMaskIntoConstraints = false
        clickableImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        clickableImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        clickableImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        clickableImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

class ClickableImageView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //self.isUserInteractionEnabled = true
        self.addClickability()
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addClickability() {
        let click = UITapGestureRecognizer.init(target: self, action: #selector(clickEventOfImageView))
        self.addGestureRecognizer(click)
    }
    
    @objc private func clickEventOfImageView() {
        print("clicked")
    }
}
