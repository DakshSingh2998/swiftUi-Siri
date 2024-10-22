/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The application delegate.
*/

import UIKit
import Intents
import PaymentsFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    /// - Tag: SetVocabularyStrings
    func applicationDidFinishLaunching(_ application: UIApplication) {
        // Register names of contacts that may not be in the user's address book.
        INPreferences.requestSiriAuthorization({ (status) in
        })
        let contactNames = Contact.sampleContacts.map { $0.formattedName }
        INVocabulary.shared().setVocabularyStrings(NSOrderedSet(array: contactNames), of: .contactName)
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([any UIUserActivityRestoring]?) -> Void) -> Bool {
        print("ddddd")
        return true
    }

}
