import UIKit

//შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)

enum Gender{
    case male
    case female
}

//შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender
//SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა
protocol SuperBeing{
    var name: String{
        get
    }
    var strength: Int{
        get
    }
    var speed: Int{
        get
    }
    var weakness: String{
        get
    }
    var gender: Gender{
        get
    }
}

extension SuperBeing{
    var speed: Int{
        return Int.random(in: 0..<210)
    }
    var strength:Int{
        return 100
    }
}

//შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
//გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String

class Superhero: SuperBeing{
    var name: String
    var weakness: String
    var gender: Gender
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    init(name: String,
         weakness: String,
         gender: Gender,
         outfitColor: String,
         equipment: String,
         vehicle: String){
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
    //გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს -
    func rescue(name: String){
        print("\(self.name) არ შეუშინდა სახიფათო სიტუაციას და \(name) გადაარჩინა სიკვდილს")
    }
   //გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს -
    func combat(villain: SuperVillain){
        print("\(self.name) შეერკინა და დაამარცხა \(villain.name)")
    }
    
}

//გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String
class SuperVillain: SuperBeing{
    var name: String
    var weakness: String
    var gender: Gender
    var evilScheme: String
    var obsession: String
    var rivalry: String
    
    init(name: String,
         weakness: String,
         gender: Gender,
         evilScheme: String,
         obsession: String,
         rivalry: String){
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivalry = rivalry
    }
    //გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს -
    func attack(superhero: Superhero){
        print("\(self.name) გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა \(superhero.name) მის შეჩერებას თუ შეძლებს”")
    }
    //გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს -
    func experimentation(subject: String){
        print("\(self.name) ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად \(subject) აღმოჩნდა” ")
    }

}
//შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან
var superhero1: Superhero = Superhero(name: "მამარდაშილი", weakness: "Nothing", gender: Gender.male, outfitColor: "შავი", equipment: "ხელთათმანები", vehicle: "BMW")
var superhero2: Superhero = Superhero(name: "ზივზივაძე", weakness: "Nothing", gender: Gender.male, outfitColor: "წითელი", equipment: "ფეხები", vehicle: "Porsche")
var superhero3: Superhero = Superhero(name: "კვარაცხელია", weakness: "Nothing", gender: Gender.male, outfitColor: "წითელი", equipment: "ფეხები", vehicle: "Mercedes")
var superhero4: Superhero = Superhero(name: "კაშია", weakness: "Nothing", gender: Gender.male, outfitColor: "წითელი", equipment: "ფეხები", vehicle: "BMW")
var superhero5: Superhero = Superhero(name: "ჩაკვეტაძე", weakness: "Nothing", gender: Gender.male, outfitColor: "წითელი", equipment: "ფეხები", vehicle: "Ford")

var supervillian1 = SuperVillain(name: "გელა", weakness: "მსუქანი", gender: Gender.male, evilScheme: "გადაჭამოს ყველაფერი", obsession: "ნარდის თამაში", rivalry: "ხვიჩა")
var supervillian2 = SuperVillain(name: "ევა", weakness: "ვაშლი", gender: Gender.female, evilScheme: "შეჭამოს მთელი მსოფლიოს ვაშლები", obsession: "ვაშლი", rivalry: "გველი")
var supervillian3 = SuperVillain(name: "იასონი", weakness: "მედეა", gender: Gender.male, evilScheme: "საწმისის გატაცება", obsession: "დრაკონის დამარცხება", rivalry: "აიეტი")
var supervillian4 = SuperVillain(name: "ანზორი", weakness: "სუსტი", gender: Gender.male, evilScheme: "გადაჭამოს ყველაფერი", obsession: "დიეტა", rivalry: "კარგი")
var supervillian5 = SuperVillain(name: "კრუელა", weakness: "ლეკვები", gender: Gender.female, evilScheme: "მოკლას ლეკვები", obsession: "შუბა", rivalry: "ძაღლები")

superhero1.combat(villain: supervillian3)
supervillian2.attack(superhero: superhero3)
superhero2.rescue(name: "ვილი სანიოლი")
supervillian5.experimentation(subject: "ანრი ჯოხაძე")


//დაწერეთ ჯენერიკ ფუნქცია compareSwiftness რომელიც იღებს მხოლოდ ორ პარამეტრს პირველ და მეორე სუპერგმირებს რომლებიც დაქვემდებარებულები იქნებიან SuperBeing პროტოკოლზე, ფუნქცია უნდა აბრუნებდეს სტრინგს
func compareSwiftness<T: SuperBeing>(_ firsthero: T, _ secondhero: T) -> String {
    if firsthero.speed > secondhero.speed {
        return "\(firsthero.name) უფრო სწრაფია ვიდრე \(secondhero.name)"
    } else if firsthero.speed < secondhero.speed {
        return "\(secondhero.name) უფრო სწრაფია ვიდრე \(firsthero.name)"
    } else {
        return "ორივე ერთი სისწრაფისაა :)"
    }
}


var winner1 = compareSwiftness(superhero2,superhero1)
var winner2 = compareSwiftness(superhero3,superhero4)
print(winner1)
print(winner2)
