//
//  DaysPhasesView.swift
//  daysPhases
//
//  Created by Michelli Cristina de Paulo Lima on 03/11/22.
//

import UIKit

class DaysPhasesView: UIView {

    var localTimeZoneIdentifier: String {
        return TimeZone.current.identifier
    }

    let hours   = (Calendar.current.component(.hour, from: .now))
    let minutes = (Calendar.current.component(.minute, from: .now))
    let seconds = (Calendar.current.component(.second, from: .now))
    var imageForBackground = String()

    private lazy var hoursLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemPink
        label.text = "\(hours):\(minutes):\(seconds)"
        label.font = .boldSystemFont(ofSize: 100)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var imageBackground: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: imageForBackground)
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        getHour()
        setUpView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func formatterHours() {

    }

    func getHour() {
        switch hours {
        case 06...12:
            imageForBackground = "bom dia"
        case 13...23:
            imageForBackground = "boa tarde"
        default:
            imageForBackground = "boa noite"
        }
    }

}

extension DaysPhasesView: ViewCodable {
    func buildViewHierarchy() {
        self.addSubview(imageBackground)
        self.imageBackground.addSubview(hoursLabel)
    }

    func setUpConstraint() {
        NSLayoutConstraint.activate([
            self.imageBackground.topAnchor.constraint(equalTo: self.topAnchor),
            self.imageBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.imageBackground.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.imageBackground.trailingAnchor.constraint(equalTo: self.trailingAnchor),

            self.hoursLabel.centerXAnchor.constraint(equalTo: self.imageBackground.centerXAnchor),
            self.hoursLabel.centerYAnchor.constraint(equalTo: self.imageBackground.centerYAnchor),
        ])
    }

    func setUpAdditionalConfiguration() {}

    
}
