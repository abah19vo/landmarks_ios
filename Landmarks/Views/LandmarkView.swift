//
//  LandmarkView.swift
//  Landmarks
//
//  Created by Ahmad Adnan Abdullah on 2022-11-13.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkView: View {
    var landmark:Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.top)

    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkView(landmark:landmarks[4])
    }
}
