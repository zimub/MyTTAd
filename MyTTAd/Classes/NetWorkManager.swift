//
//  NetWorkManager.swift
//  MyTTAd
//
//  Created by panguowen on 2025/10/13.
//

import UIKit
import Alamofire
public class NetWorkManager {
    nonisolated(unsafe) public static let shared = NetWorkManager()
    private init() {}
    public func getRequest() {
        AF.request("https://jsonplaceholder.typicode.com/posts").responseJSON { response in
            switch response.result {
            case .success(let value):
                print("请求成功: \(value)")
            case .failure(let error):
                print("请求失败: \(error)")
            }
        }
    }
}
