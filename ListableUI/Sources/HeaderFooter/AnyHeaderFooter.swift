//
//  AnyHeaderFooter.swift
//  ListableUI
//
//  Created by Kyle Van Essen on 12/14/20.
//

import Foundation


public protocol AnyHeaderFooter : AnyHeaderFooter_Internal
{
    var anyContent : Any { get }
    
    var sizing : Sizing { get set }
    var layouts : HeaderFooterLayouts { get set }
    
    var reappliesToVisibleView: ReappliesToVisibleView { get }
}


public protocol AnyHeaderFooter_Internal
{
    var layouts : HeaderFooterLayouts { get }
    
    func apply(
        to headerFooterView : UIView,
        for reason : ApplyReason,
        with info : ApplyHeaderFooterContentInfo
    )
    
    func anyIsEquivalent(to other : AnyHeaderFooter) -> Bool
    
    func newPresentationHeaderFooterState(performsContentCallbacks : Bool) -> Any
}
