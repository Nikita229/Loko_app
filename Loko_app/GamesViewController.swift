//
//  GamesViewController.swift
//  Loko_app
//
//  Created by Никита Сурков on 23.04.2023.
//

import UIKit

class GamesViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCalendar()
    }
    

    private func configureCalendar(){
        let calendarView = UICalendarView()
        calendarView.calendar = .current
        calendarView.locale = .current
        
        view.addSubview(calendarView)
        
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.delegate = self
        let dataSelection = UICalendarSelectionSingleDate(delegate: self)
        calendarView.selectionBehavior = dataSelection
        
        NSLayoutConstraint.activate([
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calendarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            calendarView.heightAnchor.constraint(equalToConstant: 450   )
        ])
    }

}
extension UIViewController: UICalendarViewDelegate, UICalendarSelectionSingleDateDelegate {
    public func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        
    }
    
    public func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        return .default()
    }
    
    
}
