import PerfectLib
import SwiftyJSON

PerfectServer.initializeServices()

let webRoot = "../webroot"
try Dir(webRoot).create()

Routing.Routes["/"] = {
    let json = JSON("{'msg': 'Hello!!'}")
    request, response in
    response.appendBody(string: json)
    response.completed()
}

do {
    
    try HTTPServer(documentRoot: webRoot).start(port: 8080)
    
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
