//  ViewController.swift
//  Project: 2020 HOROSCOPE
//  Input:   User input their birth year
//  Output:  User views their horoscope
//  Purpose: To create a single page app that allows a user to get their horoscope information
//  Created by Jocelyn M. Rodriguez on 4/18/20.
//  Copyright © 2020 CUNY Borough of Manhattan Community College. All rights reserved.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userOutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let s: String = textField.text!;
        if Int(s) == nil {
            userOutputLabel.text = "Sorry, \(s) is not a year. Please Enter Your Birth Year. Try again";
        } else {
            textField.resignFirstResponder();
        }
        return true;   //Always return true from this method.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        let year: Int = Int(s)!;
        let horoscope: String;   //uninitialized
        
        switch year % 12 {
        case 0:
            horoscope = "CAPRICORN";
            userOutputLabel.text = " \(horoscope).\t \n You will have to stay home. ";
        case 1:
            horoscope = "AQUARIUS";
            userOutputLabel.text = " \(horoscope).\t \n You will have to stay home.";
        case 2:
            horoscope = "PISCES";
            userOutputLabel.text = "(horoscope).\t \n You will have to stay home.";
        case 3:
            horoscope = "ARIES";
            userOutputLabel.text = " (horoscope).\t \n You will have to stay home.";
        case 4:
            horoscope = "TAURUS";
            userOutputLabel.text = " (horoscope).\t \n You will have to stay home. ";
        case 5:
            horoscope = "GEMINI";
            userOutputLabel.text = "(horoscope).\t \n You will have to stay home. ";
        case 6:
            horoscope = "CANCER";
            userOutputLabel.text = " (horoscope).\t \n You will have to stay home.";
        case 7:
            horoscope = "LEO";
            userOutputLabel.text = "(horoscope).\t \n You will have to stay home.."
        case 8:
            horoscope = "VIRGO";
            userOutputLabel.text = "(horoscope).\t \n You will have to stay home."
        case 9:
            horoscope = "LIBRA";
            userOutputLabel.text = "(horoscope).\t \n You will have to stay home. "
        case 10:
            horoscope = "SCORPIO";
            userOutputLabel.text = " (horoscope).\t \n You will have to stay home. "
        case 11:
            horoscope = "SAGITTARIUS";
            userOutputLabel.text = " (horoscope).\t \n You will have to stay home."
        default:
            horoscope = "";
        }
        
        if horoscope == "" {
            userOutputLabel.text = "Bad division: \(year) % 12 = \(year % 12)"; //should never happen
        }
    }
    
    
    
    
    
}

