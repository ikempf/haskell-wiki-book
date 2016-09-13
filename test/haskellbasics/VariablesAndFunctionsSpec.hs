import Test.HUnit
import Test.Framework
import Test.Framework.Providers.HUnit
import VariablesAndFunctions

main :: IO ()
main = defaultMainWithOpts
        [
            testCase "subtractTwelveFromHalf" subtractTwelveFromHalfTest,
            testCase "areaCircle" circleAreaTest,
            testCase "areaRect" rectAreaTest,
            testCase "areaTriangleTest" triangleAreaTest,
            testCase "volumeBox" boxVolumeTest,
            testCase "volumePyramid" pyramidVolumeTest,
            testCase "countPyramidStones" pyramidStoneCountTest,
            testCase "volumeCylinder" cylinderVolumeTest
        ]
        mempty

subtractTwelveFromHalfTest = assertEqual "subtractTwelveFromHalf" 38 (subtractTwelveFromHalf 100)

circleAreaTest = assertEqual "circleArea" 78.53981633974483 (circleArea 5)

rectAreaTest = assertEqual "rectangleArea" 60 (rectangleArea 15 4)

triangleAreaTest = assertEqual "triangleArea" 30 (triangleArea 15 4)

boxVolumeTest = assertEqual "boxVolume" 480 (boxVolume 15 4 8)

pyramidVolumeTest = assertEqual "pyramidVolume" 160 (pyramidVolume 15 4 8)

pyramidStoneCountTest = assertEqual "pyramidStoneCount" 60 (pyramidStoneCount (15,4,8) (2,1,4))

cylinderVolumeTest = assertEqual "cylinderVolume" 628.3185307179587 (cylinderVolume 5 8)
