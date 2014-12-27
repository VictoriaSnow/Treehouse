//
//  ViewController.swift
//  Stormy
//
//  Created by Victoria Bian on 12/26/14.
//  Copyright (c) 2014 Lifespice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var iconView: UIImageView!
    @IBOutlet var currentTimeLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var humidityLabel: UILabel!
    @IBOutlet var precipitationLabel: UILabel!
    @IBOutlet var summaryLabel: UILabel!
    @IBOutlet var refreshButton: UIButton!
    @IBOutlet var refreshActivityIndicator: UIActivityIndicatorView!
    
    
    
    
    
    private let apiKey = "8dd98413299783dfa5312559efc3c729"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshActivityIndicator.hidden = true
        getCurrentWeatherData()

    }
    
    
    func getCurrentWeatherData() {
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        let forecastURL = NSURL(string: "37.7577,-122.4376,12", relativeToURL: baseURL)
        let sharedSession = NSURLSession.sharedSession()
        let downloadTask: NSURLSessionDownloadTask = sharedSession.downloadTaskWithURL(forecastURL!, completionHandler: { (location: NSURL!, response: NSURLResponse!, error: NSError!) -> Void in
            
            
            
            if (error == nil) {
                let dataObject = NSData(contentsOfURL: location)
                let weatherDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(dataObject!, options: nil, error: nil) as NSDictionary
                let currentWeather = Current(weatherDictionary: weatherDictionary)
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.temperatureLabel.text = "\(currentWeather.temperature)"
                    self.iconView.image = currentWeather.icon!
                    self.currentTimeLabel.text = "At \(currentWeather.currentTime!) it is"
                    self.humidityLabel.text = "\(currentWeather.humidity)"
                    self.precipitationLabel.text = "\(currentWeather.precipProbability)"
                    self.summaryLabel.text = "\(currentWeather.summary)"
                    
                    
                    self.refreshActivityIndicator.stopAnimating()
                    self.refreshActivityIndicator.hidden = true
                    self.refreshButton.hidden = false
                })
            } else {
                let networkIssueController = UIAlertController(title: "Error", message: "Unable to load data. Connectivity error!", preferredStyle: .Alert)
                let dismissButton = UIAlertAction(title: "Dismiss", style: .Default, handler: nil)
                networkIssueController.addAction(dismissButton)
                self.presentViewController(networkIssueController, animated: true, completion: nil)
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.refreshActivityIndicator.stopAnimating()
                    self.refreshActivityIndicator.hidden = true
                    self.refreshButton.hidden = false
                })
            }
        })
        
        downloadTask.resume()
    }

    @IBAction func refresh() {
        getCurrentWeatherData()
        refreshButton.hidden = true
        refreshActivityIndicator.hidden = false
        refreshActivityIndicator.startAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

