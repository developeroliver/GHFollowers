import UIKit

// Helper class for animating buttons
class ButtonAnimationHelper {

    // Adds a scale animation to the button
    static func animateButtonPress(button: UIButton, scale: CGFloat = 0.95, duration: TimeInterval = 0.2) {
        UIView.animate(withDuration: duration,
                       delay: 0,
                       usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0.5,
                       options: [.allowUserInteraction]) {
            button.transform = CGAffineTransform(scaleX: scale, y: scale)
        } completion: { _ in
            UIView.animate(withDuration: duration) {
                button.transform = .identity
            }
        }
    }

    // Adds a shake animation to the button
    static func animateButtonShake(button: UIButton, duration: TimeInterval = 0.5, intensity: CGFloat = 8) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.duration = duration
        animation.values = [-intensity, intensity, -intensity * 0.75, intensity * 0.75, -intensity * 0.5, intensity * 0.5, 0]
        button.layer.add(animation, forKey: "shake")
    }

    // Adds a fade animation to the button
    static func animateButtonFade(button: UIButton, duration: TimeInterval = 0.3) {
        UIView.animate(withDuration: duration, animations: {
            button.alpha = 0.5
        }) { _ in
            UIView.animate(withDuration: duration) {
                button.alpha = 1.0
            }
        }
    }
}
