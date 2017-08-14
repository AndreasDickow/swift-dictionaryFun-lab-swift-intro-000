//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
        import Foundation

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    
    var favoriteFlavorsOfIceCream: [String :String] = ["Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Susan": "Cookies 'N' Cream"
]
    
    
    // 2.
    
    
    func names(forFlavor flavor: String) -> [String] {
        var res: [String] = []
        for (key,val) in favoriteFlavorsOfIceCream{
            if val == flavor{
                res.append(key)
            }
        }
        return res
    }
    
    
    
    // 3.
    
    
    func count(forFlavor flavor: String) -> Int{
        var count:Int = 0
        for (_,val) in favoriteFlavorsOfIceCream{
            if val == flavor{
                count += 1
            }
        }
        return count

    }
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String?{
        
        for (key,val) in favoriteFlavorsOfIceCream{
            if key == person{
                return val
            }
        }
        return nil
        
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor:String,forPerson person:String) -> Bool {
    
        
        for (key,_) in favoriteFlavorsOfIceCream{
            if key == person{
                favoriteFlavorsOfIceCream[key] = flavor
                return true
            }
        }
        return false
        
    }
    
    
    
    
    
    // 6.
    
    func remove(person:String) -> Bool{
    
        
        for (key,_) in favoriteFlavorsOfIceCream{
            if key == person{
                favoriteFlavorsOfIceCream[key] = nil
                return true
            }
        }
        return false

    }
    
    
    
    
    
    
    
    
    // 7.
    
    
    
    func numberOfAttendees() -> Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    // 8.
    
    
    
    
    func add(person:String,withFlavor flavor:String) -> Bool{
        for (key,_) in favoriteFlavorsOfIceCream{
            if key == person{
                return false
            }
        }
         favoriteFlavorsOfIceCream[person] = flavor
        
        return true

    }
    
    
    
    
    // 9.
    
    func attendeeList() -> String{
        var list = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames{
            if let cream = favoriteFlavorsOfIceCream[name]{
                if list != ""{
                    list = "\(list)\n\(name) likes \(cream)"

                }
                else{
                    list = "\(name) likes \(cream)"

                }
            }
        }
        return list
    }
    
    

}
