//
//  ViewController.swift
//  TwitDA
//
//  Created by James Muldrow on 3/7/18.
//  Copyright © 2018 James Muldrow. All rights reserved.
//

import UIKit
import TwitterKit
import SwiftyJSON
import FacebookCore
 

class ViewController: UIViewController{
    
    @IBOutlet var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
//        let params = [
//            "status":"@cytelligenceapp - First automated tweet from app!"
//            ]
//        //let urlString = "https://api.twitter.com/1.1/users/show.json"
//        let urlString = "https://api.twitter.com/1.1/statuses/update.json"
//
//        var clientError : NSError?
//
//
//
//
//        TWTRTwitter.sharedInstance().logIn(with: self, completion: {(session, error) -> Void in
//            if session != nil {
//                print("Signed in as \(String(describing: session?.userName))")
//                self.mainLabel.text = "Successfull Login!"
//                if let userID = TWTRTwitter.sharedInstance().sessionStore.session()?.userID {
//                    let client = TWTRAPIClient(userID: userID)
//                    let request = client.urlRequest(withMethod: "POST", urlString: urlString, parameters: params, error: &clientError)
//
//                    client.sendTwitterRequest(request, completion: {(response, data, error) in
//                        if (error != nil){
//                            print("Error: \(error!.localizedDescription)")
//                            print(error!)
//                            print(TWTRTwitter.sharedInstance().sessionStore.existingUserSessions())
//                        } else {
//                            let json = JSON(data!)
//                            print(json)
//                        }
//                    })
//                }
//
//
//            } else {
//                print("Error: \(String(describing: error?.localizedDescription))")
//                print(error!)
//            }
//        })
//
//        print(TWTRTwitter.sharedInstance().version)
        let connection = GraphRequestConnection()
        connection.add(GraphRequest(graphPath: "/me")) { httpResponse, result in
            switch result {
            case .success(let response):
                print("Graph Request Succeeded: \(response)")
            case .failed(let error):
                print("Graph Request Failed: \(error)")
            }
        }
        connection.start()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

