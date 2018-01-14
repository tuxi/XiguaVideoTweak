//
//  ViewController.swift
//  VideoMac
//
//  Created by swae on 2018/1/14.
//  Copyright © 2018年 alpface. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    
    fileprivate let kPublicUrl = "public.url"
    fileprivate let kPublicUrlName = "public.url-name"
    fileprivate var questionURL: URL?
    fileprivate var pollingTimer: Timer?

    @IBOutlet weak var questionTextView: NSTextView!
    @IBOutlet weak var answerOptionTextView: NSTextView!
    var lastClipboardContent: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pollingTimer = {
            let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(reloadClipboardAvailability), userInfo: nil, repeats: true)
            timer.fire()
            return timer
        }()
        
    }
    
    /// 刷新剪切板的内容
    @objc fileprivate func reloadClipboardAvailability() -> Void {
        guard let str = self.getClipboardContent() else {
            return
        }
        
        if self.lastClipboardContent != str {
            // 有新的问题，展示，并打开safari搜索
            self.questionTextView.string = str;
            let urlString = "https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=\(str)&rsv_pq=9e3f8940000a7d93&rsv_t=6098P091FNMvH%2FbsQk%2FSuTNHaP7rcWfSF2ASrBryXd7sl7jojDw8SdIol04&rqlang=cn&rsv_enter=1&rsv_sug3=3&rsv_sug1=3&rsv_sug7=100"
            
            guard let url  = urlString.addingPercentEncoding(withAllowedCharacters: NSCharacterSet(charactersIn:"`#%^{}\"[]|\\<> ").inverted) else {
                return;
            }
            self.questionURL = URL(string:url)
            self.lastClipboardContent = str;
            self.searchAction()
        }
        
    }
    
    func searchAction() {
        guard let url = self.questionURL else {
            return
        }
        NSWorkspace.shared.open(url)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    /// 获取剪切板文本内容
    func getClipboardContent() -> String?  {
        var resultStr : String?
        
        let pb = NSPasteboard.general;
        
        for item in pb.pasteboardItems ?? [] {
            if let str = item.string(forType: NSPasteboard.PasteboardType(rawValue: kPublicUrl)) {
                resultStr = "url: \(str)"
            } else if let str = item.string(forType: NSPasteboard.PasteboardType(rawValue: kPublicUrlName)) {
                resultStr = "url name: \(str)"
            } else {
                resultStr = item.string(forType: NSPasteboard.PasteboardType.string)
            }
        }
        return resultStr
    }
    
    /// 将文本添加到剪切板
    func copyToClipboard(_ str: String?) {
        guard let content = str else { return }
        let pb = NSPasteboard.general
        pb.clearContents()
        pb.writeObjects([content as NSString])
    }
    
//    func demo() -> Void {
//        /// 开启定时器，监听剪切板的变化
//        let timer = DispatchSource.makeTimerSource(flags: [], queue:DispatchQueue.global())
//
//        timer.setEventHandler {
//
//            guard let str = self.getClipboardContent() else {
//                return
//            }
//
//            if self.lastClipboardContent != str {
//                // 有新的问题，展示，并打开safari搜索
//                self.questionTextView.string = str;
//                self.searchAction()
//            }
//
//        }
//
//        timer.schedule(deadline: .now())
//        timer.resume()
//    }

}

