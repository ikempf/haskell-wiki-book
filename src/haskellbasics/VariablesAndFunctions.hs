module VariablesAndFunctions where

subtractTwelveFromHalf n = n/2 - 12

circleArea r = pi * r ^ 2

rectangleArea l w = l * w

triangleArea b h = (b * h) / 2

boxVolume l w h = rectangleArea l w * h

pyramidVolume l w h = boxVolume l w h / 3

pyramidStoneCount (pyramidL, pyramidW, pyramidH) (stoneL, stoneW, stoneH) =
    pyramidVolume / cubeVolume
        where
            pyramidVolume = boxVolume pyramidL pyramidW pyramidH
            cubeVolume = boxVolume stoneL stoneW stoneH

cylinderVolume r h = circleArea r * h