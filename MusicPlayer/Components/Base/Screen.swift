//
//  Screen.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

internal protocol Screenable: AnyObject {

    var identifier: String { get }
    var event: ((Navigation) -> Void)? { get set }

    func build() -> ViewController
}

internal class Screen<T>: Screenable {

    var identifier: String {
        return ""
    }

    var event: ((Navigation) -> Void)?

    var input: T

    init(_ input: T) {
        self.input = input
    }

    func build() -> ViewController {
        return ViewController()
    }

}
