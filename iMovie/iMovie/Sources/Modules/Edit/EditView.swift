//
//  EditView.swift
//  iMovie
//
//  Created by Dariy Kordiyak on 23.04.2020.
//  Copyright © 2020 Dariy Kordiyak. All rights reserved.
//

import SwiftUI
import AVKit

struct EditView: View {
    
    @State private var performVideoMerge = false
    private var videoComposer = VideoComposer()
    
    var body: some View {
        VStack {
            Button(action: {
                self.performVideoMerge.toggle()
            }) {
                Text("Merge video")
            }
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
