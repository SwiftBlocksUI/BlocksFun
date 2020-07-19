import SwiftBlocksUI

dotenv.config()

struct BlocksFun: App {
  
  var body: some Endpoints {
    Group { // only necessary w/ Swift <5.3
      Cows()
      ClipIt()
      AvocadoToast()
    }
  }
}
try BlocksFun.main()
