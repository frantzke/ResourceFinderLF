// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class Schools: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "ID")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "name")

    private static var district_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "district")

    private static var address_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "address")

    private static var schoolAssistance_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "schoolAssistance")

    private static var districtLeaid_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "district_leaid")

    private static var addressID_: Property = EntityContainerMetadata.EntityTypes.schools.property(withName: "address_ID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.schools)
    }

    open class var address: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.address_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.address_ = value
            }
        }
    }

    open var address: Addresses? {
        get {
            return CastOptional<Addresses>.from(self.optionalValue(for: Schools.address))
        }
        set(value) {
            self.setOptionalValue(for: Schools.address, to: value)
        }
    }

    open class var addressID: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.addressID_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.addressID_ = value
            }
        }
    }

    open var addressID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: Schools.addressID))
        }
        set(value) {
            self.setOptionalValue(for: Schools.addressID, to: value)
        }
    }

    open class func array(from: EntityValueList) -> [Schools] {
        return ArrayConverter.convert(from.toArray(), [Schools]())
    }

    open func copy() -> Schools {
        return CastRequired<Schools>.from(self.copyEntity())
    }

    open class var district: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.district_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.district_ = value
            }
        }
    }

    open var district: Districts? {
        get {
            return CastOptional<Districts>.from(self.optionalValue(for: Schools.district))
        }
        set(value) {
            self.setOptionalValue(for: Schools.district, to: value)
        }
    }

    open class var districtLeaid: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.districtLeaid_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.districtLeaid_ = value
            }
        }
    }

    open var districtLeaid: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Schools.districtLeaid))
        }
        set(value) {
            self.setOptionalValue(for: Schools.districtLeaid, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.id_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Schools.id))
        }
        set(value) {
            self.setOptionalValue(for: Schools.id, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "ID", value: StringValue.of(optional: id))
    }

    open class var name: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.name_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Schools.name))
        }
        set(value) {
            self.setOptionalValue(for: Schools.name, to: StringValue.of(optional: value))
        }
    }

    open var old: Schools {
        return CastRequired<Schools>.from(self.oldEntity)
    }

    open class var schoolAssistance: Property {
        get {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                return Schools.schoolAssistance_
            }
        }
        set(value) {
            objc_sync_enter(Schools.self)
            defer { objc_sync_exit(Schools.self) }
            do {
                Schools.schoolAssistance_ = value
            }
        }
    }

    open var schoolAssistance: [SchoolOfferingAssistance] {
        get {
            return ArrayConverter.convert(Schools.schoolAssistance.entityList(from: self).toArray(), [SchoolOfferingAssistance]())
        }
        set(value) {
            Schools.schoolAssistance.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }
}
