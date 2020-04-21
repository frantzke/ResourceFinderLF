// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class AssistanceOfferings: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "createdAt")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "modifiedAt")

    private static var timeFrom_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "timeFrom")

    private static var timeTo_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "timeTo")

    private static var availableMon_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableMon")

    private static var availableTue_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableTue")

    private static var availableWed_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableWed")

    private static var availableThr_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableThr")

    private static var availableFri_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableFri")

    private static var availableSat_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableSat")

    private static var availableSun_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableSun")

    private static var startDate_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "startDate")

    private static var endDate_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "endDate")

    private static var pickupInd_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "pickupInd")

    private static var deliveryInd_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "deliveryInd")

    private static var virtualInd_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "virtualInd")

    private static var websiteURL_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "websiteURL")

    private static var eligiblityCategory_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "eligiblityCategory")

    private static var offerDetails_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "offerDetails")

    private static var offerApproved_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "offerApproved")

    private static var assistanceLocation_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceLocation")

    private static var assistanceType_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceType")

    private static var assistanceSubType_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceSubType")

    private static var eligiblityCategoryID_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "eligiblityCategory_ID")

    private static var assistanceLocationID_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceLocation_ID")

    private static var assistanceTypeID_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceType_ID")

    private static var assistanceSubTypeID_: Property = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceSubType_ID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.assistanceOfferings)
    }

    open class func array(from: EntityValueList) -> [AssistanceOfferings] {
        return ArrayConverter.convert(from.toArray(), [AssistanceOfferings]())
    }

    open class var assistanceLocation: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceLocation_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceLocation_ = value
            }
        }
    }

    open var assistanceLocation: AssistanceLocations? {
        get {
            return CastOptional<AssistanceLocations>.from(self.optionalValue(for: AssistanceOfferings.assistanceLocation))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceLocation, to: value)
        }
    }

    open class var assistanceLocationID: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceLocationID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceLocationID_ = value
            }
        }
    }

    open var assistanceLocationID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceOfferings.assistanceLocationID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceLocationID, to: value)
        }
    }

    open class var assistanceSubType: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceSubType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceSubType_ = value
            }
        }
    }

    open var assistanceSubType: AssistanceSubTypes? {
        get {
            return CastOptional<AssistanceSubTypes>.from(self.optionalValue(for: AssistanceOfferings.assistanceSubType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceSubType, to: value)
        }
    }

    open class var assistanceSubTypeID: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceSubTypeID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceSubTypeID_ = value
            }
        }
    }

    open var assistanceSubTypeID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceOfferings.assistanceSubTypeID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceSubTypeID, to: value)
        }
    }

    open class var assistanceType: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceType_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceType_ = value
            }
        }
    }

    open var assistanceType: AssistanceTypes? {
        get {
            return CastOptional<AssistanceTypes>.from(self.optionalValue(for: AssistanceOfferings.assistanceType))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceType, to: value)
        }
    }

    open class var assistanceTypeID: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.assistanceTypeID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.assistanceTypeID_ = value
            }
        }
    }

    open var assistanceTypeID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceOfferings.assistanceTypeID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.assistanceTypeID, to: value)
        }
    }

    open class var availableFri: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableFri_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableFri_ = value
            }
        }
    }

    open var availableFri: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableFri))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableFri, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableMon: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableMon_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableMon_ = value
            }
        }
    }

    open var availableMon: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableMon))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableMon, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableSat: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableSat_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableSat_ = value
            }
        }
    }

    open var availableSat: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableSat))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableSat, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableSun: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableSun_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableSun_ = value
            }
        }
    }

    open var availableSun: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableSun))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableSun, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableThr: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableThr_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableThr_ = value
            }
        }
    }

    open var availableThr: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableThr))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableThr, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableTue: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableTue_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableTue_ = value
            }
        }
    }

    open var availableTue: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableTue))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableTue, to: BooleanValue.of(optional: value))
        }
    }

    open class var availableWed: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.availableWed_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.availableWed_ = value
            }
        }
    }

    open var availableWed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.availableWed))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.availableWed, to: BooleanValue.of(optional: value))
        }
    }

    open func copy() -> AssistanceOfferings {
        return CastRequired<AssistanceOfferings>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: AssistanceOfferings.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.createdAt, to: value)
        }
    }

    open class var deliveryInd: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.deliveryInd_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.deliveryInd_ = value
            }
        }
    }

    open var deliveryInd: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.deliveryInd))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.deliveryInd, to: BooleanValue.of(optional: value))
        }
    }

    open class var eligiblityCategory: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.eligiblityCategory_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.eligiblityCategory_ = value
            }
        }
    }

    open var eligiblityCategory: EligiblityCategories? {
        get {
            return CastOptional<EligiblityCategories>.from(self.optionalValue(for: AssistanceOfferings.eligiblityCategory))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.eligiblityCategory, to: value)
        }
    }

    open class var eligiblityCategoryID: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.eligiblityCategoryID_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.eligiblityCategoryID_ = value
            }
        }
    }

    open var eligiblityCategoryID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceOfferings.eligiblityCategoryID))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.eligiblityCategoryID, to: value)
        }
    }

    open class var endDate: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.endDate_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.endDate_ = value
            }
        }
    }

    open var endDate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: AssistanceOfferings.endDate))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.endDate, to: value)
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.id_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AssistanceOfferings.id))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: AssistanceOfferings.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.modifiedAt, to: value)
        }
    }

    open class var offerApproved: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.offerApproved_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.offerApproved_ = value
            }
        }
    }

    open var offerApproved: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.offerApproved))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.offerApproved, to: BooleanValue.of(optional: value))
        }
    }

    open class var offerDetails: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.offerDetails_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.offerDetails_ = value
            }
        }
    }

    open var offerDetails: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceOfferings.offerDetails))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.offerDetails, to: StringValue.of(optional: value))
        }
    }

    open var old: AssistanceOfferings {
        return CastRequired<AssistanceOfferings>.from(self.oldEntity)
    }

    open class var pickupInd: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.pickupInd_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.pickupInd_ = value
            }
        }
    }

    open var pickupInd: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.pickupInd))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.pickupInd, to: BooleanValue.of(optional: value))
        }
    }

    open class var startDate: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.startDate_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.startDate_ = value
            }
        }
    }

    open var startDate: LocalDate? {
        get {
            return LocalDate.castOptional(self.optionalValue(for: AssistanceOfferings.startDate))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.startDate, to: value)
        }
    }

    open class var timeFrom: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.timeFrom_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.timeFrom_ = value
            }
        }
    }

    open var timeFrom: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: AssistanceOfferings.timeFrom))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.timeFrom, to: value)
        }
    }

    open class var timeTo: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.timeTo_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.timeTo_ = value
            }
        }
    }

    open var timeTo: LocalTime? {
        get {
            return LocalTime.castOptional(self.optionalValue(for: AssistanceOfferings.timeTo))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.timeTo, to: value)
        }
    }

    open class var virtualInd: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.virtualInd_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.virtualInd_ = value
            }
        }
    }

    open var virtualInd: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AssistanceOfferings.virtualInd))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.virtualInd, to: BooleanValue.of(optional: value))
        }
    }

    open class var websiteURL: Property {
        get {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                return AssistanceOfferings.websiteURL_
            }
        }
        set(value) {
            objc_sync_enter(AssistanceOfferings.self)
            defer { objc_sync_exit(AssistanceOfferings.self) }
            do {
                AssistanceOfferings.websiteURL_ = value
            }
        }
    }

    open var websiteURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AssistanceOfferings.websiteURL))
        }
        set(value) {
            self.setOptionalValue(for: AssistanceOfferings.websiteURL, to: StringValue.of(optional: value))
        }
    }
}
