#!/bin/bash

name=$1
today=`date +%Y-%m-%d`
year=`date +%Y`

# View Protocol Template
view="
//
//  ${name}View.swift
//  Alpresor
//
//  Created by Hannes Lohmander on ${today}.
//  Copyright © ${year} STS Alpresor. All rights reserved.
//

import Foundation

protocol ${name}View : View {}
"

# ViewController Template
vc="
//
//  ${name}ViewController.swift
//  Alpresor
//
//  Created by Hannes Lohmander on ${today}.
//  Copyright © ${year} STS Alpresor. All rights reserved.
//

import UIKit
import RxCocoa

class ${name}ViewController: UIViewController, ${name}View {

    var presenter: ${name}Presenter? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.start(view: self)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter?.stop()
    }

    func showLoader() {}
    func hideLoader() {}
    func showError(msg: String) {}
}
"

# Presenter Template
presenter="
//
//  ${name}Presenter.swift
//  Alpresor
//
//  Created by Hannes Lohmander on ${today}.
//  Copyright © ${year} STS Alpresor. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import RxMoya

class ${name}Presenter : Presenter {

    var disposeBag: DisposeBag! = nil
    var view : ${name}ViewController! = nil
    var service: RxMoyaProvider<ApiService>? = nil

    func onStart() {
    }

    func onStop() {
        disposeBag = nil
    }
}
"

mkdir $name

echo "$view" > "${name}/${name}View.swift"
echo "$vc" > "${name}/${name}ViewController.swift"
echo "$presenter" > "${name}/${name}Presenter.swift"
