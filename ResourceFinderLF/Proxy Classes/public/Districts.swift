// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class Districts: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var leaid_: Property = EntityContainerMetadata.EntityTypes.districts.property(withName: "leaid")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.districts.property(withName: "name")

    private static var state_: Property = EntityContainerMetadata.EntityTypes.districts.property(withName: "state")

    private static var school_: Property = EntityContainerMetadata.EntityTypes.districts.property(withName: "school")

    private static var stateStateCode_: Property = EntityContainerMetadata.EntityTypes.districts.property(withName: "state_StateCode")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.districts)
    }

    open class func array(from: EntityValueList) -> [Districts] {
        return ArrayConverter.convert(from.toArray(), [Districts]())
    }

    open func copy() -> Districts {
        return CastRequired<Districts>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(leaid: String?) -> EntityKey {
        return EntityKey().with(name: "leaid", value: StringValue.of(optional: leaid))
    }

    open class var leaid: Property {
        get {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                return Districts.leaid_
            }
        }
        set(value) {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                Districts.leaid_ = value
            }
        }
    }

    open var leaid: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Districts.leaid))
        }
        set(value) {
            self.setOptionalValue(for: Districts.leaid, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                return Districts.name_
            }
        }
        set(value) {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                Districts.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Districts.name))
        }
        set(value) {
            self.setOptionalValue(for: Districts.name, to: StringValue.of(optional: value))
        }
    }

    open var old: Districts {
        return CastRequired<Districts>.from(self.oldEntity)
    }

    open class var school: Property {
        get {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                return Districts.school_
            }
        }
        set(value) {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                Districts.school_ = value
            }
        }
    }

    open var school: [Schools] {
        get {
            return ArrayConverter.convert(Districts.school.entityList(from: self).toArray(), [Schools]())
        }
        set(value) {
            Districts.school.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var state: Property {
        get {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                return Districts.state_
            }
        }
        set(value) {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                Districts.state_ = value
            }
        }
    }

    open var state: States? {
        get {
            return CastOptional<States>.from(self.optionalValue(for: Districts.state))
        }
        set(value) {
            self.setOptionalValue(for: Districts.state, to: value)
        }
    }

    open class var stateStateCode: Property {
        get {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                return Districts.stateStateCode_
            }
        }
        set(value) {
            objc_sync_enter(Districts.self)
            defer { objc_sync_exit(Districts.self) }
            do {
                Districts.stateStateCode_ = value
            }
        }
    }

    open var stateStateCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Districts.stateStateCode))
        }
        set(value) {
            self.setOptionalValue(for: Districts.stateStateCode, to: StringValue.of(optional: value))
        }
    }
}
