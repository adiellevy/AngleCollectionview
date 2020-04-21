//
//  AngelCollectionVC.swift
//  AngelCircleCollection
//
//  Created by Adiel Levy on 20/04/2020.
//  Copyright © 2020 Adiel Levy. All rights reserved.
//

import UIKit

class AngelCollectionVC: UIViewController {
    private let reuseIdentifier = "AngelCell"
    
    @IBOutlet weak var cvHeightConstraint: NSLayoutConstraint!
    var numOfCells : Int{
        return .random(in: 0...maxOfCells)
    }
    var maxOfCells : Int = 0{
        didSet{
            DispatchQueue.main.async {
                self.cvAngel.reloadData()
            }
        }
    }
 
    @IBOutlet weak var cvAngel: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cvAngel.register(UINib(nibName:"AngelCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        self.cvAngel.delegate = self
        self.cvAngel.dataSource = self
        self.cvAngel.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        self.setMaxOfCell(MaxOfCells: 1000)
        self.cvAngel.layoutIfNeeded()
    }
    func setMaxOfCell(MaxOfCells : Int){
        self.maxOfCells = MaxOfCells
    }
}
extension AngelCollectionVC: UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return numOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : AngelCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AngelCell
        cell.lblNumber.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        
        cell.lblNumber.text = "\(indexPath.row)"
        return cell
    }

}
