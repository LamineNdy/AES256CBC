//: Playground - noun: a place where people can play

import UIKit
import AES256CBC

var str = "Hello, playground"

let key = AES256CBC.generatePassword()

let encrypteString = AES256CBC.encryptString("my little secret", password: key, padding: ZeroPadding())

let decryptedString = AES256CBC.decryptString(encrypteString!, password: key, padding: ZeroPadding())
