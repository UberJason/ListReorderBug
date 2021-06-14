# ListReorderBug

Re-ordering items in a List in SwiftUI on macOS seems to mess up the cell size.

Steps to reproduce:
1. Run the project.
2. Click on the first item in the list, "Someone Review Our Artifacts"
3. Click "Change It" in the detail view.
4. Observe that the "Someone Review Our Artifacts" cell is now very, very large.
