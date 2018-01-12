//
//  ViewController.swift
//  F1 Times
//
//  Created by Scott Andrews on 02/01/2018.
//  Copyright © 2018 Scott Andrews. All rights reserved.
//

import UIKit
import GoogleMobileAds

var f1Races = ["Australia", "Bahrain", "China","Azerbaijan","Spain","Monaco","Canada","France","Austria","Great Britain","Germany","Hungary","Belgium","Italy","Singapore","Russia","Japan","USA","Mexico","Brazil","Abu Dhabi"]

var myIndex = 0


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    var images:[String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"]
    
    var interstitial: GADInterstitial!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let itemSize = UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: 70 )
        
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        collectionView.collectionViewLayout = layout
        interstitial = createAndLoadInterstitial()
        
        let request = GADRequest()
      
        let hello = "hello"
        
        bannerView.adUnitID = "ca-app-pub-5657362465242162/6254459968"
        
        bannerView.rootViewController = self
        bannerView.delegate = self as? GADBannerViewDelegate
        bannerView.load(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collection: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return f1Races.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell

        cell.myText.text = f1Races[indexPath.row]
        cell.myImage.image = UIImage(named: images[indexPath.row] + ".jpg")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        interstitial.present(fromRootViewController: self)
        interstitial = createAndLoadInterstitial()
        performSegue(withIdentifier: "details", sender: self)
    }
    
    func createAndLoadInterstitial() -> GADInterstitial {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-5657362465242162/2377658665")
        interstitial.delegate = self as? GADInterstitialDelegate
        let request = GADRequest()
        //request.testDevices = [ "aa7be57d6db0a5948bc7f146e05e04cb" ];
        interstitial.load(request)
        
        return interstitial
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitial = createAndLoadInterstitial()
    }
}

