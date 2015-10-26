//
//  AddViewController.swift
//  CalendarApp2
//
//  Created by Julian Leong on 10/24/15.
//
//

import UIKit

class AddViewController: UIViewController , UITextFieldDelegate, UINavigationControllerDelegate{
    //MARK: Properties


    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveEvent: UIBarButtonItem!
    @IBOutlet weak var datePicker: UIDatePicker!

    var newEvent: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //assigns this view controller class as the deletegate for the text field
        textField.delegate = self
        checkValidEventName()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveEvent === sender {
            let eventName = textField.text ?? ""
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
            let myDate = dateFormatter.stringFromDate(datePicker.date)
            
            newEvent = Event(name: eventName, date: myDate)
        }
    }
    //MARK: Actions
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hides the keyboard, give control to the delegate
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        saveEvent.enabled = false
    }
    func checkValidEventName() {
        let text = textField.text ?? ""
        saveEvent.enabled = !text.isEmpty
    }
    func textFieldDidEndEditing(textField: UITextField) {
        //should store the value of textfield into a variable.
        checkValidEventName()
    }
    
    @IBAction func cancelEvent(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

