import Foundation
import UIKit
import Display
import AppBundle

public struct PresentationResourcesCallList {
    public static func outgoingIcon(_ theme: PresentationTheme) -> UIImage? {
        return theme.image(PresentationResourceKey.callListOutgoingIcon.rawValue, { theme in
            return generateTintedImage(image: UIImage(bundleImageName: "Call List/OutgoingIcon"), color: theme.list.disclosureArrowColor)
        })
    }
    //添加打进的电话图标
    public static func incomingIcon(_ theme: PresentationTheme) -> UIImage? {
        return theme.image(PresentationResourceKey.callListIncomingIcon.rawValue, { theme in
            return generateTintedImage(image: UIImage(bundleImageName: "Call List/IncomingIcon"), color: theme.list.disclosureArrowColor)
        })
    }
    
    public static func outgoingVideoIcon(_ theme: PresentationTheme) -> UIImage? {
        return theme.image(PresentationResourceKey.callListOutgoingVideoIcon.rawValue, { theme in
            return generateTintedImage(image: UIImage(bundleImageName: "Call List/OutgoingVideoIcon"), color: theme.list.disclosureArrowColor)
        })
    }
    
    public static func infoButton(_ theme: PresentationTheme) -> UIImage? {
        return theme.image(PresentationResourceKey.callListInfoButton.rawValue, { theme in
            return generateTintedImage(image: UIImage(bundleImageName: "Call List/InfoButton"), color: theme.list.itemAccentColor)
        })
    }
}
