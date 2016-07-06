import PerfectLib

PerfectServer.initializeServices()

let webRoot = "./webroot"
try Dir(webRoot).create()

Routing.Routes["/"] = {
    request, response in
    response.appendBody(string: "<html><title>Hello, swfit!</title><body>Hello, swift!</body></html>")
    response.completed()
}

do {
    
    try HTTPServer(documentRoot: webRoot).start(port: 8080)
    
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
