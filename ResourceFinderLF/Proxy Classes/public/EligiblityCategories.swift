// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class EligiblityCategories: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "ID")

    private static var eligibilityCategory_: Property = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "eligibilityCategory")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "description")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.eligiblityCategories)
    }

    open class func array(from: EntityValueList) -> [EligiblityCategories] {
        return ArrayConverter.convert(from.toArray(), [EligiblityCategories]())
    }

    open func copy() -> EligiblityCategories {
        return CastRequired<EligiblityCategories>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                return EligiblityCategories.description_
            }
        }
        set(value) {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                EligiblityCategories.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: EligiblityCategories.description))
        }
        set(value) {
            self.setOptionalValue(for: EligiblityCategories.description, to: StringValue.of(optional: value))
        }
    }

    open class var eligibilityCategory: Property {
        get {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                return EligiblityCategories.eligibilityCategory_
            }
        }
        set(value) {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                EligiblityCategories.eligibilityCategory_ = value
            }
        }
    }

    open var eligibilityCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: EligiblityCategories.eligibilityCategory))
        }
        set(value) {
            self.setOptionalValue(for: EligiblityCategories.eligibilityCategory, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                return EligiblityCategories.id_
            }
        }
        set(value) {
            objc_sync_enter(EligiblityCategories.self)
            defer { objc_sync_exit(EligiblityCategories.self) }
            do {
                EligiblityCategories.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: EligiblityCategories.id))
        }
        set(value) {
            self.setOptionalValue(for: EligiblityCategories.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open var old: EligiblityCategories {
        return CastRequired<EligiblityCategories>.from(self.oldEntity)
    }
}
