//
//  ViewController.swift
//  UtilitiesInSwiftTest
//
//  Created by Axe on 3/2/21.
//

import UIKit
// import UtilitiesInSwiftPackage

class ViewController: UIViewController {
    var cc = CancelableClosure() // axe maintain the var
    var autoComplete: AutoFillTextField?
    var runOnce = true

    @IBOutlet var textF: UITextField!

    @IBAction func textFieldChanged() {
    }

    func tests() {
//        var num = "123,456.78"
//        print("Origial number --> \(num)   \(NumberToWords.convert(amount: num))")
//        num = "0"
//        print("Origial number --> \(num)   \(NumberToWords.convert(amount: num))")
//        num = "1"
//        print("Origial number --> \(num)   \(NumberToWords.convert(amount: num))")
//        num = "2"
//        print("Origial number --> \(num)   \(NumberToWords.convert(amount: num))")
//        num = "1.23"
//        print("Origial number --> \(num)   \(NumberToWords.convert(amount: num))")
//
//        let start = Date().timeIntervalSince1970
//        Queues.delayThenRunMainQueue(delay: 2) {
//            print("delayed in queue --> \(Date().timeIntervalSince1970 - start)")
//        }
//
//        print("Available device space --> \(FileSystem.availableDeviceSpace().1) bytes")


//        cc.cancelled = true
//
//        let newCc = CancelableClosure()
//        newCc.closure = { // [weak self] in
//            print("closure called")
//        }
//
//        cc = newCc
//        cc.runAfterDelayOf(delayTime: 1.5)
//
//        let color = UIColor(red: 10, green: 20, blue: 30)
//        print("Int value of color --> \(UIColor.hexFromColor(color: color))")
//        print("UIColor from Int --> \(UIColor.colorWithHex(hex: UIColor.hexFromColor(color: color)))")
//
//        for intVal in [1, 10000, 50000, 100000, 1000000, 10000000, (5280 * 1000) - 1, 5280 * 1000, 999999, 999990, 999900]
//        {
//            let distance = intVal.distance()
//            print("\(distance.num)\(distance.designator)")
//            print(intVal.fullNotation())
//            print("------------")
//        }
//
//        UISsendLocalAlert(delaySeconds: 10)
//        print(UISmemoryUsage())
//        UISvibrate()
//        print(UISgenerateSecureCode(size: 100))
//        UISDebugPrint(UISgenerateSecureCode(size: 100, onlyLetters: true))
//        UISloadURLdisplayInWeb(vc: self, url: "https://www.axee.com")
//        UISDEINIT(val: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let listOfNames = [
            AutoFillTextFieldData(name: "abc", imageUrl: "https://firebasestorage.googleapis.com/v0/b/cloudcode007.appspot.com/o/poi%2FIMG_0675.jpeg?alt=media&token=d5738e33-8f97-4f52-9e97-6f585d895a10"),
            AutoFillTextFieldData(name: "frefreabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "rregergabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "agregrtegbc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "etrhtrhtrgerghabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "ztrhtrgregrrhthabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "abtrhwdwqdtrhthabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
            AutoFillTextFieldData(name: "iabc", imageUrl: "http://www.axelrod.net/safetynet1.PNG"),
            AutoFillTextFieldData(name: "babtrhwdwqdtrhthabc", imageUrl: "http://www.axelrod.net/poi.jpg"),
        ]

        autoComplete = AutoFillTextField(triggers: "@+*", textF: textF, view: view, list: listOfNames, backColor: UIColor.clear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if runOnce { tests() }
        runOnce = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
