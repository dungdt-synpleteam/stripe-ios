//
//  STPStackViewWithSeparatorSnapshotTests.swift
//  StripeiOS Tests
//
//  Created by Cameron Sabol on 10/23/20.
//  Copyright © 2020 Stripe, Inc. All rights reserved.
//

import FBSnapshotTestCase

@testable import Stripe

class STPStackViewWithSeparatorTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
//        recordMode = true
    }
    
    func embedInRenderableView(_ stackView: STPStackViewWithSeparator) -> UIView {
        let containingView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 400))
        containingView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: containingView.leadingAnchor),
            containingView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: containingView.topAnchor),
            containingView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
        ])
        containingView.frame.size = containingView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return containingView
    }
    
    func testHorizontal() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let label2 = UILabel()
        label2.text = "Label 2"
        let label3 = UILabel()
        label3.text = "Label 3"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1, label2, label3])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .lightGray
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
    
    func testVertical() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let label2 = UILabel()
        label2.text = "Label 2"
        let label3 = UILabel()
        label3.text = "Label 3"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1, label2, label3])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .lightGray
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
    
    func testSingleArrangedSubviewHorizontal() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .lightGray
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
    
    func testSingleArrangedSubviewVertical() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .lightGray
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
    
    func testCustomColorHorizontal() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let label2 = UILabel()
        label2.text = "Label 2"
        let label3 = UILabel()
        label3.text = "Label 3"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1, label2, label3])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .red
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
    
    func testCustomColorVertical() {
        let label1 = UILabel()
        label1.text = "Label 1"
        let label2 = UILabel()
        label2.text = "Label 2"
        let label3 = UILabel()
        label3.text = "Label 3"
        let stackView = STPStackViewWithSeparator(arrangedSubviews: [label1, label2, label3])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.separatorColor = .red
       
        FBSnapshotVerifyView(embedInRenderableView(stackView))
    }
}
