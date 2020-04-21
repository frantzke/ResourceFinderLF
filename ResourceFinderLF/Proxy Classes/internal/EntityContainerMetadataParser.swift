// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

internal class EntityContainerMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = EntityContainerMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = EntityContainerMetadataParser.options
        let metadata = parser.parseInProxy(EntityContainerMetadataText.xml, url: "srv.Map")
        metadata.proxyVersion = "20.3.0-6b3997-20200324"
        return metadata
    }
}
