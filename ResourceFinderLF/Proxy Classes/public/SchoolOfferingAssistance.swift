// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class SchoolOfferingAssistance: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "modifiedBy")

    private static var assistance_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "assistance")

    private static var school_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "school")

    private static var assistanceID_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "assistance_ID")

    private static var schoolID_: Property = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "school_ID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.schoolOfferingAssistance)
    }

    open class func array(from: EntityValueList) -> [SchoolOfferingAssistance] {
        return ArrayConverter.convert(from.toArray(), [SchoolOfferingAssistance]())
    }

    open class var assistance: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.assistance_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.assistance_ = value
            }
        }
    }

    open var assistance: AssistanceOfferings? {
        get {
            return CastOptional<AssistanceOfferings>.from(self.optionalValue(for: SchoolOfferingAssistance.assistance))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.assistance, to: value)
        }
    }

    open class var assistanceID: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.assistanceID_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.assistanceID_ = value
            }
        }
    }

    open var assistanceID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: SchoolOfferingAssistance.assistanceID))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.assistanceID, to: value)
        }
    }

    open func copy() -> SchoolOfferingAssistance {
        return CastRequired<SchoolOfferingAssistance>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: SchoolOfferingAssistance.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOfferingAssistance.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.createdBy, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(assistanceID: GuidValue?, schoolID: String?) -> EntityKey {
        return EntityKey().with(name: "assistance_ID", value: assistanceID).with(name: "school_ID", value: StringValue.of(optional: schoolID))
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: SchoolOfferingAssistance.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOfferingAssistance.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: SchoolOfferingAssistance {
        return CastRequired<SchoolOfferingAssistance>.from(self.oldEntity)
    }

    open class var school: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.school_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.school_ = value
            }
        }
    }

    open var school: Schools? {
        get {
            return CastOptional<Schools>.from(self.optionalValue(for: SchoolOfferingAssistance.school))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.school, to: value)
        }
    }

    open class var schoolID: Property {
        get {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                return SchoolOfferingAssistance.schoolID_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOfferingAssistance.self)
            defer { objc_sync_exit(SchoolOfferingAssistance.self) }
            do {
                SchoolOfferingAssistance.schoolID_ = value
            }
        }
    }

    open var schoolID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOfferingAssistance.schoolID))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOfferingAssistance.schoolID, to: StringValue.of(optional: value))
        }
    }
}
