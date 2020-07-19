import SwiftBlocksUI

struct Cows: App {
  
  var body: some Endpoints {
    Group { // only necessary w/ Swift <5.3
      Use(logger("dev"),
          bodyParser.urlencoded(),
          sslCheck(verifyToken(allowUnsetInDebug: true)))

      Slash("vaca", scope: .userOnly) {
        CowMessage()
      }
    }
  }
}
