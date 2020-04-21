// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class SchoolOffersType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ID")

    private static var timefrom_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "TIMEFROM")

    private static var timeto_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "TIMETO")

    private static var availablemon_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEMON")

    private static var availabletue_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLETUE")

    private static var availablewed_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEWED")

    private static var availablethr_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLETHR")

    private static var availablefri_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEFRI")

    private static var availablesat_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLESAT")

    private static var availablesun_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLESUN")

    private static var startdate_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STARTDATE")

    private static var enddate_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ENDDATE")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "NAME")

    private static var eligibilitycategory_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ELIGIBILITYCATEGORY")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "DESCRIPTION")

    private static var assistancesubtype_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCESUBTYPE")

    private static var addressId_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ADDRESS_ID")

    private static var street_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STREET")

    private static var city_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CITY")

    private static var statecode_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STATECODE")

    private static var zip_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ZIP")

    private static var lat_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LAT")

    private static var long_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LONG")

    private static var locationId_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATION_ID")

    private static var locationtypeId_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONTYPE_ID")

    private static var locationdescription_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONDESCRIPTION")

    private static var locationtype_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONTYPE")

    private static var assistancetype_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCETYPE")

    private static var assistancetypedescription_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCETYPEDESCRIPTION")

    private static var pickupind_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "PICKUPIND")

    private static var deliveryind_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "DELIVERYIND")

    private static var websiteurl_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "WEBSITEURL")

    private static var offerdetails_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "OFFERDETAILS")

    private static var contactname_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTNAME")

    private static var contactemail_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTEMAIL")

    private static var contacttitle_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTTITLE")

    private static var parameters_: Property = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "Parameters")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.schoolOffersType)
    }

    open class var addressId: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.addressId_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.addressId_ = value
            }
        }
    }

    open var addressId: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SchoolOffersType.addressId))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.addressId, to: IntValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [SchoolOffersType] {
        return ArrayConverter.convert(from.toArray(), [SchoolOffersType]())
    }

    open class var assistancesubtype: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.assistancesubtype_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.assistancesubtype_ = value
            }
        }
    }

    open var assistancesubtype: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.assistancesubtype))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.assistancesubtype, to: StringValue.of(optional: value))
        }
    }

    open class var assistancetype: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.assistancetype_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.assistancetype_ = value
            }
        }
    }

    open var assistancetype: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.assistancetype))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.assistancetype, to: StringValue.of(optional: value))
        }
    }

    open class var assistancetypedescription: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.assistancetypedescription_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.assistancetypedescription_ = value
            }
        }
    }

    open var assistancetypedescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.assistancetypedescription))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.assistancetypedescription, to: StringValue.of(optional: value))
        }
    }

    open class var availablefri: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablefri_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablefri_ = value
            }
        }
    }

    open var availablefri: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablefri))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablefri, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablemon: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablemon_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablemon_ = value
            }
        }
    }

    open var availablemon: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablemon))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablemon, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablesat: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablesat_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablesat_ = value
            }
        }
    }

    open var availablesat: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablesat))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablesat, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablesun: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablesun_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablesun_ = value
            }
        }
    }

    open var availablesun: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablesun))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablesun, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablethr: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablethr_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablethr_ = value
            }
        }
    }

    open var availablethr: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablethr))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablethr, to: BooleanValue.of(optional: value))
        }
    }

    open class var availabletue: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availabletue_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availabletue_ = value
            }
        }
    }

    open var availabletue: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availabletue))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availabletue, to: BooleanValue.of(optional: value))
        }
    }

    open class var availablewed: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.availablewed_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.availablewed_ = value
            }
        }
    }

    open var availablewed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.availablewed))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.availablewed, to: BooleanValue.of(optional: value))
        }
    }

    open class var city: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.city_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.city))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.city, to: StringValue.of(optional: value))
        }
    }

    open class var contactemail: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.contactemail_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.contactemail_ = value
            }
        }
    }

    open var contactemail: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.contactemail))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.contactemail, to: StringValue.of(optional: value))
        }
    }

    open class var contactname: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.contactname_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.contactname_ = value
            }
        }
    }

    open var contactname: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.contactname))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.contactname, to: StringValue.of(optional: value))
        }
    }

    open class var contacttitle: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.contacttitle_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.contacttitle_ = value
            }
        }
    }

    open var contacttitle: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.contacttitle))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.contacttitle, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> SchoolOffersType {
        return CastRequired<SchoolOffersType>.from(self.copyEntity())
    }

    open class var deliveryind: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.deliveryind_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.deliveryind_ = value
            }
        }
    }

    open var deliveryind: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.deliveryind))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.deliveryind, to: BooleanValue.of(optional: value))
        }
    }

    open class var description: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.description_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.description))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.description, to: StringValue.of(optional: value))
        }
    }

    open class var eligibilitycategory: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.eligibilitycategory_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.eligibilitycategory_ = value
            }
        }
    }

    open var eligibilitycategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.eligibilitycategory))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.eligibilitycategory, to: StringValue.of(optional: value))
        }
    }

    open class var enddate: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.enddate_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.enddate_ = value
            }
        }
    }

    open var enddate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: SchoolOffersType.enddate))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.enddate, to: value)
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.id_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.id))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.id, to: StringValue.of(optional: value))
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
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.lat_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.lat_ = value
            }
        }
    }

    open var lat: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SchoolOffersType.lat))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.lat, to: DecimalValue.of(optional: value))
        }
    }

    open class var locationId: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.locationId_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.locationId_ = value
            }
        }
    }

    open var locationId: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.locationId))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.locationId, to: StringValue.of(optional: value))
        }
    }

    open class var locationdescription: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.locationdescription_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.locationdescription_ = value
            }
        }
    }

    open var locationdescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.locationdescription))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.locationdescription, to: StringValue.of(optional: value))
        }
    }

    open class var locationtype: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.locationtype_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.locationtype_ = value
            }
        }
    }

    open var locationtype: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.locationtype))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.locationtype, to: StringValue.of(optional: value))
        }
    }

    open class var locationtypeId: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.locationtypeId_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.locationtypeId_ = value
            }
        }
    }

    open var locationtypeId: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.locationtypeId))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.locationtypeId, to: StringValue.of(optional: value))
        }
    }

    open class var long: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.long_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.long_ = value
            }
        }
    }

    open var long: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SchoolOffersType.long))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.long, to: DecimalValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.name_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.name))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.name, to: StringValue.of(optional: value))
        }
    }

    open class var offerdetails: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.offerdetails_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.offerdetails_ = value
            }
        }
    }

    open var offerdetails: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.offerdetails))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.offerdetails, to: StringValue.of(optional: value))
        }
    }

    open var old: SchoolOffersType {
        return CastRequired<SchoolOffersType>.from(self.oldEntity)
    }

    open class var parameters: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.parameters_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.parameters_ = value
            }
        }
    }

    open var parameters: SchoolOffersParameters? {
        get {
            return CastOptional<SchoolOffersParameters>.from(self.optionalValue(for: SchoolOffersType.parameters))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.parameters, to: value)
        }
    }

    open class var pickupind: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.pickupind_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.pickupind_ = value
            }
        }
    }

    open var pickupind: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: SchoolOffersType.pickupind))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.pickupind, to: BooleanValue.of(optional: value))
        }
    }

    open class var startdate: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.startdate_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.startdate_ = value
            }
        }
    }

    open var startdate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: SchoolOffersType.startdate))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.startdate, to: value)
        }
    }

    open class var statecode: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.statecode_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.statecode_ = value
            }
        }
    }

    open var statecode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.statecode))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.statecode, to: StringValue.of(optional: value))
        }
    }

    open class var street: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.street_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.street_ = value
            }
        }
    }

    open var street: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.street))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.street, to: StringValue.of(optional: value))
        }
    }

    open class var timefrom: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.timefrom_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.timefrom_ = value
            }
        }
    }

    open var timefrom: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: SchoolOffersType.timefrom))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.timefrom, to: value)
        }
    }

    open class var timeto: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.timeto_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.timeto_ = value
            }
        }
    }

    open var timeto: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: SchoolOffersType.timeto))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.timeto, to: value)
        }
    }

    open class var websiteurl: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.websiteurl_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.websiteurl_ = value
            }
        }
    }

    open var websiteurl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SchoolOffersType.websiteurl))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.websiteurl, to: StringValue.of(optional: value))
        }
    }

    open class var zip: Property {
        get {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                return SchoolOffersType.zip_
            }
        }
        set(value) {
            objc_sync_enter(SchoolOffersType.self)
            defer { objc_sync_exit(SchoolOffersType.self) }
            do {
                SchoolOffersType.zip_ = value
            }
        }
    }

    open var zip: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SchoolOffersType.zip))
        }
        set(value) {
            self.setOptionalValue(for: SchoolOffersType.zip, to: IntValue.of(optional: value))
        }
    }
}
