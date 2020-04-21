// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceSubTypes: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "ID")

    private static var subType_: Property = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "subType")

    private static var assistanceType_: Property = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "assistanceType")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "description")

    private static var assistanceTypeID_: Property = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "assistanceType_ID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceSubTypes)
    }

    open class func array(from: EntityValueList) -> [AssistanceSubTypes] {
        return ArrayConverter.convert(from.toArray(), [AssistanceSubTypes]())
    }

    open class var assistanceType: Property {
        get {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                return AssistanceSubTypes.assistanceType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                AssistanceSubTypes.assistanceType_ = value
            }
        }
    }

    open var assistanceType: AssistanceTypes? {
        get {
            return CastOptional<AssistanceTypes>.from(self.optionalValue(for: AssistanceSubTypes.assistanceType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceSubTypes.assistanceType, to: value)
        }
    }

    open class var assistanceTypeID: Property {
        get {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                return AssistanceSubTypes.assistanceTypeID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                AssistanceSubTypes.assistanceTypeID_ = value
            }
        }
    }

    open var assistanceTypeID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceSubTypes.assistanceTypeID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceSubTypes.assistanceTypeID, to: value)
        }
    }

    open func copy() -> AssistanceSubTypes {
        return CastRequired<AssistanceSubTypes>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                return AssistanceSubTypes.description_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                AssistanceSubTypes.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceSubTypes.description))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceSubTypes.description, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                return AssistanceSubTypes.id_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                AssistanceSubTypes.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceSubTypes.id))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceSubTypes.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open var old: AssistanceSubTypes {
        return CastRequired<AssistanceSubTypes>.from(self.oldEntity)
    }

    open class var subType: Property {
        get {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                return AssistanceSubTypes.subType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceSubTypes.self)
            defer { objc_sync_exit(AssistanceSubTypes.self) }
            do {
                AssistanceSubTypes.subType_ = value
            }
        }
    }

    open var subType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceSubTypes.subType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceSubTypes.subType, to: StringValue.of(optional: value))
        }
    }
}
