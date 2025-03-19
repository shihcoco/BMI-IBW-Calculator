//
//  BaseViewController.swift
//  HiSOLID
//
//  Created by CocoShih on 2025/3/12.
//

import Combine
import UIKit

class BaseViewController: UIViewController {

    var safeArea: UILayoutGuide {
        view.safeAreaLayoutGuide
    }

    lazy var cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    deinit {
        #if DEBUG
        debugPrint(#function, NSStringFromClass(self.classForCoder))
        #endif
    }
}
