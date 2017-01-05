//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class VIPERWireframe: VIPERWireframeProtocol {

    // MARK: Constants

    let storyboardName = ""
    let viewControllerIdentifier = ""

    // MARK: Instance Variables
    
    weak var viewController: VIPERViewController!
    var presenter: VIPERPresenter!
    
    // MARK: Public
    
    init () {
        let interactor = VIPERInteractor()
        presenter = VIPERPresenter()
        presenter.interactor = interactor
        presenter.wireframe = self
        interactor.output = presenter
    }
    
    // MARK: VIPERWireframeProtocol

    func presentVIPERFromViewController(_ controller: UIViewController!) {
        viewController = VIPERViewControllerFromStoryboard()
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.wireframe = self
        controller.present(viewController, animated: true, completion: nil)
    }

    func presentErrorAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        viewController.present(alertController, animated: true, completion: nil)
    }

    // MARK: Private
   
    private func VIPERViewControllerFromStoryboard() -> VIPERViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier) as! VIPERViewController
        return vc
    }
}
