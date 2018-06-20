//
//  Presenter.swift
//  Indiawyn
//
//  Created by Keertika on 20/06/18.
//  Copyright © 2018 keertika. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Presenter:NSObject

{
    class func callApi(success:@escaping([Model])->(Void))
    {
        let Url = "https://jsonplaceholder.typicode.com/posts"
       
        
        Alamofire.request(Url, method: Alamofire.HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
          switch(response.result)
          {
            case .success:
            let jsonValue = JSON( response.result.value)
            
            var items : [Model] = []
            for (_,sub) in jsonValue
            {
                items.append(Model(json:sub))
            }
            success(items)
            
          case .failure(let error):
            
            break
            
            }
        }
        
    }
}
