//
//  SwiftUIView.swift
//  CustomShapes
//
//  Created by Connor Engel on 2024-12-13.
//

import SwiftUI

struct Star: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.625, y: rect.maxY * 0.375))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.375))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.maxY * 0.625))
        path.addLine(to: CGPoint(x: rect.maxX * 0.875, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY * 0.75))
        path.addLine(to: CGPoint(x: rect.maxX * 0.125, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 0.625))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.375))
        path.addLine(to: CGPoint(x: rect.maxX * 0.375, y: rect.maxY * 0.375))
                     
        path.closeSubpath()
        return path
    }
}
#Preview {
    Star()
}
