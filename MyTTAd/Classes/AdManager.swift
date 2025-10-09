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

open class AdManager {
    nonisolated(unsafe) public static let shared = AdManager()
    
    private init() {}
    
    public func loadAd(with id: String, completion: @escaping (Result<String, Error>) -> Void) {
        // 实现细节隐藏
    }
    
    open func comeOnWriteCode(){
        
    }
    
    public func nonoIdontKnow() {
        print("这个版本是1.1.3")
    }
}
