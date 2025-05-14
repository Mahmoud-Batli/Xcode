//
//  PageViewController.swift
//  UIPageViewController
//
//  Created by Mahmoud Batli on 11/05/2025.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var arryControllers = [UIViewController]()
    var pageControl = UIPageControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        delegate = self
        dataSource = self
        
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "Page1")
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "Page2")
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "Page3")
        
        arryControllers.append(vc1!)
        arryControllers.append(vc2!)
        arryControllers.append(vc3!)
                
        if let firstVC = arryControllers.first {
            setViewControllers([firstVC], direction: .forward, animated: true)
        }
        addPageControl()
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arryControllers.firstIndex(of: viewController) else {
            return nil
        }
        let previousIndex = currentIndex - 1
        guard previousIndex >= 0 else {
//            return arryControllers.last     //For loop
            return nil
        }
        return arryControllers[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arryControllers.firstIndex(of: viewController) else {
            return nil
        }
        let afterIndex = currentIndex + 1
        guard afterIndex < arryControllers.count else {
//            return arryControllers.first    //For loop
            return nil
        }
        return arryControllers[afterIndex]
    }
    func addPageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 75, width: UIScreen.main.bounds.width, height: 50))
        self.pageControl.numberOfPages = arryControllers.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.white
        self.pageControl.pageIndicatorTintColor = UIColor.gray
        self.pageControl.currentPageIndicatorTintColor = UIColor.white
        self.view.addSubview(pageControl)
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewControler = pageViewController.viewControllers![0]
        self.pageControl.currentPage = arryControllers.firstIndex(of: pageContentViewControler)!
    }
}
