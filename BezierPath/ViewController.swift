//
//  ViewController.swift
//  BezierPath
//
//  Created by Pratyush Pratik on 05/09/17.
//  Copyright © 2017 Code-Brew Labs. All rights reserved.
//

/*
 
 What is BezierPath?
 
 - A path that consists of straight and curved line segments that you can render in your custom views.
 
 i.e You use this class initially to specify just the geometry for your path. Paths can define simple shapes such as rectangles, ovals, and arcs or they can define complex polygons that incorporate a mixture of straight and curved line segments.
 
 Note:- 
 
 - A UIBezierPath object combines the geometry of a path with attributes that describe the path during rendering.
 - A UIBezierPath object is a wrapper for a CGPath data type.
 - Paths are vector-based shapes that are built using line and curve segments.
 - You can use line segments to create Geometric Shapes.
 - A single UIBezierPath object may contain one or more subpaths that define the overall path, separated by moveToPoint: commands that effectively raise the drawing pen and move it to a new location.
 
 Steps of Usage:-
 
 The processes for building and using a path object are separate. Building the path is the first process and involves the following steps:
 
 - Create the path object.
 -  Set any relevant drawing attributes of your UIBezierPath object, such as the lineWidth or lineJoinStyle properties for stroked paths or the usesEvenOddFillRule property for filled paths. These drawing attributes apply to the entire path.
 - Set the starting point of the initial segment using the moveToPoint: method.
 - Add line and curve segments to define a subpath.
 - Optionally, close the subpath by calling closePath, which draws a straight line segment from the end of the last segment to the beginning of the first.
 - Optionally, repeat the steps 3, 4, and 5 to define additional subpaths.
 
 */


import UIKit

class ViewController: UIViewController {
    
    let width: CGFloat = 240.0
    let height: CGFloat = 160.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let demoView = DemoView(frame: CGRect(x: self.view.frame.size.width/2 - width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        self.view.addSubview(demoView)
    }
}

