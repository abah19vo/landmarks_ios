//
//  LandmarkRowItem.swift
//  Landmarks
//
//  Created by Ahmad Adnan Abdullah on 2022-11-13.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRowItem: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
            
    }
}

struct LandmarkRowItem_Previews: PreviewProvider {
    static var previews: some View {
            Group {
                LandmarkRowItem(landmark: landmarks[0])
                LandmarkRowItem(landmark: landmarks[1])
            }.previewLayout(.fixed(width: 300, height: 70))

        }
}
