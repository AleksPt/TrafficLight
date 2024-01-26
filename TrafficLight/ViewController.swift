import UIKit

private enum CurrentLight {
    case red, yellow, green
}

final class ViewController: UIViewController {
    
    @IBOutlet private weak var redLightView: UIView!
    @IBOutlet private weak var yellowLightView: UIView!
    @IBOutlet private weak var greenLightView: UIView!
    
    private var currentLight: CurrentLight = .red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}
