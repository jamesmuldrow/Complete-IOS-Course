//: Playground - noun: a place where people can play

import UIKit

class Article {
    private var title: String
    private var author: String
    init() {
        title = ""
        author = ""
        print("Creating new Article Class")
    }
    
    func setTitle(title: String){
        self.title = title
    }
    
    func getTitle() -> String {
        return title
    }
    
    func setAuthor(author: String) {
        self.author = author
    }
    
    func getAuthor() -> String {
        return author
    }
}

let listOfAuthors = [
    "Bobby Joe",
    "Jonny Wilson",
    "Justice Smith",
    "Christina Altman",
    "Rusty Joe"
]

let listOfArticleTitles = [
    "Welcome to Atlanta",
    "World weather tempatures on yhe rise",
    "Murder at 1600 Pennslyvania",
    "Lucky Lotto Wnners",
    "New Technology in the App Store"
]

let articleList: String = []

for item in listOfAuthors {
    print(item)
}




























