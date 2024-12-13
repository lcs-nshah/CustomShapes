//
//  ContentView.swift
//  CustomShapes
//
//  Created by Connor Engel on 2024-12-13.
//

import SwiftUI

struct DoubleEndedArrow: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //Define the shape
        path.move(to: CGPoint(x: rect.maxX * 0.375, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.375, y: rect.maxY * 0.375))
        path.addLine(to: CGPoint(x: rect.maxX * 0.625, y: rect.maxY * 0.375))
        path.addLine(to: CGPoint(x: rect.maxX * 0.625, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.625, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.625, y: rect.maxY * 0.625))
        path.addLine(to: CGPoint(x: rect.maxX * 0.375, y: rect.maxY * 0.625))
        path.addLine(to: CGPoint(x: rect.maxX * 0.375, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.closeSubpath()
       
        return path
    }
}

#Preview {
    DoubleEndedArrow()
}
