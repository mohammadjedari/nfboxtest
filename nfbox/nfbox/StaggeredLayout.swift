//
//  StaggeredLayout.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

protocol StaggeredLayoutDelegate {
    // 1
    func collectionView(collectionView:UICollectionView, heightForPhotoAtIndexPath indexPath:NSIndexPath,
                        withWidth:CGFloat) -> CGFloat
    // 2
    func collectionView(collectionView: UICollectionView,
                        heightForAnnotationAtIndexPath indexPath: NSIndexPath, withWidth width: CGFloat) -> CGFloat
}

class StaggeredLayout: UICollectionViewLayout {
    
    var delegate: StaggeredLayoutDelegate!
    
    var numberOfColumns = 2
    var cellPadding:CGFloat = 3.0
    
    private var attributesData = [UICollectionViewLayoutAttributes]()
    
    private var contentHeight: CGFloat = 0.0
    private var contentWidth: CGFloat {
        let insets = collectionView!.contentInset
        return collectionView!.bounds.width - (insets.left + insets.right)
        
    }
    
    override func prepare() {
        let columnWidth = contentWidth / CGFloat(numberOfColumns)
        var xOffset = [CGFloat]()
        for column in 0..<numberOfColumns {
            xOffset.append(CGFloat(column) * columnWidth)
        }
        var column = 0
        var yOffset = [CGFloat](repeating: 0, count: numberOfColumns)
        for item in 0..<collectionView!.numberOfItems(inSection: 0) {
            let indexPath = NSIndexPath(item: item, section: 0)
            
            _ = columnWidth - cellPadding * 2
            let photoHeight: CGFloat = CGFloat(arc4random_uniform(100)) + CGFloat(50)
            let infoHeight: CGFloat = 100.0
            
            let height = photoHeight + infoHeight + (cellPadding * 2)
            
            let frame = CGRect(x: xOffset[column], y: yOffset[column], width: columnWidth, height: height)
            
            let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
            
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath as IndexPath)
            
            attributes.frame = insetFrame
            
            contentHeight = max(contentHeight, frame.maxY)
            yOffset[column] = yOffset[column] + height
            
            attributesData.append(attributes)
            
            column = column >= (numberOfColumns - 1) ? 0 : column+1
        }
        
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]
    {
        
        var layoutAttributes = [UICollectionViewLayoutAttributes]()
        
        for attributes in attributesData {
            if attributes.frame.intersects(rect) {
                layoutAttributes.append(attributes)
            }
        }
        return layoutAttributes
    }
    
}
