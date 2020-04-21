// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceTypes: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "ID")

    private static var assistanceType_: Property = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "assistanceType")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "description")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceTypes)
    }

    open class func array(from: EntityValueList) -> [AssistanceTypes] {
        return ArrayConverter.convert(from.toArray(), [AssistanceTypes]())
    }

    open class var assistanceType: Property {
        get {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                return AssistanceTypes.assistanceType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                AssistanceTypes.assistanceType_ = value
            }
        }
    }

    open var assistanceType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceTypes.assistanceType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceTypes.assistanceType, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AssistanceTypes {
        return CastRequired<AssistanceTypes>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                return AssistanceTypes.description_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                AssistanceTypes.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceTypes.description))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceTypes.description, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                return AssistanceTypes.id_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceTypes.self)
            defer { objc_sync_exit(AssistanceTypes.self) }
            do {
                AssistanceTypes.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceTypes.id))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceTypes.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open var old: AssistanceTypes {
        return CastRequired<AssistanceTypes>.from(self.oldEntity)
    }
}
