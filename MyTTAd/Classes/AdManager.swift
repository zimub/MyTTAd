//
//  AdManager.swift
//  Pods
//
//  Created by panguowen on 2025/9/23.
//


//
//  AdManager.swift
//  Pods
//
//  Created by panguowen on 2025/9/22.
//


// MyTTAd/Classes/AdManager.swift
import Alamofire
import SnapKit

public class AdManager {
    public static let shared = AdManager()
    
    private init() {}
    
    public func loadAd(with id: String, completion: @escaping (Result<String, Error>) -> Void) {
        // 实现细节隐藏
    }
    
    public func comeOnWriteCode(){
        
    }
}
