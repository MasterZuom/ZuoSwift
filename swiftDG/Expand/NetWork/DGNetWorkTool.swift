//
//  DGNetWorkTool.swift
//  swiftDG
//
//  Created by mao zuo on 2017/11/14.
//  Copyright © 2017年 maozuo. All rights reserved.
//

import UIKit
import AFNetworking

enum DGHTTPMethod {
    case GET
    case POST
}

#if DEBUG
    let hostString:String = "https://pre.dealglobe.com/"
#else
    let hostString:String = "https://dealglobe.com/"
#endif

class DGNetWorkTool: AFHTTPSessionManager {
    
    /// 静态区／常量／闭包
    /// 在第一次访问时，执行闭包，并且将结果保存在 shared 常量中
    static let sharedNetworkTool:DGNetWorkTool = {
        
        //实例化对象
        let instance = DGNetWorkTool(baseURL: NSURL(string:hostString) as URL?)
        
        //设置响应反序列化支持的数据类型
        instance.responseSerializer.acceptableContentTypes?.insert("text/plain")
        
        //返回对象
        return instance
    }()
    
    // 将成功和失败的回调写在一个逃逸闭包中(请求)
    /// 封装 AFN 的 GET / POST 请求
    ///
    /// - parameter method:     GET / POST
    /// - parameter URLString:  URLString
    /// - parameter parameters: 参数字典
    /// - parameter completion: 完成回调[json(字典／数组), 是否成功]
    func request(requestType:DGHTTPMethod, url:String, parameters:[String:Any] ,resultBlock:@escaping([String:Any]?,Error?)->()){
        //成功的闭包
        let successBlock = {(task:URLSessionDataTask, responseObj:Any?) in
            resultBlock(responseObj as?[String:Any],nil)
        }
        
        //失败的闭包
        let failureBlock = {(task: URLSessionDataTask?, error: Error) in
            resultBlock(nil,error)
        }
        
        //请求头（accessToken）
        
        
        //Get请求
        if requestType == .GET{
            get(url, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
        
        //Post请求
        if requestType == .POST{
            post(url, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
    }
    
    // MARK: - 封装 AFN 方法
    /// 上传文件必须是 POST 方法，GET 只能获取数据
    /// 封装 AFN 的上传文件方法
    ///
    /// - parameter URLString:  URLString
    /// - parameter parameters: 参数字典
    /// - parameter name:       接收上传数据的服务器字段(name - 要咨询公司的后台) `pic`
    /// - parameter data:       要上传的二进制数据
    /// - parameter completion: 完成回调
    func upload(urlString:String, parameters:AnyObject?,constructingBodyWithBlock:((_ formData:AFMultipartFormData)->Void)?,uploadProgress:((_ progress:Progress)->Void)?,success:((_ responseObject:AnyObject?)->Void)?,failure:((_ error: NSError)->Void)?) ->Void{
        
        DGNetWorkTool.sharedNetworkTool.post(urlString, parameters: parameters, constructingBodyWith: { (formData) in
            if constructingBodyWithBlock != nil {
                constructingBodyWithBlock!(formData)
            }
        }, progress: { (progress) in
            if uploadProgress != nil{
                uploadProgress!(progress)
            }
        }, success: { (task, objc) in
            if objc != nil && success != nil {
                success!(objc as AnyObject?)
            }
        }) { (task, error) in
            if failure != nil {
                failure!(error as NSError)
            }
        }
    }
    
    func host()->String{
        return hostString
    }
}


