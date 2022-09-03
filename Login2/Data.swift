//
//  Data.swift
//  Login2
//
//  Created by Potluri Priyatham on 03/09/22.
//

import Foundation

class User{
    var email:String
    var uname:String
    var pass:String
    init(_ email : String,_ uname:String, _ pass:String){
        self.email=email
        self.uname=uname
        self.pass=pass
    }
}

public class Data {
    private var database:[User]
    init(){
        self.database=[]
    }
    func insert(user:User){
        self.database.append(user)
    }
    func getDatabase()->[User]{
        return self.database
    }
    func delete(at:Int){
        self.database.remove(at: at)
    }
}
