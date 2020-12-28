//
//  ClasPartyWidget.swift
//  ClasPartyWidget
//
//  Created by Red Phoenix on 13/12/20.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct ClasPartyWidgetEntryView : View {
    
    
    var entry: Provider.Entry

    var body: some View {
        EmojiWidgetView()
      }
   
}

@main
struct ClasPartyWidget: Widget {
    let kind: String = "ClasPartyWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            ClasPartyWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("ClassParty Widget")
        .description("Select a widget for your upocming classes.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

struct ClasPartyWidget_Previews: PreviewProvider {
    static var previews: some View {
        ClasPartyWidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
