//
//  ObservableObject+Error.swift
//  UsersPost
//
//  Created by user204006 on 9/16/21.
//

import Foundation
import Combine

extension ObservableObject {
    func sinkError(_ completion: Subscribers.Completion<Error>, loadingFinisher: () -> Void) {
        switch completion {
            case .failure(let error):
                loadingFinisher()
                debugPrint(error)
            default:
                break
        }
    }
}
