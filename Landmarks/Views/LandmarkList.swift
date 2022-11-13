//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ahmad Adnan Abdullah on 2022-11-13.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkView(landmark: landmark)
                }label: {
                    LandmarkRowItem(landmark: landmark)

                }
            }
            .navigationTitle("Landmarks")

        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
