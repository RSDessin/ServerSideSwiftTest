//http://qiita.com/nnsnodnb/items/3b028a7e72b155fe1b56
import Kitura

let router = Router()


router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

router.get("/:name") {
    request, response, next in
    let name = request.parameters["name"] ?? ""
    try response.send("Hello, \(name)").end()
    next()
}


Kitura.addHTTPServer(onPort: 8090, with: router)

Kitura.run()
