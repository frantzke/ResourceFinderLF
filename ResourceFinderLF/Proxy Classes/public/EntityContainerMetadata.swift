// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

public class EntityContainerMetadata {
    private static var document_: CSDLDocument = EntityContainerMetadata.resolve()

    public static let lock: MetadataLock = MetadataLock()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(EntityContainerMetadata.self)
            defer { objc_sync_exit(EntityContainerMetadata.self) }
            do {
                return EntityContainerMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(EntityContainerMetadata.self)
            defer { objc_sync_exit(EntityContainerMetadata.self) }
            do {
                EntityContainerMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! EntityContainerFactory.registerAll()
        EntityContainerMetadataParser.parsed.hasGeneratedProxies = true
        return EntityContainerMetadataParser.parsed
    }

    public class EntityTypes {
        private static var addresses_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.Addresses")

        private static var assistanceLocations_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.AssistanceLocations")

        private static var assistanceOfferings_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.AssistanceOfferings")

        private static var assistanceSubTypes_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.AssistanceSubTypes")

        private static var assistanceTypes_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.AssistanceTypes")

        private static var deliveryModeTexts_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.DeliveryMode_texts")

        private static var deliveryModes_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.DeliveryModes")

        private static var districtOfferingAsistance_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.DistrictOfferingAsistance")

        private static var districts_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.Districts")

        private static var eligiblityCategories_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.EligiblityCategories")

        private static var locationTypes_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.LocationTypes")

        private static var schoolOfferingAssistance_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.SchoolOfferingAssistance")

        private static var schoolOffersParameters_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.SchoolOffersParameters")

        private static var schoolOffersType_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.SchoolOffersType")

        private static var schools_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.Schools")

        private static var states_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.States")

        private static var assistanceLocationsByDistanceParameters_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.assistanceLocationsByDistanceParameters")

        private static var assistanceLocationsByDistanceType_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.assistanceLocationsByDistanceType")

        private static var sap4kidsParameters_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.sap4kidsParameters")

        private static var sap4kidsType_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "srv.Map.sap4kidsType")

        public static var addresses: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.addresses_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.addresses_ = value
                }
            }
        }

        public static var assistanceLocations: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceLocations_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceLocations_ = value
                }
            }
        }

        public static var assistanceLocationsByDistanceParameters: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters_ = value
                }
            }
        }

        public static var assistanceLocationsByDistanceType: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType_ = value
                }
            }
        }

        public static var assistanceOfferings: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceOfferings_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceOfferings_ = value
                }
            }
        }

        public static var assistanceSubTypes: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceSubTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceSubTypes_ = value
                }
            }
        }

        public static var assistanceTypes: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.assistanceTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.assistanceTypes_ = value
                }
            }
        }

        public static var deliveryModeTexts: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.deliveryModeTexts_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.deliveryModeTexts_ = value
                }
            }
        }

        public static var deliveryModes: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.deliveryModes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.deliveryModes_ = value
                }
            }
        }

        public static var districtOfferingAsistance: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.districtOfferingAsistance_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.districtOfferingAsistance_ = value
                }
            }
        }

        public static var districts: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.districts_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.districts_ = value
                }
            }
        }

        public static var eligiblityCategories: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.eligiblityCategories_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.eligiblityCategories_ = value
                }
            }
        }

        public static var locationTypes: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.locationTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.locationTypes_ = value
                }
            }
        }

        public static var sap4kidsParameters: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.sap4kidsParameters_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.sap4kidsParameters_ = value
                }
            }
        }

        public static var sap4kidsType: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.sap4kidsType_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.sap4kidsType_ = value
                }
            }
        }

        public static var schoolOfferingAssistance: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.schoolOfferingAssistance_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.schoolOfferingAssistance_ = value
                }
            }
        }

        public static var schoolOffersParameters: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.schoolOffersParameters_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.schoolOffersParameters_ = value
                }
            }
        }

        public static var schoolOffersType: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.schoolOffersType_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.schoolOffersType_ = value
                }
            }
        }

        public static var schools: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.schools_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.schools_ = value
                }
            }
        }

        public static var states: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.states_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.states_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var addresses_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Addresses")

        private static var assistanceLocations_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "AssistanceLocations")

        private static var assistanceOfferings_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "AssistanceOfferings")

        private static var assistanceSubTypes_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "AssistanceSubTypes")

        private static var assistanceTypes_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "AssistanceTypes")

        private static var deliveryModeTexts_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "DeliveryMode_texts")

        private static var deliveryModes_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "DeliveryModes")

        private static var districtOfferingAsistance_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "DistrictOfferingAsistance")

        private static var districts_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Districts")

        private static var eligiblityCategories_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "EligiblityCategories")

        private static var locationTypes_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "LocationTypes")

        private static var schoolOfferingAssistance_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "SchoolOfferingAssistance")

        private static var schoolOffers_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "SchoolOffers")

        private static var schools_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Schools")

        private static var states_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "States")

        private static var assistanceLocationsByDistance_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "assistanceLocationsByDistance")

        private static var sap4kids_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "sap4kids")

        public static var addresses: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.addresses_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.addresses_ = value
                }
            }
        }

        public static var assistanceLocations: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.assistanceLocations_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.assistanceLocations_ = value
                }
            }
        }

        public static var assistanceLocationsByDistance: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.assistanceLocationsByDistance_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.assistanceLocationsByDistance_ = value
                }
            }
        }

        public static var assistanceOfferings: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.assistanceOfferings_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.assistanceOfferings_ = value
                }
            }
        }

        public static var assistanceSubTypes: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.assistanceSubTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.assistanceSubTypes_ = value
                }
            }
        }

        public static var assistanceTypes: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.assistanceTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.assistanceTypes_ = value
                }
            }
        }

        public static var deliveryModeTexts: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.deliveryModeTexts_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.deliveryModeTexts_ = value
                }
            }
        }

        public static var deliveryModes: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.deliveryModes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.deliveryModes_ = value
                }
            }
        }

        public static var districtOfferingAsistance: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.districtOfferingAsistance_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.districtOfferingAsistance_ = value
                }
            }
        }

        public static var districts: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.districts_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.districts_ = value
                }
            }
        }

        public static var eligiblityCategories: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.eligiblityCategories_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.eligiblityCategories_ = value
                }
            }
        }

        public static var locationTypes: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.locationTypes_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.locationTypes_ = value
                }
            }
        }

        public static var sap4kids: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.sap4kids_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.sap4kids_ = value
                }
            }
        }

        public static var schoolOfferingAssistance: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.schoolOfferingAssistance_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.schoolOfferingAssistance_ = value
                }
            }
        }

        public static var schoolOffers: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.schoolOffers_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.schoolOffers_ = value
                }
            }
        }

        public static var schools: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.schools_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.schools_ = value
                }
            }
        }

        public static var states: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.states_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.states_ = value
                }
            }
        }
    }
}
