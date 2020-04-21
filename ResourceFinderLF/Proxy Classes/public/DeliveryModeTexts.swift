// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class DeliveryModeTexts: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var locale_: Property = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "locale")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "name")

    private static var descr_: Property = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "descr")

    private static var code_: Property = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "code")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.deliveryModeTexts)
    }

    open class func array(from: EntityValueList) -> [DeliveryModeTexts] {
        return ArrayConverter.convert(from.toArray(), [DeliveryModeTexts]())
    }

    open class var code: Property {
        get {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                return DeliveryModeTexts.code_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                DeliveryModeTexts.code_ = value
            }
        }
    }

    open var code: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModeTexts.code))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModeTexts.code, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> DeliveryModeTexts {
        return CastRequired<DeliveryModeTexts>.from(self.copyEntity())
    }

    open class var descr: Property {
        get {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                return DeliveryModeTexts.descr_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                DeliveryModeTexts.descr_ = value
            }
        }
    }

    open var descr: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModeTexts.descr))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModeTexts.descr, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(locale: String?, code: String?) -> EntityKey {
        return EntityKey().with(name: "locale", value: StringValue.of(optional: locale)).with(name: "code", value: StringValue.of(optional: code))
    }

    open class var locale: Property {
        get {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                return DeliveryModeTexts.locale_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                DeliveryModeTexts.locale_ = value
            }
        }
    }

    open var locale: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModeTexts.locale))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModeTexts.locale, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                return DeliveryModeTexts.name_
            }
        }
        set(value) {
            objc_sync_enter(DeliveryModeTexts.self)
            defer { objc_sync_exit(DeliveryModeTexts.self) }
            do {
                DeliveryModeTexts.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: DeliveryModeTexts.name))
        }
        set(value) {
            self.setOptionalValue(for: DeliveryModeTexts.name, to: StringValue.of(optional: value))
        }
    }

    open var old: DeliveryModeTexts {
        return CastRequired<DeliveryModeTexts>.from(self.oldEntity)
    }
}
