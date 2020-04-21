// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class DeliveryModes: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var name_: Property = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "name")

    private static var descr_: Property = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "descr")

    private static var code_: Property = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "code")

    private static var texts_: Property = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "texts")

    private static var localized_: Property = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "localized")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.deliveryModes)
    }

    open class func array(from: EntityValueList) -> [DeliveryModes] {
        return ArrayConverter.convert(from.toArray(), [DeliveryModes]())
    }

    open class var code: Property {
        get {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                return DeliveryModes.code_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                DeliveryModes.code_ = value
            }
        }
    }

    open var code: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModes.code))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModes.code, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> DeliveryModes {
        return CastRequired<DeliveryModes>.from(self.copyEntity())
    }

    open class var descr: Property {
        get {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                return DeliveryModes.descr_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                DeliveryModes.descr_ = value
            }
        }
    }

    open var descr: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModes.descr))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModes.descr, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(code: String?) -> EntityKey {
        return EntityKey().with(name: "code", value: StringValue.of(optional: code))
    }

    open class var localized: Property {
        get {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                return DeliveryModes.localized_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                DeliveryModes.localized_ = value
            }
        }
    }

    open var localized: DeliveryModeTexts? {
        get {
            return CastOptional<DeliveryModeTexts>.from(self.optionalValue(for: DeliveryModes.localized))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModes.localized, to: value)
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                return DeliveryModes.name_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                DeliveryModes.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModes.name))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModes.name, to: StringValue.of(optional: value))
        }
    }

    open var old: DeliveryModes {
        return CastRequired<DeliveryModes>.from(self.oldEntity)
    }

    open class var texts: Property {
        get {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                return DeliveryModes.texts_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModes.self)
            defer { objc_sync_exit(DeliveryModes.self) }
            do {
                DeliveryModes.texts_ = value
            }
        }
    }

    open var texts: [DeliveryModeTexts] {
        get {
            return ArrayConverter.convert(DeliveryModes.texts.entityList(from: self).toArray(), [DeliveryModeTexts]())
        }
        set(value) {
            DeliveryModes.texts.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }
}
