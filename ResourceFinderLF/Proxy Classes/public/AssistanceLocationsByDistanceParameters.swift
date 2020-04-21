// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceLocationsByDistanceParameters: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var latitude_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "LATITUDE")

    private static var longitude_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "LONGITUDE")

    private static var distanceforsearch_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "DISTANCEFORSEARCH")

    private static var set_: Property = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "Set")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters)
    }

    open class func array(from: EntityValueList) -> [AssistanceLocationsByDistanceParameters] {
        return ArrayConverter.convert(from.toArray(), [AssistanceLocationsByDistanceParameters]())
    }

    open func copy() -> AssistanceLocationsByDistanceParameters {
        return CastRequired<AssistanceLocationsByDistanceParameters>.from(self.copyEntity())
    }

    open class var distanceforsearch: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                return AssistanceLocationsByDistanceParameters.distanceforsearch_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                AssistanceLocationsByDistanceParameters.distanceforsearch_ = value
            }
        }
    }

    open var distanceforsearch: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceParameters.distanceforsearch))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceParameters.distanceforsearch, to: IntValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(latitude: Double?, longitude: Double?, distanceforsearch: Int?) -> EntityKey {
        return EntityKey().with(name: "LATITUDE", value: DoubleValue.of(optional: latitude)).with(name: "LONGITUDE", value: DoubleValue.of(optional: longitude)).with(name: "DISTANCEFORSEARCH", value: IntValue.of(optional: distanceforsearch))
    }

    open class var latitude: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                return AssistanceLocationsByDistanceParameters.latitude_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                AssistanceLocationsByDistanceParameters.latitude_ = value
            }
        }
    }

    open var latitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceParameters.latitude))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceParameters.latitude, to: DoubleValue.of(optional: value))
        }
    }

    open class var longitude: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                return AssistanceLocationsByDistanceParameters.longitude_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                AssistanceLocationsByDistanceParameters.longitude_ = value
            }
        }
    }

    open var longitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: AssistanceLocationsByDistanceParameters.longitude))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceLocationsByDistanceParameters.longitude, to: DoubleValue.of(optional: value))
        }
    }

    open var old: AssistanceLocationsByDistanceParameters {
        return CastRequired<AssistanceLocationsByDistanceParameters>.from(self.oldEntity)
    }

    open class var set: Property {
        get {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                return AssistanceLocationsByDistanceParameters.set_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceLocationsByDistanceParameters.self)
            defer { objc_sync_exit(AssistanceLocationsByDistanceParameters.self) }
            do {
                AssistanceLocationsByDistanceParameters.set_ = value
            }
        }
    }

    open var set: [AssistanceLocationsByDistanceType] {
        get {
            return ArrayConverter.convert(AssistanceLocationsByDistanceParameters.set.entityList(from: self).toArray(), [AssistanceLocationsByDistanceType]())
        }
        set(value) {
            AssistanceLocationsByDistanceParameters.set.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }
}
