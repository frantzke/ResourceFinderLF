// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class LocationTypes: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "ID")

    private static var locType_: Property = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "locType")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "description")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.locationTypes)
    }

    open class func array(from: EntityValueList) -> [LocationTypes] {
        return ArrayConverter.convert(from.toArray(), [LocationTypes]())
    }

    open func copy() -> LocationTypes {
        return CastRequired<LocationTypes>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                return LocationTypes.description_
            }
        }
        set(value) {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                LocationTypes.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: LocationTypes.description))
        }
        set(value) {
            self.setOptionalValue(for: LocationTypes.description, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                return LocationTypes.id_
            }
        }
        set(value) {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                LocationTypes.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: LocationTypes.id))
        }
        set(value) {
            self.setOptionalValue(for: LocationTypes.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var locType: Property {
        get {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                return LocationTypes.locType_
            }
        }
        set(value) {
            objc_sync_enter(LocationTypes.self)
            defer { objc_sync_exit(LocationTypes.self) }
            do {
                LocationTypes.locType_ = value
            }
        }
    }

    open var locType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: LocationTypes.locType))
        }
        set(value) {
            self.setOptionalValue(for: LocationTypes.locType, to: StringValue.of(optional: value))
        }
    }

    open var old: LocationTypes {
        return CastRequired<LocationTypes>.from(self.oldEntity)
    }
}
