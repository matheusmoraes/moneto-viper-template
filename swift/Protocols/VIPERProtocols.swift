//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

protocol VIPERViewProtocol: class {
    var presenter: VIPERPresenterProtocol! { get set }
    // Presenter -> View
}

protocol VIPERWireframeProtocol: class {
    // Presenter -> Wireframe
    func presentVIPERFromViewController(_ controller: UIViewController!)
    func presentErrorAlert(title: String, message: String)
}

protocol VIPERPresenterProtocol: class {
    var view: VIPERViewProtocol! { get set }
    var interactor: VIPERInteractorInputProtocol! { get set }
    var wireframe: VIPERWireframeProtocol! { get set }
    // View -> Presenter
}

protocol VIPERInteractorOutputProtocol: class {
    // Interactor -> Presenter
}

protocol VIPERInteractorInputProtocol: class {
    var output: VIPERInteractorOutputProtocol! { get set }
    var APIDataManager: VIPERAPIDataManagerInputProtocol! { get set }
    var localDatamanager: VIPERLocalDataManagerInputProtocol! { get set }
    // Presenter -> Interactor
}

protocol VIPERDataManagerInputProtocol: class {
    // Interactor -> DataManager
}

protocol VIPERAPIDataManagerInputProtocol: class {
    // Interactor -> ApiDataManager
}

protocol VIPERLocalDataManagerInputProtocol: class {
    // Interactor -> LocalDataManager
}
