// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class Addresses: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "modifiedBy")

    private static var street_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "street")

    private static var city_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "city")

    private static var zip_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "zip")

    private static var lat_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "lat")

    private static var long_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "long")

    private static var state_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "state")

    private static var school_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "school")

    private static var assistanceLocation_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "assistanceLocation")

    private static var stateStateCode_: Property = EntityContainerMetadata.EntityTypes.addresses.property(withName: "state_StateCode")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.addresses)
    }

    open class func array(from: EntityValueList) -> [Addresses] {
        return ArrayConverter.convert(from.toArray(), [Addresses]())
    }

    open class var assistanceLocation: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.assistanceLocation_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.assistanceLocation_ = value
            }
        }
    }

    open var assistanceLocation: [AssistanceLocations] {
        get {
            return ArrayConverter.convert(Addresses.assistanceLocation.entityList(from: self).toArray(), [AssistanceLocations]())
        }
        set(value) {
            Addresses.assistanceLocation.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var city: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.city_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Addresses.city))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.city, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Addresses {
        return CastRequired<Addresses>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Addresses.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Addresses.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.id_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: Addresses.id))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var lat: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.lat_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.lat_ = value
            }
        }
    }

    open var lat: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Addresses.lat))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.lat, to: DecimalValue.of(optional: value))
        }
    }

    open class var long: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.long_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.long_ = value
            }
        }
    }

    open var long: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Addresses.long))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.long, to: DecimalValue.of(optional: value))
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Addresses.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Addresses.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: Addresses {
        return CastRequired<Addresses>.from(self.oldEntity)
    }

    open class var school: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.school_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.school_ = value
            }
        }
    }

    open var school: [Schools] {
        get {
            return ArrayConverter.convert(Addresses.school.entityList(from: self).toArray(), [Schools]())
        }
        set(value) {
            Addresses.school.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var state: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.state_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.state_ = value
            }
        }
    }

    open var state: States? {
        get {
            return CastOptional<States>.from(self.optionalValue(for: Addresses.state))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.state, to: value)
        }
    }

    open class var stateStateCode: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.stateStateCode_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.stateStateCode_ = value
            }
        }
    }

    open var stateStateCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Addresses.stateStateCode))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.stateStateCode, to: StringValue.of(optional: value))
        }
    }

    open class var street: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.street_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.street_ = value
            }
        }
    }

    open var street: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Addresses.street))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.street, to: StringValue.of(optional: value))
        }
    }

    open class var zip: Property {
        get {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                return Addresses.zip_
            }
        }
        set(value) {
            objc_sync_enter(Addresses.self)
            defer { objc_sync_exit(Addresses.self) }
            do {
                Addresses.zip_ = value
            }
        }
    }

    open var zip: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Addresses.zip))
        }
        set(value) {
            self.setOptionalValue(for: Addresses.zip, to: IntValue.of(optional: value))
        }
    }
}
