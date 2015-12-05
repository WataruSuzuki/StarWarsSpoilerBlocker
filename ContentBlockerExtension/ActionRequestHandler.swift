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

    func beginRequestWithExtensionContext(context: NSExtensionContext) {
        let blockerList_summary = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList_summary", withExtension: "json"))!
        let blockerList_episode7 = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList_episode7", withExtension: "json"))!
        let blockerList_kyloren = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList_kyloren", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [blockerList_summary,
            blockerList_kyloren,
            blockerList_episode7]
    
        context.completeRequestReturningItems([item], completionHandler: nil);
    }
    
}
