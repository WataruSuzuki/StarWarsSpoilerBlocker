//
//  ActionRequestHandler.swift
//  ContentBlockerExtension
//
//  Created by 鈴木 航 on 2015/12/05.
//  Copyright © 2015年 WataruSuzuki. All rights reserved.
//

import UIKit
import MobileCoreServices

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
        let blockerList_summary = NSItemProvider(contentsOf: Bundle.main.url(forResource: "blockerList_summary", withExtension: "json"))!
        let blockerList_episode7 = NSItemProvider(contentsOf: Bundle.main.url(forResource: "blockerList_episode7", withExtension: "json"))!
        let blockerList_kyloren = NSItemProvider(contentsOf: Bundle.main.url(forResource: "blockerList_kyloren", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [blockerList_summary,
            blockerList_kyloren,
            blockerList_episode7]
    
        context.completeRequest(returningItems: [item], completionHandler: nil);
    }
    
}
