//
//  TaskViewController.swift
//  Composite
//
//  Created by Роман Колосов on 17.11.2020.
//

import UIKit

protocol Taskable {
    var name: String { get }
    var description: String { get }
    func open()
}

class TaskViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(UINib(nibName: String(describing: TaskCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: TaskCell.self))
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //protocol File {
    //    var name: String { get }
    //    var description: String { get }
    //    func open()
    //}
    //
    //class Folder: File {
    //    var name: String
    //    var files: [File] = []
    //
    //    var description: String {
    //        let fileName = files.compactMap { $0.description }.joined(separator: ", ")
    //        return "folder \(name) contains files: \(fileName)"
    //    }
    //
    //    init(name: String) {
    //        self.name = name
    //    }
    //
    //    func open() {
    //        print("open \(description)")
    //        print("open files:")
    //        files.forEach { $0.open() }
    //    }
    //}
    //
    //class PDFFile: File {
    //    var name: String
    //    var author: String
    //
    //    var description: String {
    //        return "book \(name) by \(author)"
    //    }
    //
    //    init(name: String, author: String) {
    //        self.name = name
    //        self.author = author
    //    }
    //
    //    func open() {
    //        print("open \(description)")
    //    }
    //}
    //
    //class JPGFile: File {
    //    var name: String
    //    var size: Int
    //
    //    var description: String {
    //        return "jpg \(name) of size \(size) Kb"
    //    }
    //
    //    init(name: String, size: Int) {
    //        self.name = name
    //        self.size = size
    //    }
    //
    //    func open() {
    //        print("open \(description)")
    //    }
    //}
    //
    //class MP3File: File {
    //    var name: String
    //    var artist: String
    //
    //    var description: String {
    //        return "track \(name) by \(artist)"
    //    }
    //
    //    init(name: String, artist: String) {
    //        self.name = name
    //        self.artist = artist
    //    }
    //
    //    func open() {
    //        print("open \(description)")
    //    }
    //}
    //
    //let folder1 = Folder(name: "root")
    //let folder2 = Folder(name: "folder2")
    //let folder3 = Folder(name: "folder3")
    //
    //let mp3File1 = MP3File(name: "Mama-Mia", artist: "Abba")
    //let mp3File2 = MP3File(name: "We will rock you", artist: "Queen")
    //let mp3File3 = MP3File(name: "Поворот", artist: "Машина Времени")
    //
    //let pdf1 = PDFFile(name: "Harry Potter and SOLID principles", author: "J.K. Rowling")
    //let pdf2 = PDFFile(name: "Война и мир", author: "Л.Н. Толстой")
    //let pdf3 = PDFFile(name: "Swift", author: "Apple")
    //
    //let photo1 = JPGFile(name: "my_photo", size: 100)
    //let photo2 = JPGFile(name: "family_photo", size: 300)
    //let photo3 = JPGFile(name: "school_portrait", size: 700)
    //
    //
    //folder1.files = [folder2, pdf1]
    //folder2.files = [folder3, pdf2, pdf3, photo1, photo2]
    //folder3.files = [mp3File1, mp3File2, mp3File3, photo3]
    //
    //folder1.open()


}

