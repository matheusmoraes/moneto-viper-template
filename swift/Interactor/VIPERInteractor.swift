//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class VIPERInteractor: VIPERInteractorInputProtocol {
    weak var output: VIPERInteractorOutputProtocol!
    var APIDataManager: VIPERAPIDataManagerInputProtocol!
    var localDatamanager: VIPERLocalDataManagerInputProtocol!
    
    init() {}
}
