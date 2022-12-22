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
    var pendoAppKey = "eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiIxNDc0YmI5MGJhYzYwZTg3ODBhNzBjMTBkZjllOGZlMzU4Nzc4MmFiNGM4MDg1NTFlYzliYTNkNmVhMzdmNGNiNDFiMjAyYWU3MGFhMGU2ZGZiOTM2NjlkNWQ0ZTQzMDAwOWEzNmQ0YmE2YTEyMTBmMTUwNjAwMWQ3YmUzOWRiZS5hZWU3MDI0Yjk2MmI1OTg1ZGJkNmYyODAwMTczYWNjNi5iY2RlYTVjYjUyMjE0ZDlkOWMwOWVmYWFkNzk1Yjg3NjliZjc5NGIyZmM4ZDc2OGYwNTE5NDg0NWM2MDJlMGFmIn0.dop2Rs4ZFKw6kpnXJ4X6zMqdgR8snzL-0yTjS6FqIF655c4raKkRU3Rr_oRInkYnbFxzupmz382yWLQZvgaht3XEtWVd_7NF16agpETINYCwCIE21mXLwIN3P0N2Ik4qHNvumKXG-5IAJqqi2IyOchkXeNywHgXRREcYcgR-0_I";
    

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
