//
//  ViewCodable.swift
//  daysPhases
//
//  Created by Michelli Cristina de Paulo Lima on 03/11/22.
//

protocol ViewCodable {
    func buildViewHierarchy()
    func setUpConstraint()
    func setUpAdditionalConfiguration()
    func setUpView()
}

extension ViewCodable {
    func setUpView() {
        buildViewHierarchy()
        setUpConstraint()
        setUpAdditionalConfiguration()
    }
}
