//
//  ViewModel.swift
//  Completion
//
//  Created by Avijit Nagare on 01/12/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit


class ViewModel: NSObject {

    var clientObject = Client()
    
    var movies = [String]()
    
    func makeServerCall( myViewControllerCall : ()->() ) {
    
        clientObject.actualCall(completion: { movieResponse in
            self.movies = movieResponse
            
            myViewControllerCall()
           
         })
        
        
    }
    
    func titleForRowAtIndex(atRow: Int ,index : IndexPath ) -> String {
        return self.movies[atRow]
    }
   
    
}


extension ViewModel: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = self.movies[indexPath.row]
        return cell
    }
}
