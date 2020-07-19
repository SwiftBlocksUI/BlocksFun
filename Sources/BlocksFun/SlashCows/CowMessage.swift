import cows
import SwiftBlocksUI

struct CowMessage: Blocks {
  
  @Environment(\.messageText) private var query
  
  private var cow : String {
    return cows.allCows.first(where: { $0.contains(query) })
        ?? cows.vaca()
  }
  
  var body: some Blocks {
    Group { // only necessary on Swift <5.3
      Preformatted {
        cow
      }

      Actions {
        Button("Delete!") { response in
          response.clear()
        }
        .confirm(message: "This will delete the message!",
                 confirmButton: "Cowsy!")
        
        Button("More!") { response in
          response.push { self }
        }
        Button("Reload") { response in
          response.update()
        }
      }
    }
  }
}
