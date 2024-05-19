import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct CyanwarePublish: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case apps
        case support
        case privacy
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://cyanware.github.io")!
    var name = "CYANware Software Solutions"
    var description = "Software for Apple iPhone, iPad & iPod touch"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try CyanwarePublish().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("cyanware/cyanware.github.io", branch: "main")
)
