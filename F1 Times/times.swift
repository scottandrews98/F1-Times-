//
//  times.swift
//  F1 Times
//
//  Created by Scott Andrews on 03/01/2018.
//  Copyright © 2018 Scott Andrews. All rights reserved.
//

import UIKit
import SwiftDate

class times: UIViewController {

    
    @IBOutlet weak var navBar: UINavigationItem!
    
    @IBOutlet weak var race: UILabel!
    @IBOutlet weak var fp1: UILabel!
    @IBOutlet weak var fp2: UILabel!
    @IBOutlet weak var fp3: UILabel!
    @IBOutlet weak var qualifying: UILabel!
    
    @IBOutlet weak var countdown: UILabel!
    
    let now = Date.defaultRegion
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = f1Races[myIndex]
        
        if f1Races[myIndex] == "Australia"{
            australia()
        }
        
        if f1Races[myIndex] == "Bahrain"{
            bahrain()
        }
        
        if f1Races[myIndex] == "China"{
            china()
        }
        
        if f1Races[myIndex] == "Azerbaijan"{
            azerbaijan()
        }
        
        if f1Races[myIndex] == "Spain"{
            spain()
        }
        
        if f1Races[myIndex] == "Monaco"{
            monaco()
        }
        
        if f1Races[myIndex] == "Canada"{
            canada()
        }
        
        if f1Races[myIndex] == "France"{
            france()
        }
        
        if f1Races[myIndex] == "Austria"{
            autria()
        }
        
        if f1Races[myIndex] == "Great Britain"{
            greatBritain()
        }
        
        if f1Races[myIndex] == "Germany"{
            germany()
        }
        
        if f1Races[myIndex] == "Hungary"{
            hungary()
        }
        
        if f1Races[myIndex] == "Belgium"{
            belgium()
        }
        
        if f1Races[myIndex] == "Italy"{
            italy()
        }
        
        if f1Races[myIndex] == "Singapore"{
            singapore()
        }
        
        if f1Races[myIndex] == "Russia"{
            russia()
        }
        
        if f1Races[myIndex] == "Japan"{
            japan()
        }
        
        if f1Races[myIndex] == "USA"{
            usa()
        }
        
        if f1Races[myIndex] == "Mexico"{
            mexico()
        }
        
        if f1Races[myIndex] == "Brazil"{
            brazil()
        }
        
        if f1Races[myIndex] == "Abu Dhabi"{
            abuDhabi()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func australia(){
        
        let australia = Region(tz: TimeZoneName.australiaMelbourne, cal: CalendarName.gregorian, loc: LocaleName.englishAustralia)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 25, .hour: 16, .minute: 0], fromRegion: australia)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 24, .hour: 17, .minute: 0], fromRegion: australia)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 23, .hour: 12, .minute: 0], fromRegion: australia)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 23, .hour: 16, .minute: 0], fromRegion: australia)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 24, .hour: 14, .minute: 0], fromRegion: australia)
        
        let raceMonth = raceTime?.toRegion(now).month
        let qualifyingMonth = qualifyingTime?.toRegion(now).month
        let oneMonth = oneTime?.toRegion(now).month
        let twoMonth = twoTime?.toRegion(now).month
        let threeMonth = threeTime?.toRegion(now).month
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.bahTime), userInfo: nil, repeats: true)
    }
    
    @objc func ausTime(){
        let australia = Region(tz: TimeZoneName.australiaMelbourne, cal: CalendarName.gregorian, loc: LocaleName.englishAustralia)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 3, .day: 26, .hour: 16, .minute: 0], fromRegion: australia)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    
    //https://www.f1calendar.com/#!/timezone/Australia-Melbourne
    
    func bahrain(){
        let bahrain = Region(tz: TimeZoneName.asiaBahrain, cal: CalendarName.gregorian, loc: LocaleName.arabicBahrain)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 8, .hour: 18, .minute: 0], fromRegion: bahrain)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 7, .hour: 18, .minute: 0], fromRegion: bahrain)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 6, .hour: 14, .minute: 0], fromRegion: bahrain)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 6, .hour: 18, .minute: 0], fromRegion: bahrain)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 7, .hour: 15, .minute: 0], fromRegion: bahrain)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day

        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.bahTime), userInfo: nil, repeats: true)
    }
    
    @objc func bahTime(){
        let bahrain = Region(tz: TimeZoneName.asiaBahrain, cal: CalendarName.gregorian, loc: LocaleName.arabicBahrain)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 8, .hour: 18, .minute: 0], fromRegion: bahrain)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func china(){
        let china = Region(tz: TimeZoneName.asiaShanghai, cal: CalendarName.gregorian, loc: LocaleName.chinese)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 15, .hour: 14, .minute: 0], fromRegion: china)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 14, .hour: 15, .minute: 0], fromRegion: china)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 6, .hour: 10, .minute: 0], fromRegion: china)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 6, .hour: 14, .minute: 0], fromRegion: china)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 7, .hour: 12, .minute: 0], fromRegion: china)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.chaTime), userInfo: nil, repeats: true)
    }
    
    @objc func chaTime(){
        let china = Region(tz: TimeZoneName.asiaShanghai, cal: CalendarName.gregorian, loc: LocaleName.chinese)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 8, .hour: 18, .minute: 0], fromRegion: china)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func azerbaijan(){
        let azerbaijan = Region(tz: TimeZoneName.asiaBaku, cal: CalendarName.gregorian, loc: LocaleName.azerbaijani)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 29, .hour: 18, .minute: 0], fromRegion: azerbaijan)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 28, .hour: 18, .minute: 0], fromRegion: azerbaijan)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 27, .hour: 14, .minute: 0], fromRegion: azerbaijan)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 27, .hour: 18, .minute: 0], fromRegion: azerbaijan)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 28, .hour: 15, .minute: 0], fromRegion: azerbaijan)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.azeTime), userInfo: nil, repeats: true)
    }
    
    @objc func azeTime(){
        let azerbaijan = Region(tz: TimeZoneName.asiaBaku, cal: CalendarName.gregorian, loc: LocaleName.azerbaijani)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 4, .day: 29, .hour: 18, .minute: 0], fromRegion: azerbaijan)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func spain(){
        let spain = Region(tz: TimeZoneName.europeMadrid, cal: CalendarName.gregorian, loc: LocaleName.spanish)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 13, .hour: 14, .minute: 0], fromRegion: spain)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 12, .hour: 14, .minute: 0], fromRegion: spain)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 11, .hour: 10, .minute: 0], fromRegion: spain)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 11, .hour: 14, .minute: 0], fromRegion: spain)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 12, .hour: 11, .minute: 0], fromRegion: spain)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.spaTime), userInfo: nil, repeats: true)
    }
    
    @objc func spaTime(){
        let spain = Region(tz: TimeZoneName.europeMadrid, cal: CalendarName.gregorian, loc: LocaleName.spanish)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 13, .hour: 14, .minute: 0], fromRegion: spain)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func monaco(){
        let monaco = Region(tz: TimeZoneName.europeMonaco, cal: CalendarName.gregorian, loc: LocaleName.frenchMonaco)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 27, .hour: 14, .minute: 0], fromRegion: monaco)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 26, .hour: 14, .minute: 0], fromRegion: monaco)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 24, .hour: 10, .minute: 0], fromRegion: monaco)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 24, .hour: 14, .minute: 0], fromRegion: monaco)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 26, .hour: 11, .minute: 0], fromRegion: monaco)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.monTime), userInfo: nil, repeats: true)
    }
    
    @objc func monTime(){
        let monaco = Region(tz: TimeZoneName.europeMonaco, cal: CalendarName.gregorian, loc: LocaleName.frenchMonaco)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 5, .day: 27, .hour: 14, .minute: 0], fromRegion: monaco)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func canada(){
        let canada = Region(tz: TimeZoneName.americaMontreal, cal: CalendarName.gregorian, loc: LocaleName.frenchCanada)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 10, .hour: 14, .minute: 0], fromRegion: canada)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 9, .hour: 13, .minute: 0], fromRegion: canada)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 8, .hour: 10, .minute: 0], fromRegion: canada)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 8, .hour: 14, .minute: 0], fromRegion: canada)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 9, .hour: 10, .minute: 0], fromRegion: canada)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.canTime), userInfo: nil, repeats: true)
    }
    
    @objc func canTime(){
        let canada = Region(tz: TimeZoneName.americaMontreal, cal: CalendarName.gregorian, loc: LocaleName.frenchCanada)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 10, .hour: 14, .minute: 0], fromRegion: canada)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    
    func france(){
        let france = Region(tz: TimeZoneName.europeParis, cal: CalendarName.gregorian, loc: LocaleName.frenchFrance)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 24, .hour: 14, .minute: 0], fromRegion: france)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 23, .hour: 14, .minute: 0], fromRegion: france)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 22, .hour: 10, .minute: 0], fromRegion: france)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 22, .hour: 14, .minute: 0], fromRegion: france)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 23, .hour: 11, .minute: 0], fromRegion: france)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.franTime), userInfo: nil, repeats: true)
    }
    
    @objc func franTime(){
        let france = Region(tz: TimeZoneName.europeParis, cal: CalendarName.gregorian, loc: LocaleName.frenchFrance)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 24, .hour: 14, .minute: 0], fromRegion: france)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func autria(){
        let austria = Region(tz: TimeZoneName.europeVienna, cal: CalendarName.gregorian, loc: LocaleName.englishAustria)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 1, .hour: 14, .minute: 0], fromRegion: austria)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 30, .hour: 14, .minute: 0], fromRegion: austria)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 29, .hour: 10, .minute: 0], fromRegion: austria)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 29, .hour: 14, .minute: 0], fromRegion: austria)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 6, .day: 30, .hour: 11, .minute: 0], fromRegion: austria)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.austTime), userInfo: nil, repeats: true)
    }
    
    @objc func austTime(){
        let austria = Region(tz: TimeZoneName.europeVienna, cal: CalendarName.gregorian, loc: LocaleName.englishAustria)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 1, .hour: 14, .minute: 0], fromRegion: austria)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func greatBritain(){
        let greatBritain = Region(tz: TimeZoneName.europeLondon, cal: CalendarName.gregorian, loc: LocaleName.english)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 8, .hour: 13, .minute: 0], fromRegion: greatBritain)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 7, .hour: 13, .minute: 0], fromRegion: greatBritain)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 6, .hour: 9, .minute: 0], fromRegion: greatBritain)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 6, .hour: 13, .minute: 0], fromRegion: greatBritain)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 7, .hour: 10, .minute: 0], fromRegion: greatBritain)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.greTime), userInfo: nil, repeats: true)
    }
    
    @objc func greTime(){
        let greatBritain = Region(tz: TimeZoneName.europeLondon, cal: CalendarName.gregorian, loc: LocaleName.english)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 8, .hour: 13, .minute: 0], fromRegion: greatBritain)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func germany(){
        let germany = Region(tz: TimeZoneName.europeBerlin, cal: CalendarName.gregorian, loc: LocaleName.germanGermany)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 22, .hour: 14, .minute: 0], fromRegion: germany)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 21, .hour: 14, .minute: 0], fromRegion: germany)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 20, .hour: 10, .minute: 0], fromRegion: germany)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 20, .hour: 14, .minute: 0], fromRegion: germany)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 21, .hour: 11, .minute: 0], fromRegion: germany)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.gerTime), userInfo: nil, repeats: true)
    }
    
    @objc func gerTime(){
        let germany = Region(tz: TimeZoneName.europeBerlin, cal: CalendarName.gregorian, loc: LocaleName.germanGermany)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 22, .hour: 14, .minute: 0], fromRegion: germany)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func hungary(){
        let hungary = Region(tz: TimeZoneName.europeBudapest, cal: CalendarName.gregorian, loc: LocaleName.hungarianHungary)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 29, .hour: 14, .minute: 0], fromRegion: hungary)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 28, .hour: 14, .minute: 0], fromRegion: hungary)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 27, .hour: 10, .minute: 0], fromRegion: hungary)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 27, .hour: 14, .minute: 0], fromRegion: hungary)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 28, .hour: 11, .minute: 0], fromRegion: hungary)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.hunTime), userInfo: nil, repeats: true)
    }
    
    @objc func hunTime(){
        let hungary = Region(tz: TimeZoneName.europeBudapest, cal: CalendarName.gregorian, loc: LocaleName.hungarianHungary)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 7, .day: 29, .hour: 14, .minute: 0], fromRegion: hungary)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func belgium(){
        let belgium = Region(tz: TimeZoneName.europeBrussels, cal: CalendarName.gregorian, loc: LocaleName.frenchBelgium)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 26, .hour: 14, .minute: 0], fromRegion: belgium)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 25, .hour: 14, .minute: 0], fromRegion: belgium)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 24, .hour: 10, .minute: 0], fromRegion: belgium)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 24, .hour: 14, .minute: 0], fromRegion: belgium)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 25, .hour: 11, .minute: 0], fromRegion: belgium)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.belTime), userInfo: nil, repeats: true)
    }
    
    @objc func belTime(){
        let belgium = Region(tz: TimeZoneName.europeBrussels, cal: CalendarName.gregorian, loc: LocaleName.frenchBelgium)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 26, .hour: 14, .minute: 0], fromRegion: belgium)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func italy(){
        let italy = Region(tz: TimeZoneName.europeRome, cal: CalendarName.gregorian, loc: LocaleName.italianItaly)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 2, .hour: 14, .minute: 0], fromRegion: italy)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 1, .hour: 14, .minute: 0], fromRegion: italy)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 31, .hour: 10, .minute: 0], fromRegion: italy)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 31, .hour: 14, .minute: 0], fromRegion: italy)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 1, .hour: 11, .minute: 0], fromRegion: italy)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.itaTime), userInfo: nil, repeats: true)
    }
    
    @objc func itaTime(){
        let belgium = Region(tz: TimeZoneName.europeRome, cal: CalendarName.gregorian, loc: LocaleName.italianItaly)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 2, .hour: 14, .minute: 0], fromRegion: belgium)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func singapore(){
        let singapore = Region(tz: TimeZoneName.asiaSingapore, cal: CalendarName.gregorian, loc: LocaleName.malaySingapore)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 16, .hour: 20, .minute: 0], fromRegion: singapore)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 15, .hour: 21, .minute: 0], fromRegion: singapore)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 14, .hour: 16, .minute: 30], fromRegion: singapore)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 14, .hour: 20, .minute: 30], fromRegion: singapore)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 15, .hour: 18, .minute: 0], fromRegion: singapore)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.sinTime), userInfo: nil, repeats: true)
    }
    
    @objc func sinTime(){
        let singapore = Region(tz: TimeZoneName.asiaSingapore, cal: CalendarName.gregorian, loc: LocaleName.malaySingapore)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 16, .hour: 20, .minute: 0], fromRegion: singapore)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    
    func russia(){
        let russia = Region(tz: TimeZoneName.europeMoscow, cal: CalendarName.gregorian, loc: LocaleName.russianRussia)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 30, .hour: 15, .minute: 0], fromRegion: russia)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 29, .hour: 15, .minute: 0], fromRegion: russia)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 28, .hour: 11, .minute: 0], fromRegion: russia)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 8, .day: 28, .hour: 15, .minute: 0], fromRegion: russia)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 29, .hour: 12, .minute: 0], fromRegion: russia)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.rusTime), userInfo: nil, repeats: true)
    }
    
    @objc func rusTime(){
        let russia = Region(tz: TimeZoneName.europeMoscow, cal: CalendarName.gregorian, loc: LocaleName.russianRussia)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 9, .day: 30, .hour: 15, .minute: 0], fromRegion: russia)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func japan(){
        let japan = Region(tz: TimeZoneName.asiaTokyo, cal: CalendarName.gregorian, loc: LocaleName.japaneseJapan)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 7, .hour: 14, .minute: 0], fromRegion: japan)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 6, .hour: 15, .minute: 0], fromRegion: japan)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 5, .hour: 10, .minute: 0], fromRegion: japan)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 5, .hour: 14, .minute: 0], fromRegion: japan)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 6, .hour: 12, .minute: 0], fromRegion: japan)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.japTime), userInfo: nil, repeats: true)
    }
    
    @objc func japTime(){
        let japan = Region(tz: TimeZoneName.asiaTokyo, cal: CalendarName.gregorian, loc: LocaleName.japaneseJapan)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 7, .hour: 14, .minute: 0], fromRegion: japan)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func usa(){
        let usa = Region(tz: TimeZoneName.americaChicago, cal: CalendarName.gregorian, loc: LocaleName.englishUnitedStates)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 21, .hour: 14, .minute: 0], fromRegion: usa)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 20, .hour: 16, .minute: 0], fromRegion: usa)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 19, .hour: 10, .minute: 0], fromRegion: usa)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 19, .hour: 14, .minute: 0], fromRegion: usa)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 20, .hour: 11, .minute: 0], fromRegion: usa)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.usaTime), userInfo: nil, repeats: true)
    }
    
    @objc func usaTime(){
        let usa = Region(tz: TimeZoneName.americaChicago, cal: CalendarName.gregorian, loc: LocaleName.englishUnitedStates)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 21, .hour: 14, .minute: 0], fromRegion: usa)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func mexico(){
        let mexico = Region(tz: TimeZoneName.americaMexicoCity, cal: CalendarName.gregorian, loc: LocaleName.spanishMexico)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 28, .hour: 13, .minute: 0], fromRegion: mexico)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 27, .hour: 13, .minute: 0], fromRegion: mexico)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 26, .hour: 10, .minute: 0], fromRegion: mexico)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 26, .hour: 14, .minute: 0], fromRegion: mexico)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 27, .hour: 10, .minute: 0], fromRegion: mexico)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.mexTime), userInfo: nil, repeats: true)
    }
    
    @objc func mexTime(){
        let mexico = Region(tz: TimeZoneName.americaMexicoCity, cal: CalendarName.gregorian, loc: LocaleName.spanishMexico)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 10, .day: 28, .hour: 13, .minute: 0], fromRegion: mexico)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func brazil(){
        let brazil = Region(tz: TimeZoneName.americaSaoPaulo, cal: CalendarName.gregorian, loc: LocaleName.portugueseBrazil)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 11, .hour: 14, .minute: 0], fromRegion: brazil)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 10, .hour: 14, .minute: 0], fromRegion: brazil)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 26, .hour: 10, .minute: 0], fromRegion: brazil)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 26, .hour: 14, .minute: 0], fromRegion: brazil)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 10, .hour: 11, .minute: 0], fromRegion: brazil)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.braTime), userInfo: nil, repeats: true)
    }
    
    @objc func braTime(){
        let brazil = Region(tz: TimeZoneName.americaSaoPaulo, cal: CalendarName.gregorian, loc: LocaleName.portugueseBrazil)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 11, .hour: 14, .minute: 0], fromRegion: brazil)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
    
    func abuDhabi(){
        let abuDhabi = Region(tz: TimeZoneName.asiaDubai, cal: CalendarName.gregorian, loc: LocaleName.arabicUnitedArabEmirates)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 25, .hour: 17, .minute: 0], fromRegion: abuDhabi)
        
        let qualifyingTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 24, .hour: 17, .minute: 0], fromRegion: abuDhabi)
        
        let oneTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 23, .hour: 13, .minute: 0], fromRegion: abuDhabi)
        
        let twoTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 23, .hour: 14, .minute: 0], fromRegion: abuDhabi)
        
        let threeTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 24, .hour: 11, .minute: 0], fromRegion: abuDhabi)
        
        let raceMonth = raceTime?.toRegion(now).monthName
        let qualifyingMonth = qualifyingTime?.toRegion(now).monthName
        let oneMonth = oneTime?.toRegion(now).monthName
        let twoMonth = twoTime?.toRegion(now).monthName
        let threeMonth = threeTime?.toRegion(now).monthName
        
        let raceText = raceTime?.toRegion(now).hour
        let qualifyingText = qualifyingTime?.toRegion(now).hour
        let oneText = oneTime?.toRegion(now).hour
        let twoText = twoTime?.toRegion(now).hour
        let threeText = threeTime?.toRegion(now).hour
        
        let minRace = raceTime?.toRegion(now).minute
        let minQualifying = qualifyingTime?.toRegion(now).minute
        let minOne = oneTime?.toRegion(now).minute
        let minTwo = twoTime?.toRegion(now).minute
        let minThree = threeTime?.toRegion(now).minute
        
        let secRace = raceTime?.toRegion(now).second
        let secQualifying = qualifyingTime?.toRegion(now).second
        let secOne = oneTime?.toRegion(now).second
        let secTwo = twoTime?.toRegion(now).second
        let secThree = threeTime?.toRegion(now).second
        
        let dayRace = raceTime?.toRegion(now).day
        let dayQualifying = qualifyingTime?.toRegion(now).day
        let dayOne = oneTime?.toRegion(now).day
        let dayTwo = twoTime?.toRegion(now).day
        let dayThree = threeTime?.toRegion(now).day
        
        race.text = "Race: \(String(describing: raceMonth!)) \(String(describing: dayRace!))th \(String(describing: raceText!)):\(String(describing: minRace!))\(String(describing: secRace!))"
        qualifying.text = "Qualifying: \(String(describing: qualifyingMonth!)) \(String(describing: dayQualifying!))th \(String(describing: qualifyingText!)):\(String(describing: minQualifying!))\(String(describing: secQualifying!))"
        fp1.text = "FP1: \(String(describing: oneMonth!)) \(String(describing: dayOne!))th \(String(describing: oneText!)):\(String(describing: minOne!))\(String(describing: secOne!))"
        fp2.text = "FP2: \(String(describing: twoMonth!)) \(String(describing: dayTwo!))th \(String(describing: twoText!)):\(String(describing: minTwo!))\(String(describing: secTwo!))"
        fp3.text = "FP3: \(String(describing: threeMonth!)) \(String(describing: dayThree!))th \(String(describing: threeText!)):\(String(describing: minThree!))\(String(describing: secThree!))"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(times.uniTime), userInfo: nil, repeats: true)
    }
    
    @objc func uniTime(){
        let abuDhabi = Region(tz: TimeZoneName.asiaDubai, cal: CalendarName.gregorian, loc: LocaleName.arabicUnitedArabEmirates)
        
        let raceTime = DateInRegion(components: [.year: 2018, .month: 11, .day: 25, .hour: 17, .minute: 0], fromRegion: abuDhabi)
        let date = DateInRegion()
        let calculation = raceTime! - date
        
        let time: TimeInterval = calculation
        
        var options = ComponentsFormatterOptions(style: .full)
        options.allowedUnits = ([.day ,.hour ,.minute ,.second])
        let count = try! time.string(options: options)
        
        countdown.text = "Race Time: \(String(describing: count))"
    }
}
