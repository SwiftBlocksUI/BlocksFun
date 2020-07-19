import SwiftBlocksUI

struct ClipItForm: Blocks {

  @State(\.messageText) var messageText
  @State var importance = "medium"
  
  var body: some Blocks {
    View("Save it to ClipIt!") {
      TextEditor("Message Text", text: $messageText)
      
      Picker("Importance", selection: $importance,
             placeholder: "Select importance")
      {
        "High 💎💎✨".tag("high")
        "Medium 💎"  .tag("medium")
        "Low ⚪️"     .tag("low")
      }
      
      Submit("CliptIt") {
        console.log("Clipping:", self.messageText, self.importance)
      }
    }
  }
}
