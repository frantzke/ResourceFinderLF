// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class States: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var stateCode_: Property = EntityContainerMetadata.EntityTypes.states.property(withName: "StateCode")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.states.property(withName: "Name")

    private static var fips_: Property = EntityContainerMetadata.EntityTypes.states.property(withName: "FIPS")

    private static var district_: Property = EntityContainerMetadata.EntityTypes.states.property(withName: "district")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.states)
    }

    open class func array(from: EntityValueList) -> [States] {
        return ArrayConverter.convert(from.toArray(), [States]())
    }

    open func copy() -> States {
        return CastRequired<States>.from(self.copyEntity())
    }

    open class var district: Property {
        get {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                return States.district_
            }
        }
        set(value) {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                States.district_ = value
            }
        }
    }

    open var district: [Districts] {
        get {
            return ArrayConverter.convert(States.district.entityList(from: self).toArray(), [Districts]())
        }
        set(value) {
            States.district.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var fips: Property {
        get {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                return States.fips_
            }
        }
        set(value) {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                States.fips_ = value
            }
        }
    }

    open var fips: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: States.fips))
        }
        set(value) {
            self.setOptionalValue(for: States.fips, to: IntValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(stateCode: String?) -> EntityKey {
        return EntityKey().with(name: "StateCode", value: StringValue.of(optional: stateCode))
    }

    open class var name: Property {
        get {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                return States.name_
            }
        }
        set(value) {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                States.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: States.name))
        }
        set(value) {
            self.setOptionalValue(for: States.name, to: StringValue.of(optional: value))
        }
    }

    open var old: States {
        return CastRequired<States>.from(self.oldEntity)
    }

    open class var stateCode: Property {
        get {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                return States.stateCode_
            }
        }
        set(value) {
            objc_sync_enter(States.self)
            defer { objc_sync_exit(States.self) }
            do {
                States.stateCode_ = value
            }
        }
    }

    open var stateCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: States.stateCode))
        }
        set(value) {
            self.setOptionalValue(for: States.stateCode, to: StringValue.of(optional: value))
        }
    }
}
