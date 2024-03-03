//
//  ContentView.swift
//  DynamicText
//
//  Created by Irlan Abushakhmanov on 03.03.2024.
//

import SwiftUI

struct ContentView: View {
    private enum Constants {
        static let title = (marathon: "Марафон", sui: "по SwiftUI")
        static let subTitle = "«Отцовский пинок»"
        static let widthRange: ClosedRange<CGFloat> = 100.0...300.0
    }

    @State private var frameWidth = Constants.widthRange.upperBound

    var body: some View {
        VStack {
            TextStack()
            Slider(value: $frameWidth, in: Constants.widthRange)
        }
        .padding()
    }

    private func TextStack() -> some View {
        VStack(alignment: .leading) {
            Text(Constants.title.marathon.withAdditionalSpace)
                .foregroundStyle(.gray)

            + Text(Constants.title.sui.withAdditionalSpace)

            + Text(Constants.subTitle.withAdditionalSpace)
                .font(.title.weight(.bold))
                .foregroundColor(.blue)
        }
        .frame(width: frameWidth, height: 200)
        .border(.red)
    }
}

#Preview {
    ContentView()
}

