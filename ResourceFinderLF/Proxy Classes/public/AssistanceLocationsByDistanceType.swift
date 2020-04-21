// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceLocationsByDistanceType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "ID")

    private static var addressId_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "ADDRESS_ID")

    private static var lat_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "LAT")

    private static var long_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "LONG")

    private static var countLoc_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "COUNT_LOC")

    private static var parameters_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "Parameters")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType)
    }

    open class var addressId: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.addressId_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.addressId_ = value
            }
        }
    }

    open var addressId: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceType.addressId))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.addressId, to: IntValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [AssistanceLocationsByDistanceType] {
        return ArrayConverter.convert(from.toArray(), [AssistanceLocationsByDistanceType]())
    }

    open func copy() -> AssistanceLocationsByDistanceType {
        return CastRequired<AssistanceLocationsByDistanceType>.from(self.copyEntity())
    }

    open class var countLoc: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.countLoc_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.countLoc_ = value
            }
        }
    }

    open var countLoc: Int64? {
        get {
            return LongValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceType.countLoc))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.countLoc, to: LongValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.id_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceType.id))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.id, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "ID", value: StringValue.of(optional: id))
    }

    open class var lat: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.lat_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.lat_ = value
            }
        }
    }

    open var lat: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceType.lat))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.lat, to: DecimalValue.of(optional: value))
        }
    }

    open class var long: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.long_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.long_ = value
            }
        }
    }

    open var long: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceType.long))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.long, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AssistanceLocationsByDistanceType {
        return CastRequired<AssistanceLocationsByDistanceType>.from(self.oldEntity)
    }

    open class var parameters: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                return AssistanceLocationsByDistanceType.parameters_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceType.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceType.self) }
            do {
                AssistanceLocationsByDistanceType.parameters_ = value
            }
        }
    }

    open var parameters: AssistanceLocationsByDistanceParameters? {
        get {
            return CastOptional<AssistanceLocationsByDistanceParameters>.from(self.optionalValue(for: AssistanceLocationsByDistanceType.parameters))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceType.parameters, to: value)
        }
    }
}
