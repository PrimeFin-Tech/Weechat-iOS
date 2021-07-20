import Foundation
import AppBundle

//zh-Hans  // en
// fallbackDict
//public let defaultPresentationStrings =
//    PresentationStrings(primaryComponent: PresentationStringsComponent(languageCode: "en", localizedName: "English", pluralizationRulesCode: nil, dict: NSDictionary(contentsOf: URL(fileURLWithPath: getAppBundle().path(forResource: "Localizable", ofType: "strings", inDirectory: nil, forLocalization: "en")!)) as! [String : String]), secondaryComponent: nil, groupingSeparator: "")
public let defaultPresentationStrings =
    PresentationStrings(primaryComponent: PresentationStringsComponent(languageCode: "zh-Hans", localizedName: "中文简体", pluralizationRulesCode: nil, dict: NSDictionary(contentsOf: URL(fileURLWithPath: getAppBundle().path(forResource: "Localizable", ofType: "strings", inDirectory: nil, forLocalization: "zh-Hans")!)) as! [String : String]), secondaryComponent: nil, groupingSeparator: "")
public let defaultPresentationStrings_en =
    PresentationStrings(primaryComponent: PresentationStringsComponent(languageCode: "en", localizedName: "English", pluralizationRulesCode: nil, dict: NSDictionary(contentsOf: URL(fileURLWithPath: getAppBundle().path(forResource: "Localizable", ofType: "strings", inDirectory: nil, forLocalization: "en")!)) as! [String : String]), secondaryComponent: nil, groupingSeparator: "")
