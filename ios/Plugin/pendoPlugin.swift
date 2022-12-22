import Foundation
import Capacitor
import Pendo
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(pendoPlugin)
public class pendoPlugin: CAPPlugin {
    private let implementation = pendo()
    var pendoAppKey = "eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiJlODJjYzA4MTJlMjlkNDAwMDVmYTEwNWIxMDgwYTcyNzlmNjI1MzcwYzJiNzdjNTk2NjZkZjU0NzhhMDczNjk5YmRhOWE2YjBjM2E5ZDcyN2FhZDIyYjRkNzMzY2QxMWMwMzQ5NDExN2E4MmU3ZDNkMDg4NTU0MDA1NDUwOGU0YmRlOWRiMjc0MmRmNDlmZTAzMmI2MmRlMDViMTMzZjA0LjE2M2EwMmIwOGJiYzhkMDBkMGI0NmMwNDljZGY0MGM5LmI5NWJhYWIyOWY3ZDU4OTI5MzYxMzY5OWU2ZTA5NmM5N2ZjOGYzY2U4MzliOGZmZjhlYzNmYzFiYTRhNjM3ODIifQ.rZ5wQSXdYwd56e8KMMcmc1Bf2u-bHmnoqPMY_C96QkeNPS_r8TDD0r3yQqeXY5Xb1Qp1oTiWt0WSYWBP6bJMZGvGnmsBR_nQVw_DX6A2NvEnCl6L6OyuJyAnPEIj8Nb_uXQh6W7N9mTTWuXKacWmXzmtnIwDz_TY3CiknmGW6CA";
    

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
//        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {}
    }
    
    @objc func startSession(_ call: CAPPluginCall) {
        if ApplicationDelegateProxy.shared.lastURL?.scheme?.range(of: "pendo") != nil {
            PendoManager.shared().initWith(ApplicationDelegateProxy.shared.lastURL!)
        }
        
        let visitorId = call.getString("visitorId")
        let accountId = call.getString("accountId")
        
        PendoManager.shared().setup(pendoAppKey)
        
       
        var visitorData = [String: Any]()
        visitorData = ["age": 27, "country": "USA"]
        
        var accountData = [String: Any]()
        accountData = ["Tier": 1, "Size": "Enterprise"]
        
       
        PendoManager.shared().startSession(visitorId,
                                           accountId: accountId,
                                           visitorData: visitorData,
                                           accountData: accountData)
        call.resolve([
            "value": implementation.echo(visitorId ?? "")
        ])
    }
}
