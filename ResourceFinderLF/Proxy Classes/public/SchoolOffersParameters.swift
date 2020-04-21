// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class SchoolOffersParameters: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var latitude_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "LATITUDE")

    private static var longitude_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "LONGITUDE")

    private static var distanceforsearch_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "DISTANCEFORSEARCH")

    private static var eligibilitycat_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "ELIGIBILITYCAT")

    private static var assistsubtype_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "ASSISTSUBTYPE")

    private static var set_: Property = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "Set")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.schoolOffersParameters)
    }

    open class func array(from: EntityValueList) -> [SchoolOffersParameters] {
        return ArrayConverter.convert(from.toArray(), [SchoolOffersParameters]())
    }

    open class var assistsubtype: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.assistsubtype_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.assistsubtype_ = value
            }
        }
    }

    open var assistsubtype: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersParameters.assistsubtype))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersParameters.assistsubtype, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> SchoolOffersParameters {
        return CastRequired<SchoolOffersParameters>.from(self.copyEntity())
    }

    open class var distanceforsearch: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.distanceforsearch_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.distanceforsearch_ = value
            }
        }
    }

    open var distanceforsearch: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SchoolOffersParameters.distanceforsearch))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersParameters.distanceforsearch, to: IntValue.of(optional: value))
        }
    }

    open class var eligibilitycat: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.eligibilitycat_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.eligibilitycat_ = value
            }
        }
    }

    open var eligibilitycat: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersParameters.eligibilitycat))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersParameters.eligibilitycat, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(latitude: Double?, longitude: Double?, distanceforsearch: Int?, eligibilitycat: String?, assistsubtype: String?) -> EntityKey {
        return EntityKey().with(name: "LATITUDE", value: DoubleValue.of(optional: latitude)).with(name: "LONGITUDE", value: DoubleValue.of(optional: longitude)).with(name: "DISTANCEFORSEARCH", value: IntValue.of(optional: distanceforsearch)).with(name: "ELIGIBILITYCAT", value: StringValue.of(optional: eligibilitycat)).with(name: "ASSISTSUBTYPE", value: StringValue.of(optional: assistsubtype))
    }

    open class var latitude: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.latitude_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.latitude_ = value
            }
        }
    }

    open var latitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: SchoolOffersParameters.latitude))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersParameters.latitude, to: DoubleValue.of(optional: value))
        }
    }

    open class var longitude: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.longitude_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.longitude_ = value
            }
        }
    }

    open var longitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: SchoolOffersParameters.longitude))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersParameters.longitude, to: DoubleValue.of(optional: value))
        }
    }

    open var old: SchoolOffersParameters {
        return CastRequired<SchoolOffersParameters>.from(self.oldEntity)
    }

    open class var set: Property {
        get {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                return SchoolOffersParameters.set_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersParameters.self)
            defer { objc_sync_exit(SchoolOffersParameters.self) }
            do {
                SchoolOffersParameters.set_ = value
            }
        }
    }

    open var set: [SchoolOffersType] {
        get {
            return ArrayConverter.convert(SchoolOffersParameters.set.entityList(from: self).toArray(), [SchoolOffersType]())
        }
        set(value) {
            SchoolOffersParameters.set.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }
}
