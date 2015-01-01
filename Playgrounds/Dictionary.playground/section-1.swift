// Playground - noun: a place where people can play

import UIKit

var countries = ["CA": "Canada", "BE": "France", "FR": "France"]

countries["CA"]
countries["US"] = "United States"
countries

countries["US"] = "United States of America"
countries

let item = countries.removeValueForKey("CA")
item
