// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class DistrictOfferingAsistance: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "modifiedBy")

    private static var assistance_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "assistance")

    private static var district_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "district")

    private static var assistanceID_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "assistance_ID")

    private static var districtLeaid_: Property = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "district_leaid")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.districtOfferingAsistance)
    }

    open class func array(from: EntityValueList) -> [DistrictOfferingAsistance] {
        return ArrayConverter.convert(from.toArray(), [DistrictOfferingAsistance]())
    }

    open class var assistance: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.assistance_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.assistance_ = value
            }
        }
    }

    open var assistance: AssistanceOfferings? {
        get {
            return CastOptional<AssistanceOfferings>.from(self.optionalValue(for: DistrictOfferingAsistance.assistance))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.assistance, to: value)
        }
    }

    open class var assistanceID: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.assistanceID_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.assistanceID_ = value
            }
        }
    }

    open var assistanceID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: DistrictOfferingAsistance.assistanceID))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.assistanceID, to: value)
        }
    }

    open func copy() -> DistrictOfferingAsistance {
        return CastRequired<DistrictOfferingAsistance>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: DistrictOfferingAsistance.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DistrictOfferingAsistance.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var district: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.district_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.district_ = value
            }
        }
    }

    open var district: Districts? {
        get {
            return CastOptional<Districts>.from(self.optionalValue(for: DistrictOfferingAsistance.district))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.district, to: value)
        }
    }

    open class var districtLeaid: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.districtLeaid_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.districtLeaid_ = value
            }
        }
    }

    open var districtLeaid: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DistrictOfferingAsistance.districtLeaid))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.districtLeaid, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(assistanceID: GuidValue?, districtLeaid: String?) -> EntityKey {
        return EntityKey().with(name: "assistance_ID", value: assistanceID).with(name: "district_leaid", value: StringValue.of(optional: districtLeaid))
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: DistrictOfferingAsistance.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                return DistrictOfferingAsistance.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(DistrictOfferingAsistance.self)
            defer { objc_sync_exit(DistrictOfferingAsistance.self) }
            do {
                DistrictOfferingAsistance.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DistrictOfferingAsistance.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: DistrictOfferingAsistance.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: DistrictOfferingAsistance {
        return CastRequired<DistrictOfferingAsistance>.from(self.oldEntity)
    }
}
