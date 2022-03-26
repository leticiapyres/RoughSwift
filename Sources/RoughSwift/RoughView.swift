//
//  RoughView.swift
//  RoughSwift
//
//  Created by khoa on 26/03/2022.
//

import UIKit
import SwiftUI

public struct RoughView: UIViewRepresentable {
    @State private var options = Options()

    public init() {}

    public func makeUIView(context: Context) -> UIView {
        let view = RoughUIView()
        return view
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
        guard let view = uiView as? RoughUIView else { return }
        view.doSomethin()
    }
}

public extension RoughView {
    func maxRandomnessOffset(_ value: Float) -> Self {
        options.maxRandomnessOffset = value
        return self
//        var v = self
//        v.options.maxRandomnessOffset = value
//        return v
    }

    func roughness(_ value: Float) -> Self {
        var v = self
        v.options.roughness = value
        return v
    }

    func bowing(_ value: Float) -> Self {
        var v = self
        v.options.bowing = value
        return v
    }

    func strokeWidth(_ value: Float) -> Self {
        var v = self
        v.options.strokeWidth = value
        return v
    }

    func fillWeight(_ value: Float) -> Self {
        var v = self
        v.options.fillWeight = value
        return v
    }

    func dashOffset(_ value: Float) -> Self {
        var v = self
        v.options.dashOffset = value
        return v
    }

    func zigzagOffset(_ value: Float) -> Self {
        var v = self
        v.options.zigzagOffset = value
        return v
    }

    func dashGap(_ value: Float) -> Self {
        var v = self
        v.options.dashGap = value
        return v
    }

    func hachureGap(_ value: Float) -> Self {
        var v = self
        v.options.hachureGap = value
        return v
    }

    func hachureAngle(_ value: Float) -> Self {
        var v = self
        v.options.hachureAngle = value
        return v
    }

    func curveTightness(_ value: Float) -> Self {
        var v = self
        v.options.curveTightness = value
        return v
    }

    func curveStepCount(_ value: Float) -> Self {
        var v = self
        v.options.curveStepCount = value
        return v
    }

    func stroke(_ value: UIColor) -> Self {
        var v = self
        v.options.stroke = value
        return v
    }

    func fill(_ value: UIColor) -> Self {
        var v = self
        v.options.fill = value
        return v
    }

    func fillStyle(_ value: FillStyle) -> Self {
        var v = self
        v.options.fillStyle = value
        return v
    }
}

private final class RoughUIView: UIView {
    func doSomethin() {
        print("doSomething", frame)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        layer.sublayers?.forEach {
            $0.removeFromSuperlayer()
        }

        let renderer = Renderer(layer: layer)
        print("layoutSubviews", frame)
    }
}
