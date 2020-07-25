//
//  UserDatabaseManager.swift
//  InductionApp
//
//  Created by QLC on 25/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit
import CoreData

class UserDatabaseManager: NSObject {
    
    public static let shared = UserDatabaseManager()
    var context: NSManagedObjectContext!
    
    override init() {
        super.init()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        context = appDelegate.persistentContainer.viewContext
    }
    
    public func insertUser(userId: Int,userFirstName: String,userLastName: String,userEmailAddress: String,userToken: String,userDesignation: String) {
        
        print(userId,userFirstName,userLastName,userEmailAddress,userToken,userDesignation)
        
        guard let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context) as? User else {return}
        
        newUser.userId = Int64(userId)
        newUser.userFirstName = userFirstName
        newUser.userLastName = userLastName
        newUser.userEmailAddress = userEmailAddress
        newUser.userToken = userToken
        newUser.userDesignation = userDesignation
        
        saveManagerContext()
    }
    
    public func fetchUser() -> User? {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(fetchRequest) as? [User]
            return result?.first
        } catch(let error) {
            print(error.localizedDescription)
            return nil
        }
    }
    
    func deleteUser() -> Bool {
        
        let deleteRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        deleteRequest.returnsObjectsAsFaults = false
        do {
            guard let result = try context.fetch(deleteRequest) as? [User] else {return false}
            context.delete(result.first!)
            saveManagerContext()
            return true
        } catch (let error) {
            print(error.localizedDescription)
            return false
        }
    }
    
    private func saveManagerContext() {
        do {
            try context.save()
        } catch(let error) {
            print(error.localizedDescription)
        }
    }
}
