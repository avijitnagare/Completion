//
//  Client.swift
//  Completion
//
//  Created by Avijit Nagare on 01/12/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class Client: NSObject {

    func actualCall(completion: (_ movies: [String] ) -> () ) {
        //call service response in completion handler
        completion(["Harry porter","Tarzon"])
    }
    
}
