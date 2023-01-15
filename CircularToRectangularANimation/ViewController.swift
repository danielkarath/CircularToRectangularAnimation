//
//  ViewController.swift
//  CircularToRectangularANimation
//
//  Created by Daniel Karath on 1/15/23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Initialize view components
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Circular to Rectangular Animation"
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 18)
        label.textColor = .white
        label.textAlignment = .left
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Using UIKit"
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 10)
        label.textColor = .white
        label.textAlignment = .left
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let startButton: UIButton = {
        let button = UIButton()
        button.frame.size = CGSize(width: 140, height: 40)
        button.layer.cornerRadius = 8
        button.backgroundColor = UIColor(red: 120/255, green: 120/244, blue: 220/255, alpha: 1.0)
        button.clipsToBounds = true
        button.setTitle("Start", for: .normal)
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let circleView1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255/255, green: 254/244, blue: 255/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 220/255, green: 203/244, blue: 240/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 201/255, green: 163/244, blue: 235/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 167/255, green: 120/244, blue: 230/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView5: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 139/255, green: 75/244, blue: 225/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView6: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 116/255, green: 36/244, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView7: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 93/255, green: 28/244, blue: 176/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView8: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 67/255, green: 20/244, blue: 130/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleView9: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 47/255, green: 13/244, blue: 90/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let circleSize1: CGFloat = 10
    private let circleSize2: CGFloat = 10 * 3
    private let circleSize3: CGFloat = 10 * 6
    private let circleSize4: CGFloat = 10 * 9
    private let circleSize5: CGFloat = 10 * 12
    private let circleSize6: CGFloat = 10 * 15
    private let circleSize7: CGFloat = 10 * 18
    private let circleSize8: CGFloat = 10 * 21
    private let circleSize9: CGFloat = 10 * 24
    
    private var didRotate: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 32/255, alpha: 1.0)
        setupConstraints()
        setupCircleViews()
        startButton.addTarget(self, action: #selector(startButtonTapped(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    private func setupConstraints() {
        let views: [UIView] = [titleLabel, subTitleLabel, startButton, circleView9, circleView8, circleView7, circleView6, circleView5, circleView4, circleView3, circleView2, circleView1]
        
        for subview in views {
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            titleLabel.heightAnchor.constraint(equalToConstant: 32),
            titleLabel.widthAnchor.constraint(equalToConstant: 300),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -10),
            subTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            subTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            subTitleLabel.widthAnchor.constraint(equalToConstant: 220),
            
            startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            startButton.widthAnchor.constraint(equalToConstant: 140),
            startButton.heightAnchor.constraint(equalToConstant: 40),
            
            circleView1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView1.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView1.widthAnchor.constraint(equalToConstant: circleSize1),
            circleView1.heightAnchor.constraint(equalToConstant: circleSize1),
            
            circleView2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView2.widthAnchor.constraint(equalToConstant: circleSize2),
            circleView2.heightAnchor.constraint(equalToConstant: circleSize2),
            
            circleView3.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView3.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView3.widthAnchor.constraint(equalToConstant: circleSize3),
            circleView3.heightAnchor.constraint(equalToConstant: circleSize3),
            
            circleView4.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView4.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView4.widthAnchor.constraint(equalToConstant: circleSize4),
            circleView4.heightAnchor.constraint(equalToConstant: circleSize4),
            
            circleView5.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView5.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView5.widthAnchor.constraint(equalToConstant: circleSize5),
            circleView5.heightAnchor.constraint(equalToConstant: circleSize5),
        
            circleView6.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView6.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView6.widthAnchor.constraint(equalToConstant: circleSize6),
            circleView6.heightAnchor.constraint(equalToConstant: circleSize6),
            
            circleView7.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView7.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView7.widthAnchor.constraint(equalToConstant: circleSize7),
            circleView7.heightAnchor.constraint(equalToConstant: circleSize7),
            
            circleView8.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView8.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView8.widthAnchor.constraint(equalToConstant: circleSize8),
            circleView8.heightAnchor.constraint(equalToConstant: circleSize8),
            
            circleView9.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            circleView9.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            circleView9.widthAnchor.constraint(equalToConstant: circleSize9),
            circleView9.heightAnchor.constraint(equalToConstant: circleSize9),
            
        ])
    }
    
    private func setupCircleViews() {
        let circleViews: [UIView] = [circleView1, circleView2, circleView3, circleView4, circleView5, circleView6, circleView7, circleView8, circleView9]
        let sizes: [CGFloat] = [circleSize1, circleSize2, circleSize3, circleSize4, circleSize5, circleSize6, circleSize7, circleSize8, circleSize9]
        var i: Int = 0
        for circleView in circleViews {
            let size: CGFloat = sizes[i]
            let centerValue: CGFloat = (UIScreen.main.bounds.width-size) / 2
            circleView.frame = CGRect(x: centerValue, y: centerValue, width: size, height: size)
            circleView.layer.cornerRadius = size / 2
            i = i + 1
        }
    }
    
    private func animateCircleViews(didRotate: Bool) {
        let circleViews: [UIView] = [circleView1, circleView2, circleView3, circleView4, circleView5, circleView6, circleView7, circleView8, circleView9]
        let sizes: [CGFloat] = [circleSize1, circleSize2, circleSize3, circleSize4, circleSize5, circleSize6, circleSize7, circleSize8, circleSize9]
        var i: Int = 0
        let degrees90 = CGFloat(Double.pi / 2)
        var rotationAngle = degrees90
        let delayDivider: Double = 15
        print("degrees90: \(degrees90)")
        if didRotate {
            rotationAngle = rotationAngle * (2)
            self.didRotate = false
            for circleView in circleViews {
                let delay: TimeInterval = TimeInterval(i)
                UIView.animate(withDuration: 2.0, delay: (delay)/delayDivider, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
                    let size: CGFloat = sizes[i]
                    if i != 0 {
                        rotationAngle = degrees90 + CGFloat(i) * 0.05
                    } else {
                        rotationAngle = degrees90
                    }
                    print("rotationAngle: \(rotationAngle)")
                    circleView.transform = CGAffineTransform.identity
                    circleView.layer.cornerRadius = size / 2
                    i = i + 1
                }
            }
        } else {
            self.didRotate = true
            for circleView in circleViews {
                let delay: TimeInterval = TimeInterval(i)
                UIView.animate(withDuration: 2.0, delay: (delay)/delayDivider, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
                    let size: CGFloat = sizes[i]
                    if i != 0 {
                        rotationAngle = degrees90 - CGFloat(i) * 0.05
                    } else {
                        rotationAngle = degrees90
                    }
                    print("rotationAngle: \(rotationAngle)")
                    circleView.transform = CGAffineTransform(rotationAngle: rotationAngle)
                    circleView.layer.cornerRadius = size / 8
                    i = i + 1
                }
            }
        }
    }
    
    @objc private func startButtonTapped(_ sender: UIButton) {
        print("Did tap start")
        if didRotate {
            animateCircleViews(didRotate: didRotate)
        } else {
            animateCircleViews(didRotate: didRotate)
        }
    }


}

