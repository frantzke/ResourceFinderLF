// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class Sap4kidsType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ID")

    private static var timefrom_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "TIMEFROM")

    private static var timeto_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "TIMETO")

    private static var availablemon_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEMON")

    private static var availabletue_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLETUE")

    private static var availablewed_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEWED")

    private static var availablethr_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLETHR")

    private static var availablefri_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEFRI")

    private static var availablesat_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLESAT")

    private static var availablesun_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLESUN")

    private static var startdate_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "STARTDATE")

    private static var enddate_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ENDDATE")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "NAME")

    private static var addressId_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ADDRESS_ID")

    private static var locationtypeId_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LOCATIONTYPE_ID")

    private static var eligibilitycategory_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ELIGIBILITYCATEGORY")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "DESCRIPTION")

    private static var subtype_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "SUBTYPE")

    private static var street_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "STREET")

    private static var city_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "CITY")

    private static var zip_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ZIP")

    private static var lat_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LAT")

    private static var long_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LONG")

    private static var parameters_: Property = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "Parameters")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.sap4kidsType)
    }

    open class var addressId: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.addressId_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.addressId_ = value
            }
        }
    }

    open var addressId: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Sap4kidsType.addressId))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.addressId, to: IntValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [Sap4kidsType] {
        return ArrayConverter.convert(from.toArray(), [Sap4kidsType]())
    }

    open class var availablefri: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablefri_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablefri_ = value
            }
        }
    }

    open var availablefri: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablefri))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablefri, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablemon: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablemon_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablemon_ = value
            }
        }
    }

    open var availablemon: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablemon))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablemon, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablesat: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablesat_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablesat_ = value
            }
        }
    }

    open var availablesat: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablesat))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablesat, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablesun: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablesun_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablesun_ = value
            }
        }
    }

    open var availablesun: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablesun))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablesun, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablethr: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablethr_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablethr_ = value
            }
        }
    }

    open var availablethr: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablethr))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablethr, to: BooleanValue.of(optional: value))
        }
    }

    open class var availabletue: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availabletue_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availabletue_ = value
            }
        }
    }

    open var availabletue: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availabletue))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availabletue, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablewed: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.availablewed_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.availablewed_ = value
            }
        }
    }

    open var availablewed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Sap4kidsType.availablewed))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.availablewed, to: BooleanValue.of(optional: value))
        }
    }

    open class var city: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.city_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.city))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.city, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Sap4kidsType {
        return CastRequired<Sap4kidsType>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.description_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.description))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.description, to: StringValue.of(optional: value))
        }
    }

    open class var eligibilitycategory: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.eligibilitycategory_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.eligibilitycategory_ = value
            }
        }
    }

    open var eligibilitycategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.eligibilitycategory))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.eligibilitycategory, to: StringValue.of(optional: value))
        }
    }

    open class var enddate: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.enddate_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.enddate_ = value
            }
        }
    }

    open var enddate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: Sap4kidsType.enddate))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.enddate, to: value)
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.id_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.id))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.id, to: StringValue.of(optional: value))
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
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.lat_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.lat_ = value
            }
        }
    }

    open var lat: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Sap4kidsType.lat))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.lat, to: DecimalValue.of(optional: value))
        }
    }

    open class var locationtypeId: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.locationtypeId_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.locationtypeId_ = value
            }
        }
    }

    open var locationtypeId: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.locationtypeId))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.locationtypeId, to: StringValue.of(optional: value))
        }
    }

    open class var long: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.long_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.long_ = value
            }
        }
    }

    open var long: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Sap4kidsType.long))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.long, to: DecimalValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.name_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.name))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: Sap4kidsType {
        return CastRequired<Sap4kidsType>.from(self.oldEntity)
    }

    open class var parameters: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.parameters_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.parameters_ = value
            }
        }
    }

    open var parameters: Sap4kidsParameters? {
        get {
            return CastOptional<Sap4kidsParameters>.from(self.optionalValue(for: Sap4kidsType.parameters))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.parameters, to: value)
        }
    }

    open class var startdate: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.startdate_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.startdate_ = value
            }
        }
    }

    open var startdate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: Sap4kidsType.startdate))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.startdate, to: value)
        }
    }

    open class var street: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.street_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.street_ = value
            }
        }
    }

    open var street: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.street))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.street, to: StringValue.of(optional: value))
        }
    }

    open class var subtype: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.subtype_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.subtype_ = value
            }
        }
    }

    open var subtype: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Sap4kidsType.subtype))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.subtype, to: StringValue.of(optional: value))
        }
    }

    open class var timefrom: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.timefrom_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.timefrom_ = value
            }
        }
    }

    open var timefrom: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: Sap4kidsType.timefrom))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.timefrom, to: value)
        }
    }

    open class var timeto: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.timeto_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.timeto_ = value
            }
        }
    }

    open var timeto: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: Sap4kidsType.timeto))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.timeto, to: value)
        }
    }

    open class var zip: Property {
        get {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                return Sap4kidsType.zip_
            }
        }
        set(value) {
            objc_sync_enter(Sap4kidsType.self)
            defer { objc_sync_exit(Sap4kidsType.self) }
            do {
                Sap4kidsType.zip_ = value
            }
        }
    }

    open var zip: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Sap4kidsType.zip))
        }
        set(value) {
            self.setOptionalValue(for: Sap4kidsType.zip, to: IntValue.of(optional: value))
        }
    }
}
