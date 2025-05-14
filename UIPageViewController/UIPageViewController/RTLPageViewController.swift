//
//  RTLPageViewController.swift
//  UIPageViewController
//
//  Created by Mahmoud Batli on 11/05/2025.
//

import UIKit

class RTLPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var arryControles = [UIViewController]()
    var pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        dataSource = self
        
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "page") as! ViewController
        vc1.pageTitle = "First UI"
        vc1.pageDescription = "My Description"
        vc1.pageColor = UIColor.green
        
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "page") as! ViewController
        vc2.pageTitle = "Second UI"
        vc2.pageDescription = "My Description"
        vc2.pageColor = UIColor.red
        
        
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "page") as! ViewController
        vc3.pageTitle = "Third UI"
        vc3.pageDescription = "My Description"
        vc3.pageColor = UIColor.blue
        
        
        arryControles.append(vc1)
        arryControles.append(vc2)
        arryControles.append(vc3)
        
        if let firstVC = arryControles.first {
            setViewControllers([firstVC], direction: .forward, animated: true)
        }
        addPageControl()
        
    }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let currentIndex = arryControles.firstIndex(of: viewController) else {
                return nil
            }
            let afterIndex = currentIndex + 1
            guard afterIndex < arryControles.count else {
                return arryControles.first
            }
            return arryControles[afterIndex]
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let currentIndex = arryControles.firstIndex(of: viewController) else {
                return nil
            }
            let previousIndex = currentIndex - 1
            guard previousIndex >= 0 else {
                return arryControles.last
            }
            return arryControles[previousIndex]
        }
    func addPageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 75, width: UIScreen.main.bounds.width, height: 50))
        pageControl.numberOfPages = arryControles.count
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor.white
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.white
        view.addSubview(pageControl)
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewControler = pageViewController.viewControllers![0]
        pageControl.currentPage = arryControles.firstIndex(of: pageContentViewControler)!
    }
}
