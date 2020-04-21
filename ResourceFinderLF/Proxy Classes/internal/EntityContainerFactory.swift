// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

internal class EntityContainerFactory {
    static func registerAll() throws {
        EntityContainerMetadata.EntityTypes.addresses.registerFactory(ObjectFactory.with(create: { Addresses(withDefaults: false) }, createWithDecoder: { d in try Addresses(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceLocations.registerFactory(ObjectFactory.with(create: { AssistanceLocations(withDefaults: false) }, createWithDecoder: { d in try AssistanceLocations(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceOfferings.registerFactory(ObjectFactory.with(create: { AssistanceOfferings(withDefaults: false) }, createWithDecoder: { d in try AssistanceOfferings(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceSubTypes.registerFactory(ObjectFactory.with(create: { AssistanceSubTypes(withDefaults: false) }, createWithDecoder: { d in try AssistanceSubTypes(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceTypes.registerFactory(ObjectFactory.with(create: { AssistanceTypes(withDefaults: false) }, createWithDecoder: { d in try AssistanceTypes(from: d) }))
        EntityContainerMetadata.EntityTypes.deliveryModeTexts.registerFactory(ObjectFactory.with(create: { DeliveryModeTexts(withDefaults: false) }, createWithDecoder: { d in try DeliveryModeTexts(from: d) }))
        EntityContainerMetadata.EntityTypes.deliveryModes.registerFactory(ObjectFactory.with(create: { DeliveryModes(withDefaults: false) }, createWithDecoder: { d in try DeliveryModes(from: d) }))
        EntityContainerMetadata.EntityTypes.districtOfferingAsistance.registerFactory(ObjectFactory.with(create: { DistrictOfferingAsistance(withDefaults: false) }, createWithDecoder: { d in try DistrictOfferingAsistance(from: d) }))
        EntityContainerMetadata.EntityTypes.districts.registerFactory(ObjectFactory.with(create: { Districts(withDefaults: false) }, createWithDecoder: { d in try Districts(from: d) }))
        EntityContainerMetadata.EntityTypes.eligiblityCategories.registerFactory(ObjectFactory.with(create: { EligiblityCategories(withDefaults: false) }, createWithDecoder: { d in try EligiblityCategories(from: d) }))
        EntityContainerMetadata.EntityTypes.locationTypes.registerFactory(ObjectFactory.with(create: { LocationTypes(withDefaults: false) }, createWithDecoder: { d in try LocationTypes(from: d) }))
        EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.registerFactory(ObjectFactory.with(create: { SchoolOfferingAssistance(withDefaults: false) }, createWithDecoder: { d in try SchoolOfferingAssistance(from: d) }))
        EntityContainerMetadata.EntityTypes.schoolOffersParameters.registerFactory(ObjectFactory.with(create: { SchoolOffersParameters(withDefaults: false) }, createWithDecoder: { d in try SchoolOffersParameters(from: d) }))
        EntityContainerMetadata.EntityTypes.schoolOffersType.registerFactory(ObjectFactory.with(create: { SchoolOffersType(withDefaults: false) }, createWithDecoder: { d in try SchoolOffersType(from: d) }))
        EntityContainerMetadata.EntityTypes.schools.registerFactory(ObjectFactory.with(create: { Schools(withDefaults: false) }, createWithDecoder: { d in try Schools(from: d) }))
        EntityContainerMetadata.EntityTypes.states.registerFactory(ObjectFactory.with(create: { States(withDefaults: false) }, createWithDecoder: { d in try States(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.registerFactory(ObjectFactory.with(create: { AssistanceLocationsByDistanceParameters(withDefaults: false) }, createWithDecoder: { d in try AssistanceLocationsByDistanceParameters(from: d) }))
        EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.registerFactory(ObjectFactory.with(create: { AssistanceLocationsByDistanceType(withDefaults: false) }, createWithDecoder: { d in try AssistanceLocationsByDistanceType(from: d) }))
        EntityContainerMetadata.EntityTypes.sap4kidsParameters.registerFactory(ObjectFactory.with(create: { Sap4kidsParameters(withDefaults: false) }, createWithDecoder: { d in try Sap4kidsParameters(from: d) }))
        EntityContainerMetadata.EntityTypes.sap4kidsType.registerFactory(ObjectFactory.with(create: { Sap4kidsType(withDefaults: false) }, createWithDecoder: { d in try Sap4kidsType(from: d) }))
        EntityContainerStaticResolver.resolve()
    }
}
