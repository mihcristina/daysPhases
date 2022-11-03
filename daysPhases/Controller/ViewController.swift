//
//  ViewController.swift
//  daysPhases
//
//  Created by Michelli Cristina de Paulo Lima on 03/11/22.
//

import UIKit

class ViewController: UIViewController {

    var daysPhases:DaysPhasesView?

    override func loadView() {
        self.daysPhases = DaysPhasesView()
        self.view = daysPhases
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
