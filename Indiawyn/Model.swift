//
//  File.swift
//  Indiawyn
//
//  Created by Keertika on 20/06/18.
//  Copyright © 2018 keertika. All rights reserved.
//

import Foundation
import SwiftyJSON
struct Model
{
    var userId =  Int()
    var id = Int()
    var title:String?
    var body:String
    init(json:JSON)
    {
        self.userId = json["userId"].int!  //?? 0
        self.id = json["id"].int!// ?? 0
self.title = json["title"].string ?? " "
        self.body = json["body"].string ?? ""

    }

}

