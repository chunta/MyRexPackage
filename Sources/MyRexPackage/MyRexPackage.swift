import UIKit
import Foundation

public class MyHelloWorld {
    public init() {
        
    }
    public func heyYou() {
        print("hey you")
    }
    public func loadImage() -> UIImage? {
        guard let url = Bundle.module.url(forResource: "reximage", withExtension: "png") else {
            print("Image not found")
            return nil
        }
        do {
            let data = try Data(contentsOf: url)
            return UIImage(data: data)
        } catch {
            print("Error loading image data: \(error.localizedDescription)")
            return nil
        }
    }
}
