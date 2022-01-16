//
//  getCartoons.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 12/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import Foundation
import Alamofire

class GetCartoons {

     func getList(completion: @escaping ([Cartoon]?) -> Void) {
        AF.request("https://api.sampleapis.com/cartoons/cartoons2D").responseDecodable(of: [Cartoon].self) { response in
            
            guard let cartoonsReceived = response.value else {
                print("No recibe")
                completion(nil)
                return
            }
            
            completion(cartoonsReceived)
            
        }
    }
    
}

/*

 */
