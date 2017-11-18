class Quest{
    //this will have an array of Locations
    var locationList: [Location] = [Location(name: "Earth"), Location(name:"Star Destroyer"), Location(name:"Luna"),
    Location(name:"Red Crush Nebula"), Location(name:"Alpha Centauri A"), Location(name:"Alpha Centauri B")]
}

class Location{
    var name
    
    
    func isSafe(index :int)-> bool{
        // this function will generate a random number and set the safety of 
        //that location to 0 (safe) or 1 (not safe)
        var status =  Int(arc4random_uniform(1))
        if (status == 1){
            return false
        }
        else {
            return true
        }
    }
}
