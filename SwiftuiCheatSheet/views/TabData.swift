import SwiftUI

struct TabData: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let content: AnyView
    
    // content があるので独自の Equatable を実装する必要がある
    static func == (lhs: TabData, rhs: TabData) -> Bool {
        lhs.id == rhs.id && lhs.title == rhs.title
    }
}
