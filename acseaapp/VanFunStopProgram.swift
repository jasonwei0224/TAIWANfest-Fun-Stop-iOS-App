//
//  VanFunStopProgram.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

 class VanFunStopProgram: UIViewController {
    var programCode = "0" ;
    var programOneComplete = false;
    var programTwoComplete = false;
    var programThreeComplete = false;
    var programFourComplete = false;
    var programFiveComplete = false;
    var programSixComplete = false;
    var programSevenComplete = false;
    var programEightComplete = false;
    var programNineComplete = false;
    var programTenComplete = false;
    
    let programOneKey = "programOneComplete"
    let programTwoKey = "programTwoComplete"
    let programThreeKey = "programThreeComplete"
    let programFourKey = "programFourComplete"
    let programFiveKey = "programFiveComplete"
    let programSixKey = "programSixComplete"
    let programSevenKey = "programSevenComplete"
    let programEightKey = "programEightComplete"
    let programNineKey = "programNineComplete"
    let programTenKey = "programTenComplete"
   
    var programOneText = "Program One"
    let programTwoText = "Program Two"
    let programThreeText = "Program Three"
    let programFourText = "Program Four"
    let programFiveText = "Program Five"
    let programSixText = "Program Six"
    let programSevenText = "Program Seven"
    let programEightText = "Program Eight"
    let programNineText = "Program Nine"
    let programTenText = "Program Ten"
    
    let defaults = UserDefaults.standard
    

    
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var funStopProgramList = [
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programOneText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programTwoText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programThreeText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programFourText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programFiveText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programSixText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programSevenText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programEightText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programNineText),
            VanFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programTenText),
            
            ];
        
        
        programOneComplete = (defaults.bool(forKey: programOneKey))
        programTwoComplete = (defaults.bool(forKey: programTwoKey))
        programThreeComplete = (defaults.bool(forKey: programThreeKey))
        programFourComplete = (defaults.bool(forKey: programFourKey))
        programFiveComplete = (defaults.bool(forKey: programFiveKey))
        programSixComplete = (defaults.bool(forKey: programSixKey))
        programSevenComplete = (defaults.bool(forKey: programSevenKey))
        programEightComplete = (defaults.bool(forKey: programEightKey))
        programNineComplete = (defaults.bool(forKey: programNineKey))
        programTenComplete = (defaults.bool(forKey: programTenKey))
        if(segue.identifier == "VanFunStopSegue"){
            let table = segue.destination as! VanFunStopTableViewController
            table.data1 = funStopProgramList
        }
    
        
        if (programOneComplete || programCode == "1"){
            funStopProgramList[0] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p1")
            
            programOneComplete = true;
            self.defaults.set(self.programOneComplete, forKey: programOneKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTwoComplete || programCode == "2"){
            funStopProgramList[1] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p2")
            programTwoComplete = true
            self.defaults.set(self.programTwoComplete, forKey: programTwoKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programThreeComplete || programCode == "3"){
            funStopProgramList[2] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p3")
            programThreeComplete = true
            self.defaults.set(self.programThreeComplete, forKey: programThreeKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFourComplete || programCode == "4"){
            funStopProgramList[3] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p4")
            programFourComplete = true
            self.defaults.set(self.programFourComplete, forKey: programFourKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFiveComplete || programCode == "5"){
            funStopProgramList[4] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p5")
            programFiveComplete = true
            self.defaults.set(self.programFiveComplete, forKey: programFiveKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSixComplete || programCode == "6"){
            funStopProgramList[5] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p6")
            programSixComplete = true
            self.defaults.set(self.programSixComplete, forKey: programSixKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSevenComplete || programCode == "7"){
            funStopProgramList[6] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p7")
            programSevenComplete = true
            self.defaults.set(self.programSevenComplete, forKey: programSevenKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programEightComplete || programCode == "8"){
            funStopProgramList[7] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p8")
            programEightComplete = true
            self.defaults.set(self.programEightComplete, forKey: programEightKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programNineComplete || programCode == "9"){
            funStopProgramList[8] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p9")
            programNineComplete = true
            self.defaults.set(self.programNineComplete, forKey: programNineKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTenComplete || programCode == "10"){
            funStopProgramList[9] = VanFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p10")
            programTenComplete = true
            self.defaults.set(self.programTenComplete, forKey: programTenKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
       
    }
    

    @IBAction func startVanFunStopMap(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
        let VanFunStopMap = storyBoard.instantiateViewController(withIdentifier: "VanFunStopMap") as! VanFunStopMap;
        self.present(VanFunStopMap, animated: true, completion: nil)
    }
    @IBAction func startVanFunStopRule(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanFunStopRule = storyBoard.instantiateViewController(withIdentifier: "VanFunStopRule") as! VanFunStopRule;
        self.present(VanFunStopRule, animated: true, completion: nil)
    }
    @IBAction func startVanFunStopCamera(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanQRCodeScanner = storyBoard.instantiateViewController(withIdentifier: "VanQRCodeScanner") as! VanQRCodeScanner;
        self.present(VanQRCodeScanner, animated: true, completion: nil)
    }
    @IBAction func startVanMainMenu(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanMainMenu = storyBoard.instantiateViewController(withIdentifier: "VanMainMenu") as! VanMainMenu;
        self.present(VanMainMenu, animated: true, completion: nil)
    }
    
    

}
