//
//  RoughSwift.swift
//  RoughSwift-iOS
//
//  Created by khoa on 20/03/2019.
//  Copyright © 2019 Khoa Pham. All rights reserved.
//

import UIKit

/// Setup the whole stack, you just need to specify shapes to draw
public func draw(size: CGSize, using: (Generator) -> Void) -> CALayer {
  let layer = CALayer()
  layer.frame.size = size
  
  let generator = Engine.shared.generator(size: size)
  let renderer = Renderer(layer: layer)
  generator.onDrawable = renderer.handle
  
  using(generator)
  return layer
}
