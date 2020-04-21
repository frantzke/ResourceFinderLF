// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceLocations: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "modifiedBy")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "name")

    private static var address_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "address")

    private static var locationType_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "locationType")

    private static var assistanceOfferings_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "assistanceOfferings")

    private static var addressID_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "address_ID")

    private static var locationTypeID_: Property = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "locationType_ID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceLocations)
    }

    open class var address: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.address_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.address_ = value
            }
        }
    }

    open var address: Addresses? {
        get {
            return CastOptional<Addresses>.from(self.optionalValue(for: AssistanceLocations.address))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.address, to: value)
        }
    }

    open class var addressID: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.addressID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.addressID_ = value
            }
        }
    }

    open var addressID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceLocations.addressID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.addressID, to: value)
        }
    }

    open class func array(from: EntityValueList) -> [AssistanceLocations] {
        return ArrayConverter.convert(from.toArray(), [AssistanceLocations]())
    }

    open class var assistanceOfferings: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.assistanceOfferings_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.assistanceOfferings_ = value
            }
        }
    }

    open var assistanceOfferings: [AssistanceOfferings] {
        get {
            return ArrayConverter.convert(AssistanceLocations.assistanceOfferings.entityList(from: self).toArray(), [AssistanceOfferings]())
        }
        set(value) {
            AssistanceLocations.assistanceOfferings.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open func copy() -> AssistanceLocations {
        return CastRequired<AssistanceLocations>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: AssistanceLocations.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceLocations.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.id_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceLocations.id))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var locationType: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.locationType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.locationType_ = value
            }
        }
    }

    open var locationType: LocationTypes? {
        get {
            return CastOptional<LocationTypes>.from(self.optionalValue(for: AssistanceLocations.locationType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.locationType, to: value)
        }
    }

    open class var locationTypeID: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.locationTypeID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.locationTypeID_ = value
            }
        }
    }

    open var locationTypeID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceLocations.locationTypeID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.locationTypeID, to: value)
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: AssistanceLocations.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceLocations.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                return AssistanceLocations.name_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocations.self)
            defer { objc_sync_exit(AssistanceLocations.self) }
            do {
                AssistanceLocations.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceLocations.name))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocations.name, to: StringValue.of(optional: value))
        }
    }

    open var old: AssistanceLocations {
        return CastRequired<AssistanceLocations>.from(self.oldEntity)
    }
}
