// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class Sap4kidsParameters: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var param1_: Property = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM1")

    private static var param2_: Property = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM2")

    private static var param3_: Property = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM3")

    private static var set_: Property = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "Set")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.sap4kidsParameters)
    }

    open class func array(from: EntityValueList) -> [Sap4kidsParameters] {
        return ArrayConverter.convert(from.toArray(), [Sap4kidsParameters]())
    }

    open func copy() -> Sap4kidsParameters {
        return CastRequired<Sap4kidsParameters>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(param1: Double?, param2: Double?, param3: Int?) -> EntityKey {
        return EntityKey().with(name: "PARAM1", value: DoubleValue.of(optional: param1)).with(name: "PARAM2", value: DoubleValue.of(optional: param2)).with(name: "PARAM3", value: IntValue.of(optional: param3))
    }

    open var old: Sap4kidsParameters {
        return CastRequired<Sap4kidsParameters>.from(self.oldEntity)
    }

    open class var param1: Property {
        get {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                return Sap4kidsParameters.param1_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                Sap4kidsParameters.param1_ = value
            }
        }
    }

    open var param1: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: Sap4kidsParameters.param1))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsParameters.param1, to: DoubleValue.of(optional: value))
        }
    }

    open class var param2: Property {
        get {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                return Sap4kidsParameters.param2_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                Sap4kidsParameters.param2_ = value
            }
        }
    }

    open var param2: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: Sap4kidsParameters.param2))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsParameters.param2, to: DoubleValue.of(optional: value))
        }
    }

    open class var param3: Property {
        get {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                return Sap4kidsParameters.param3_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                Sap4kidsParameters.param3_ = value
            }
        }
    }

    open var param3: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Sap4kidsParameters.param3))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsParameters.param3, to: IntValue.of(optional: value))
        }
    }

    open class var set: Property {
        get {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                return Sap4kidsParameters.set_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsParameters.self)
            defer { objc_sync_exit(Sap4kidsParameters.self) }
            do {
                Sap4kidsParameters.set_ = value
            }
        }
    }

    open var set: [Sap4kidsType] {
        get {
            return ArrayConverter.convert(Sap4kidsParameters.set.entityList(from: self).toArray(), [Sap4kidsType]())
        }
        set(value) {
            Sap4kidsParameters.set.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }
}
