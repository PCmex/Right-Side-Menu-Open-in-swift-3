//
//  MenuViewController.swift
//  RIghtSideMenuOpen
//
//  Created by Parth Changela on 13/11/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var imgProfile: UIImageView!
    var menuNameArr:Array = [String]()
    var iconArr:Array = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        menuNameArr = ["Home","Message","Map","Setting"]
        iconArr = [UIImage(named: "home")!,UIImage(named: "message")!,UIImage(named: "map")!,UIImage(named: "setting")!]

        imgProfile.layer.borderWidth = 2
        imgProfile.layer.borderColor = UIColor.red.cgColor
        imgProfile.layer.masksToBounds = false
        imgProfile.layer.cornerRadius = 100
        imgProfile.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return menuNameArr.count

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as! MenuTableViewCell

        cell.lblMenuName.text! = menuNameArr[indexPath.row]
        cell.imgIcon.image = iconArr[indexPath.row]

        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let revealViewController:SWRevealViewController = self.revealViewController()

        let cell:MenuTableViewCell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell

        if cell.lblMenuName.text! == "Home"
        {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontViewController = UINavigationController.init(rootViewController:desViewController)

            revealViewController.pushFrontViewController(newFrontViewController, animated: true)


        }

        if cell.lblMenuName.text! == "Message"
        {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desViewController = mainStoryBoard.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
            let newFrontViewController = UINavigationController.init(rootViewController:desViewController)

            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
            
            
        }

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
