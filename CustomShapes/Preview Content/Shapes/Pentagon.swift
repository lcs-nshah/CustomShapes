//
//  Pentagon.swift
//  CustomShapes
//
//  Created by Connor Engel on 2024-12-13.
//

import SwiftUI

struct Pentagon: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        
        
        
        
        
        path.closeSubpath()
        return path
    }
}
#Preview {
    Pentagon()
}
