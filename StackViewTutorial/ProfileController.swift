//
//  ProfileController.swift
//  StackViewTutorial
//
//  Created by Tandem on 24/05/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout{ //flow layout to set all the size
    
    fileprivate let headerId = "headerId"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView?.alwaysBounceVertical = true
        
        let headerNib = UINib(nibName: "Header", bundle: nil) //the header is the name of the .xib file, ignore the file type. //the bundle if set to nil means will search for the main bundle(folder i guess?), in this case is StackViewTutorial
        collectionView?.register(headerNib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    //MARK: UICollectionView
    //size of the header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
    
    //size of the header view, just like how we dequeue the cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
    
}
