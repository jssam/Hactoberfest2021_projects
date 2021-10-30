//
//  Created by GiRi on 07/10/21.
//  Copyright © 2021 Giri. All rights reserved.
//

import UIKit

@IBDesignable
class GradientWithAngleView: UIView {

    override class var layerClass: AnyClass { return CAGradientLayer.self }

    private var gradientLayer: CAGradientLayer { return layer as! CAGradientLayer }

    @IBInspectable var color1: UIColor = .white { didSet { updateColors() } }
    @IBInspectable var color2: UIColor = .blue  { didSet { updateColors() } }
    
    @IBInspectable var angle: Float = 0 {
        didSet {
            configureGradient()
        }
    }
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureGradient()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureGradient()
    }

    private func configureGradient() {
        let alpha: Float = angle / 360
        
        let startPointX = powf(sinf(2 * Float.pi * ((alpha + 0.75) / 2)),2)
        let startPointY = powf(sinf(2 * Float.pi * ((alpha + 0) / 2)),2)
        let endPointX = powf(sinf(2 * Float.pi * ((alpha + 0.25) / 2)),2)
        let endPointY = powf(sinf(2 * Float.pi * ((alpha + 0.5) / 2)),2)
        
        gradientLayer.endPoint = CGPoint(x: CGFloat(endPointX),y: CGFloat(endPointY))
        gradientLayer.startPoint = CGPoint(x: CGFloat(startPointX), y: CGFloat(startPointY))

        updateColors()
    }

    private func updateColors() {
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
    }
}
