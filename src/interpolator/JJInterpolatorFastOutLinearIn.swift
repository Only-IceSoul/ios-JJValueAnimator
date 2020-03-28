//
//  JJInterpolatorastOutLinear.swit
//
//  Created by Juan J L on 3/24/20.
//  Copyright © 2020 Juan J L. All rights reserved.
//

import Foundation

/**
    Interpolator
    Uses a Lookup table for bezier curve from 0 to 1,1 with control points:
    P0 (0,0)
    P1 (0.4,0)
    P2 (0.2,1.0)
    P3 (1,1)
 */
public class JJInterpolatorFastOutLinearIn : JJInterpolatorLookupTable {
    
    /**
       Lookup table values sampled with x at regular intervals between 0 and 1 for a
       total of 201 points
     */
    public static let VALUES: [Float] = [
               0.0000, 0.0001, 0.0002, 0.0005, 0.0008, 0.0013, 0.0018,
               0.0024, 0.0032, 0.0040, 0.0049, 0.0059, 0.0069, 0.0081,
               0.0093, 0.0106, 0.0120, 0.0135, 0.0151, 0.0167, 0.0184,
               0.0201, 0.0220, 0.0239, 0.0259, 0.0279, 0.0300, 0.0322,
               0.0345, 0.0368, 0.0391, 0.0416, 0.0441, 0.0466, 0.0492,
               0.0519, 0.0547, 0.0574, 0.0603, 0.0632, 0.0662, 0.0692,
               0.0722, 0.0754, 0.0785, 0.0817, 0.0850, 0.0884, 0.0917,
               0.0952, 0.0986, 0.1021, 0.1057, 0.1093, 0.1130, 0.1167,
               0.1205, 0.1243, 0.1281, 0.1320, 0.1359, 0.1399, 0.1439,
               0.1480, 0.1521, 0.1562, 0.1604, 0.1647, 0.1689, 0.1732,
               0.1776, 0.1820, 0.1864, 0.1909, 0.1954, 0.1999, 0.2045,
               0.2091, 0.2138, 0.2184, 0.2232, 0.2279, 0.2327, 0.2376,
               0.2424, 0.2473, 0.2523, 0.2572, 0.2622, 0.2673, 0.2723,
               0.2774, 0.2826, 0.2877, 0.2929, 0.2982, 0.3034, 0.3087,
               0.3141, 0.3194, 0.3248, 0.3302, 0.3357, 0.3412, 0.3467,
               0.3522, 0.3578, 0.3634, 0.3690, 0.3747, 0.3804, 0.3861,
               0.3918, 0.3976, 0.4034, 0.4092, 0.4151, 0.4210, 0.4269,
               0.4329, 0.4388, 0.4448, 0.4508, 0.4569, 0.4630, 0.4691,
               0.4752, 0.4814, 0.4876, 0.4938, 0.5000, 0.5063, 0.5126,
               0.5189, 0.5252, 0.5316, 0.5380, 0.5444, 0.5508, 0.5573,
               0.5638, 0.5703, 0.5768, 0.5834, 0.5900, 0.5966, 0.6033,
               0.6099, 0.6166, 0.6233, 0.6301, 0.6369, 0.6436, 0.6505,
               0.6573, 0.6642, 0.6710, 0.6780, 0.6849, 0.6919, 0.6988,
               0.7059, 0.7129, 0.7199, 0.7270, 0.7341, 0.7413, 0.7484,
               0.7556, 0.7628, 0.7700, 0.7773, 0.7846, 0.7919, 0.7992,
               0.8066, 0.8140, 0.8214, 0.8288, 0.8363, 0.8437, 0.8513,
               0.8588, 0.8664, 0.8740, 0.8816, 0.8892, 0.8969, 0.9046,
               0.9124, 0.9201, 0.9280, 0.9358, 0.9437, 0.9516, 0.9595,
               0.9675, 0.9755, 0.9836, 0.9918, 1.0000
    
    ]
    
    public init() {
        super.init(values: JJInterpolatorFastOutLinearIn.VALUES)
    }
    
}
