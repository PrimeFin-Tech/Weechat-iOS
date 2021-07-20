import Foundation
import UIKit
import Display
import SafariServices
import TelegramPresentationData
//import PresentationDataUtils

//二次修改
public final class WebController: ViewController {
    private let url: URL
    
//    private let context: AccountContext
    private var presentationData: PresentationData
    
    private var controllerNode: WebControllerNode {
        return self.displayNode as! WebControllerNode
    }
    //context: AccountContext.AccountContext = nil
    
    public init(url: URL,presentationData: PresentationData) {
        self.url = url
        
        self.presentationData = presentationData
//        context.sharedContext.currentPresentationData.with { $0 }
//
        let defaultTheme = NavigationBarTheme(rootControllerTheme: self.presentationData.theme)
        let navigationBarTheme = NavigationBarTheme(buttonColor: UIColor.white, disabledButtonColor: defaultTheme.disabledButtonColor, primaryTextColor: defaultTheme.primaryTextColor, backgroundColor: UIColor(red: 36/255.0, green: 48/255.0, blue: 63/255.0, alpha: 1), separatorColor: .clear, badgeBackgroundColor: defaultTheme.badgeBackgroundColor, badgeStrokeColor: defaultTheme.badgeStrokeColor, badgeTextColor: defaultTheme.badgeTextColor)

        super.init(navigationBarPresentationData: NavigationBarPresentationData(theme: navigationBarTheme, strings: NavigationBarStrings(back: self.presentationData.strings.Common_Back, close: self.presentationData.strings.Common_Close)))

        self.statusBar.statusBarStyle = self.presentationData.theme.rootController.statusBarStyle.style
        self.navigationPresentation = .modalInLargeLayout
        self.supportedOrientations = ViewControllerSupportedOrientations(regularSize: .all, compactSize: .portrait)
        self.navigationBar?.intrinsicCanTransitionInline = false

        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: self.presentationData.strings.Common_Back, style: .plain, target: nil, action: nil)
        
//        super.init(navigationBarPresentationData: nil)
        
        self.edgesForExtendedLayout = []
    }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func loadDisplayNode() {
        self.displayNode = WebControllerNode(url: self.url)
        
        self.displayNodeDidLoad()
    }
    
    override public func containerLayoutUpdated(_ layout: ContainerViewLayout, transition: ContainedViewLayoutTransition) {
        super.containerLayoutUpdated(layout, transition: transition)
        self.controllerNode.containerLayoutUpdated(layout, transition: transition)
    }
}
