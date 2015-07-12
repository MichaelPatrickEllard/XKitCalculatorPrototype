
Goal for this project:

- Use a very simple calculator app to create re-usable view controllers that can be used without modification on either iOS or OS X.
- Create a very lightweight, durable solution. Use only native AppKit and UIKit classes identified by XKit typealiases.  No subclassing or new classes. No swizzling or other changes to default behaviors.
- For APIs that differ between UIKit and AppKit, create simple Swift extensions to provide a unified interface that both iOS and OS X can use.  
- Connect the same XKit view controller to both native iOS and OSX Storyboards.  
- Maintain full access to all native AppKit and UIKit features.
- Keep full native speed in compiled projects.

Findings:

- iOS and OS X are close enough so that the full working app can be easily created using this technique.  

Development team:

- Michael Patrick Ellard, concept and code