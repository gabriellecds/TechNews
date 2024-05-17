//
//  DetailView.swift
//  Tech News
//
//  Created by Gabrielle Oliveira on 17/05/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
