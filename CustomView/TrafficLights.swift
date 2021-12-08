////
//  TraficLights.swift
//  CustomView
//
//  Created by ILYA BILARUS on 08.12.2021.
//

import UIKit

@ IBDesignable
class TraficLights: UIControl {
    
    enum TraficColor {
        case red
        case yellow
        case green
    }
    
    private weak var redImageView: UIImageView!
    private weak var yellowImageView: UIImageView!
    private weak var greenImageView: UIImageView!
    

    public var currentColor: TraficColor = .red {
        didSet {
            switch currentColor {
            case .red:
                self.redImageView.alpha = 1
                self.yellowImageView.alpha = 0.25
                self.greenImageView.alpha = 0.25
            case .yellow:
                self.redImageView.alpha = 0.25
                self.yellowImageView.alpha = 1
                self.greenImageView.alpha = 0.25
            case .green:
                self.redImageView.alpha = 0.25
                self.yellowImageView.alpha = 0.25
                self.greenImageView.alpha = 1
            }
        }
    }
//    @ IBInspectable
//    public var checked: Bool = false {
//        didSet {
//            imageView.image = image
//        }
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        let redImageView = UIImageView()
        let yellowImageView = UIImageView()
        let greenImageView = UIImageView()
        
        redImageView.translatesAutoresizingMaskIntoConstraints = false
        yellowImageView.translatesAutoresizingMaskIntoConstraints = false
        greenImageView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(redImageView)
        addSubview(yellowImageView)
        addSubview(greenImageView)
        

        redImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        redImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        redImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        redImageView.widthAnchor.constraint(equalTo: yellowImageView.widthAnchor).isActive = true
        redImageView.widthAnchor.constraint(equalTo: greenImageView.widthAnchor).isActive = true
        redImageView.heightAnchor.constraint(equalTo: yellowImageView.heightAnchor).isActive = true
        redImageView.heightAnchor.constraint(equalTo: greenImageView.heightAnchor).isActive = true
        
        //Equal weight and height
        yellowImageView.topAnchor.constraint(equalTo: redImageView.bottomAnchor).isActive = true
        yellowImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        yellowImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        yellowImageView.bottomAnchor.constraint(equalTo: greenImageView.topAnchor).isActive = true
        
        
        greenImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        greenImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        greenImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        redImageView.contentMode = .scaleAspectFit
        yellowImageView.contentMode = .scaleAspectFit
        greenImageView.contentMode = .scaleAspectFit
        
        self.redImageView = redImageView
        self.yellowImageView = yellowImageView
        self.greenImageView = greenImageView
        
        self.redImageView.image = UIImage(systemName: "circle.fill")!
        self.yellowImageView.image = UIImage(systemName: "circle.fill")!
        self.greenImageView.image = UIImage(systemName: "circle.fill")!
        
        self.redImageView.tintColor = .red
        self.yellowImageView.tintColor = .yellow
        self.greenImageView.tintColor = .green
        
        self.redImageView.alpha = 1
        self.yellowImageView.alpha = 0.25
        self.greenImageView.alpha = 0.25
        
        
        layer.cornerRadius = bounds.height/10
        backgroundColor = UIColor.black
        addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
    }
    
    @objc func touchUpInside() {
        //checked = !checked
        sendActions(for: .valueChanged)
    }
    
    public func toggle() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
    
    
}
