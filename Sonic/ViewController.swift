//
//  ViewController.swift
//  Sonic
//
//  Created by Usuário Convidado on 10/03/16.
//  Copyright © 2016 Thiago Nogueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgSonic: UIImageView!

    var imgs = [
        UIImage(contentsOfFile: ""),
        UIImage(contentsOfFile: ""),
        UIImage(contentsOfFile: ""),
        UIImage(contentsOfFile: ""),
        UIImage(contentsOfFile: ""),
        UIImage(contentsOfFile: ""),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saltar(sender: UIButton) {
        print("Botao saltar acionado")
        var actualPoint:CGPoint = self.imgSonic.center
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            actualPoint = self.imgSonic.center
            self.imgSonic.center.y = -10 //CGPointMake(180, 200)
        })
        self.imgSonic.center = actualPoint
    }

    @IBAction func girar(sender: AnyObject) {
        print("Botao girar acionado")
        var actualPoint:CGPoint = self.imgSonic.center
        let angle:CGFloat = (180.0 * CGFloat(M_PI) / 180.0)
        UIView.animateWithDuration(0.3, animations: {() -> Void in
            actualPoint = self.imgSonic.center
            self.imgSonic.transform = CGAffineTransformMakeRotation(angle)
        })
        self.imgSonic.center = actualPoint
    }

    @IBAction func correr(sender: UIButton) {
        print("Botão correr acionado")
    
    }
}

