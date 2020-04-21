// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

internal class EntityContainerMetadataChanges {
    static func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        EntityContainerMetadata.document = metadata
        EntityContainerMetadataChanges.merge1(metadata: metadata)
        try! EntityContainerFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !EntityContainerMetadata.EntityTypes.addresses.isRemoved {
            EntityContainerMetadata.EntityTypes.addresses = metadata.entityType(withName: "srv.Map.Addresses")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceLocations.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceLocations = metadata.entityType(withName: "srv.Map.AssistanceLocations")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceOfferings.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceOfferings = metadata.entityType(withName: "srv.Map.AssistanceOfferings")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceSubTypes.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceSubTypes = metadata.entityType(withName: "srv.Map.AssistanceSubTypes")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceTypes.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceTypes = metadata.entityType(withName: "srv.Map.AssistanceTypes")
        }
        if !EntityContainerMetadata.EntityTypes.deliveryModeTexts.isRemoved {
            EntityContainerMetadata.EntityTypes.deliveryModeTexts = metadata.entityType(withName: "srv.Map.DeliveryMode_texts")
        }
        if !EntityContainerMetadata.EntityTypes.deliveryModes.isRemoved {
            EntityContainerMetadata.EntityTypes.deliveryModes = metadata.entityType(withName: "srv.Map.DeliveryModes")
        }
        if !EntityContainerMetadata.EntityTypes.districtOfferingAsistance.isRemoved {
            EntityContainerMetadata.EntityTypes.districtOfferingAsistance = metadata.entityType(withName: "srv.Map.DistrictOfferingAsistance")
        }
        if !EntityContainerMetadata.EntityTypes.districts.isRemoved {
            EntityContainerMetadata.EntityTypes.districts = metadata.entityType(withName: "srv.Map.Districts")
        }
        if !EntityContainerMetadata.EntityTypes.eligiblityCategories.isRemoved {
            EntityContainerMetadata.EntityTypes.eligiblityCategories = metadata.entityType(withName: "srv.Map.EligiblityCategories")
        }
        if !EntityContainerMetadata.EntityTypes.locationTypes.isRemoved {
            EntityContainerMetadata.EntityTypes.locationTypes = metadata.entityType(withName: "srv.Map.LocationTypes")
        }
        if !EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.isRemoved {
            EntityContainerMetadata.EntityTypes.schoolOfferingAssistance = metadata.entityType(withName: "srv.Map.SchoolOfferingAssistance")
        }
        if !EntityContainerMetadata.EntityTypes.schoolOffersParameters.isRemoved {
            EntityContainerMetadata.EntityTypes.schoolOffersParameters = metadata.entityType(withName: "srv.Map.SchoolOffersParameters")
        }
        if !EntityContainerMetadata.EntityTypes.schoolOffersType.isRemoved {
            EntityContainerMetadata.EntityTypes.schoolOffersType = metadata.entityType(withName: "srv.Map.SchoolOffersType")
        }
        if !EntityContainerMetadata.EntityTypes.schools.isRemoved {
            EntityContainerMetadata.EntityTypes.schools = metadata.entityType(withName: "srv.Map.Schools")
        }
        if !EntityContainerMetadata.EntityTypes.states.isRemoved {
            EntityContainerMetadata.EntityTypes.states = metadata.entityType(withName: "srv.Map.States")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters = metadata.entityType(withName: "srv.Map.assistanceLocationsByDistanceParameters")
        }
        if !EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.isRemoved {
            EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType = metadata.entityType(withName: "srv.Map.assistanceLocationsByDistanceType")
        }
        if !EntityContainerMetadata.EntityTypes.sap4kidsParameters.isRemoved {
            EntityContainerMetadata.EntityTypes.sap4kidsParameters = metadata.entityType(withName: "srv.Map.sap4kidsParameters")
        }
        if !EntityContainerMetadata.EntityTypes.sap4kidsType.isRemoved {
            EntityContainerMetadata.EntityTypes.sap4kidsType = metadata.entityType(withName: "srv.Map.sap4kidsType")
        }
        if !EntityContainerMetadata.EntitySets.addresses.isRemoved {
            EntityContainerMetadata.EntitySets.addresses = metadata.entitySet(withName: "Addresses")
        }
        if !EntityContainerMetadata.EntitySets.assistanceLocations.isRemoved {
            EntityContainerMetadata.EntitySets.assistanceLocations = metadata.entitySet(withName: "AssistanceLocations")
        }
        if !EntityContainerMetadata.EntitySets.assistanceOfferings.isRemoved {
            EntityContainerMetadata.EntitySets.assistanceOfferings = metadata.entitySet(withName: "AssistanceOfferings")
        }
        if !EntityContainerMetadata.EntitySets.assistanceSubTypes.isRemoved {
            EntityContainerMetadata.EntitySets.assistanceSubTypes = metadata.entitySet(withName: "AssistanceSubTypes")
        }
        if !EntityContainerMetadata.EntitySets.assistanceTypes.isRemoved {
            EntityContainerMetadata.EntitySets.assistanceTypes = metadata.entitySet(withName: "AssistanceTypes")
        }
        if !EntityContainerMetadata.EntitySets.deliveryModeTexts.isRemoved {
            EntityContainerMetadata.EntitySets.deliveryModeTexts = metadata.entitySet(withName: "DeliveryMode_texts")
        }
        if !EntityContainerMetadata.EntitySets.deliveryModes.isRemoved {
            EntityContainerMetadata.EntitySets.deliveryModes = metadata.entitySet(withName: "DeliveryModes")
        }
        if !EntityContainerMetadata.EntitySets.districtOfferingAsistance.isRemoved {
            EntityContainerMetadata.EntitySets.districtOfferingAsistance = metadata.entitySet(withName: "DistrictOfferingAsistance")
        }
        if !EntityContainerMetadata.EntitySets.districts.isRemoved {
            EntityContainerMetadata.EntitySets.districts = metadata.entitySet(withName: "Districts")
        }
        if !EntityContainerMetadata.EntitySets.eligiblityCategories.isRemoved {
            EntityContainerMetadata.EntitySets.eligiblityCategories = metadata.entitySet(withName: "EligiblityCategories")
        }
        if !EntityContainerMetadata.EntitySets.locationTypes.isRemoved {
            EntityContainerMetadata.EntitySets.locationTypes = metadata.entitySet(withName: "LocationTypes")
        }
        if !EntityContainerMetadata.EntitySets.schoolOfferingAssistance.isRemoved {
            EntityContainerMetadata.EntitySets.schoolOfferingAssistance = metadata.entitySet(withName: "SchoolOfferingAssistance")
        }
        if !EntityContainerMetadata.EntitySets.schoolOffers.isRemoved {
            EntityContainerMetadata.EntitySets.schoolOffers = metadata.entitySet(withName: "SchoolOffers")
        }
        if !EntityContainerMetadata.EntitySets.schools.isRemoved {
            EntityContainerMetadata.EntitySets.schools = metadata.entitySet(withName: "Schools")
        }
        if !EntityContainerMetadata.EntitySets.states.isRemoved {
            EntityContainerMetadata.EntitySets.states = metadata.entitySet(withName: "States")
        }
        if !EntityContainerMetadata.EntitySets.assistanceLocationsByDistance.isRemoved {
            EntityContainerMetadata.EntitySets.assistanceLocationsByDistance = metadata.entitySet(withName: "assistanceLocationsByDistance")
        }
        if !EntityContainerMetadata.EntitySets.sap4kids.isRemoved {
            EntityContainerMetadata.EntitySets.sap4kids = metadata.entitySet(withName: "sap4kids")
        }
        if !Addresses.id.isRemoved {
            Addresses.id = EntityContainerMetadata.EntityTypes.addresses.property(withName: "ID")
        }
        if !Addresses.createdAt.isRemoved {
            Addresses.createdAt = EntityContainerMetadata.EntityTypes.addresses.property(withName: "createdAt")
        }
        if !Addresses.createdBy.isRemoved {
            Addresses.createdBy = EntityContainerMetadata.EntityTypes.addresses.property(withName: "createdBy")
        }
        if !Addresses.modifiedAt.isRemoved {
            Addresses.modifiedAt = EntityContainerMetadata.EntityTypes.addresses.property(withName: "modifiedAt")
        }
        if !Addresses.modifiedBy.isRemoved {
            Addresses.modifiedBy = EntityContainerMetadata.EntityTypes.addresses.property(withName: "modifiedBy")
        }
        if !Addresses.street.isRemoved {
            Addresses.street = EntityContainerMetadata.EntityTypes.addresses.property(withName: "street")
        }
        if !Addresses.city.isRemoved {
            Addresses.city = EntityContainerMetadata.EntityTypes.addresses.property(withName: "city")
        }
        if !Addresses.zip.isRemoved {
            Addresses.zip = EntityContainerMetadata.EntityTypes.addresses.property(withName: "zip")
        }
        if !Addresses.lat.isRemoved {
            Addresses.lat = EntityContainerMetadata.EntityTypes.addresses.property(withName: "lat")
        }
        if !Addresses.long.isRemoved {
            Addresses.long = EntityContainerMetadata.EntityTypes.addresses.property(withName: "long")
        }
        if !Addresses.state.isRemoved {
            Addresses.state = EntityContainerMetadata.EntityTypes.addresses.property(withName: "state")
        }
        if !Addresses.school.isRemoved {
            Addresses.school = EntityContainerMetadata.EntityTypes.addresses.property(withName: "school")
        }
        if !Addresses.assistanceLocation.isRemoved {
            Addresses.assistanceLocation = EntityContainerMetadata.EntityTypes.addresses.property(withName: "assistanceLocation")
        }
        if !Addresses.stateStateCode.isRemoved {
            Addresses.stateStateCode = EntityContainerMetadata.EntityTypes.addresses.property(withName: "state_StateCode")
        }
        if !AssistanceLocations.id.isRemoved {
            AssistanceLocations.id = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "ID")
        }
        if !AssistanceLocations.createdAt.isRemoved {
            AssistanceLocations.createdAt = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "createdAt")
        }
        if !AssistanceLocations.createdBy.isRemoved {
            AssistanceLocations.createdBy = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "createdBy")
        }
        if !AssistanceLocations.modifiedAt.isRemoved {
            AssistanceLocations.modifiedAt = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "modifiedAt")
        }
        if !AssistanceLocations.modifiedBy.isRemoved {
            AssistanceLocations.modifiedBy = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "modifiedBy")
        }
        if !AssistanceLocations.name.isRemoved {
            AssistanceLocations.name = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "name")
        }
        if !AssistanceLocations.address.isRemoved {
            AssistanceLocations.address = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "address")
        }
        if !AssistanceLocations.locationType.isRemoved {
            AssistanceLocations.locationType = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "locationType")
        }
        if !AssistanceLocations.assistanceOfferings.isRemoved {
            AssistanceLocations.assistanceOfferings = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "assistanceOfferings")
        }
        if !AssistanceLocations.addressID.isRemoved {
            AssistanceLocations.addressID = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "address_ID")
        }
        if !AssistanceLocations.locationTypeID.isRemoved {
            AssistanceLocations.locationTypeID = EntityContainerMetadata.EntityTypes.assistanceLocations.property(withName: "locationType_ID")
        }
        if !AssistanceOfferings.id.isRemoved {
            AssistanceOfferings.id = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "ID")
        }
        if !AssistanceOfferings.createdAt.isRemoved {
            AssistanceOfferings.createdAt = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "createdAt")
        }
        if !AssistanceOfferings.modifiedAt.isRemoved {
            AssistanceOfferings.modifiedAt = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "modifiedAt")
        }
        if !AssistanceOfferings.timeFrom.isRemoved {
            AssistanceOfferings.timeFrom = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "timeFrom")
        }
        if !AssistanceOfferings.timeTo.isRemoved {
            AssistanceOfferings.timeTo = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "timeTo")
        }
        if !AssistanceOfferings.availableMon.isRemoved {
            AssistanceOfferings.availableMon = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableMon")
        }
        if !AssistanceOfferings.availableTue.isRemoved {
            AssistanceOfferings.availableTue = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableTue")
        }
        if !AssistanceOfferings.availableWed.isRemoved {
            AssistanceOfferings.availableWed = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableWed")
        }
        if !AssistanceOfferings.availableThr.isRemoved {
            AssistanceOfferings.availableThr = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableThr")
        }
        if !AssistanceOfferings.availableFri.isRemoved {
            AssistanceOfferings.availableFri = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableFri")
        }
        if !AssistanceOfferings.availableSat.isRemoved {
            AssistanceOfferings.availableSat = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableSat")
        }
        if !AssistanceOfferings.availableSun.isRemoved {
            AssistanceOfferings.availableSun = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "availableSun")
        }
        if !AssistanceOfferings.startDate.isRemoved {
            AssistanceOfferings.startDate = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "startDate")
        }
        if !AssistanceOfferings.endDate.isRemoved {
            AssistanceOfferings.endDate = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "endDate")
        }
        if !AssistanceOfferings.pickupInd.isRemoved {
            AssistanceOfferings.pickupInd = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "pickupInd")
        }
        if !AssistanceOfferings.deliveryInd.isRemoved {
            AssistanceOfferings.deliveryInd = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "deliveryInd")
        }
        if !AssistanceOfferings.virtualInd.isRemoved {
            AssistanceOfferings.virtualInd = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "virtualInd")
        }
        if !AssistanceOfferings.websiteURL.isRemoved {
            AssistanceOfferings.websiteURL = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "websiteURL")
        }
        if !AssistanceOfferings.eligiblityCategory.isRemoved {
            AssistanceOfferings.eligiblityCategory = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "eligiblityCategory")
        }
        if !AssistanceOfferings.offerDetails.isRemoved {
            AssistanceOfferings.offerDetails = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "offerDetails")
        }
        if !AssistanceOfferings.offerApproved.isRemoved {
            AssistanceOfferings.offerApproved = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "offerApproved")
        }
        if !AssistanceOfferings.assistanceLocation.isRemoved {
            AssistanceOfferings.assistanceLocation = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceLocation")
        }
        if !AssistanceOfferings.assistanceType.isRemoved {
            AssistanceOfferings.assistanceType = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceType")
        }
        if !AssistanceOfferings.assistanceSubType.isRemoved {
            AssistanceOfferings.assistanceSubType = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceSubType")
        }
        if !AssistanceOfferings.eligiblityCategoryID.isRemoved {
            AssistanceOfferings.eligiblityCategoryID = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "eligiblityCategory_ID")
        }
        if !AssistanceOfferings.assistanceLocationID.isRemoved {
            AssistanceOfferings.assistanceLocationID = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceLocation_ID")
        }
        if !AssistanceOfferings.assistanceTypeID.isRemoved {
            AssistanceOfferings.assistanceTypeID = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceType_ID")
        }
        if !AssistanceOfferings.assistanceSubTypeID.isRemoved {
            AssistanceOfferings.assistanceSubTypeID = EntityContainerMetadata.EntityTypes.assistanceOfferings.property(withName: "assistanceSubType_ID")
        }
        if !AssistanceSubTypes.id.isRemoved {
            AssistanceSubTypes.id = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "ID")
        }
        if !AssistanceSubTypes.subType.isRemoved {
            AssistanceSubTypes.subType = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "subType")
        }
        if !AssistanceSubTypes.assistanceType.isRemoved {
            AssistanceSubTypes.assistanceType = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "assistanceType")
        }
        if !AssistanceSubTypes.description.isRemoved {
            AssistanceSubTypes.description = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "description")
        }
        if !AssistanceSubTypes.assistanceTypeID.isRemoved {
            AssistanceSubTypes.assistanceTypeID = EntityContainerMetadata.EntityTypes.assistanceSubTypes.property(withName: "assistanceType_ID")
        }
        if !AssistanceTypes.id.isRemoved {
            AssistanceTypes.id = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "ID")
        }
        if !AssistanceTypes.assistanceType.isRemoved {
            AssistanceTypes.assistanceType = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "assistanceType")
        }
        if !AssistanceTypes.description.isRemoved {
            AssistanceTypes.description = EntityContainerMetadata.EntityTypes.assistanceTypes.property(withName: "description")
        }
        if !DeliveryModeTexts.locale.isRemoved {
            DeliveryModeTexts.locale = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "locale")
        }
        if !DeliveryModeTexts.name.isRemoved {
            DeliveryModeTexts.name = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "name")
        }
        if !DeliveryModeTexts.descr.isRemoved {
            DeliveryModeTexts.descr = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "descr")
        }
        if !DeliveryModeTexts.code.isRemoved {
            DeliveryModeTexts.code = EntityContainerMetadata.EntityTypes.deliveryModeTexts.property(withName: "code")
        }
        if !DeliveryModes.name.isRemoved {
            DeliveryModes.name = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "name")
        }
        if !DeliveryModes.descr.isRemoved {
            DeliveryModes.descr = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "descr")
        }
        if !DeliveryModes.code.isRemoved {
            DeliveryModes.code = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "code")
        }
        if !DeliveryModes.texts.isRemoved {
            DeliveryModes.texts = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "texts")
        }
        if !DeliveryModes.localized.isRemoved {
            DeliveryModes.localized = EntityContainerMetadata.EntityTypes.deliveryModes.property(withName: "localized")
        }
        if !DistrictOfferingAsistance.createdAt.isRemoved {
            DistrictOfferingAsistance.createdAt = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "createdAt")
        }
        if !DistrictOfferingAsistance.createdBy.isRemoved {
            DistrictOfferingAsistance.createdBy = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "createdBy")
        }
        if !DistrictOfferingAsistance.modifiedAt.isRemoved {
            DistrictOfferingAsistance.modifiedAt = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "modifiedAt")
        }
        if !DistrictOfferingAsistance.modifiedBy.isRemoved {
            DistrictOfferingAsistance.modifiedBy = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "modifiedBy")
        }
        if !DistrictOfferingAsistance.assistance.isRemoved {
            DistrictOfferingAsistance.assistance = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "assistance")
        }
        if !DistrictOfferingAsistance.district.isRemoved {
            DistrictOfferingAsistance.district = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "district")
        }
        if !DistrictOfferingAsistance.assistanceID.isRemoved {
            DistrictOfferingAsistance.assistanceID = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "assistance_ID")
        }
        if !DistrictOfferingAsistance.districtLeaid.isRemoved {
            DistrictOfferingAsistance.districtLeaid = EntityContainerMetadata.EntityTypes.districtOfferingAsistance.property(withName: "district_leaid")
        }
        if !Districts.leaid.isRemoved {
            Districts.leaid = EntityContainerMetadata.EntityTypes.districts.property(withName: "leaid")
        }
        if !Districts.name.isRemoved {
            Districts.name = EntityContainerMetadata.EntityTypes.districts.property(withName: "name")
        }
        if !Districts.state.isRemoved {
            Districts.state = EntityContainerMetadata.EntityTypes.districts.property(withName: "state")
        }
        if !Districts.school.isRemoved {
            Districts.school = EntityContainerMetadata.EntityTypes.districts.property(withName: "school")
        }
        if !Districts.stateStateCode.isRemoved {
            Districts.stateStateCode = EntityContainerMetadata.EntityTypes.districts.property(withName: "state_StateCode")
        }
        if !EligiblityCategories.id.isRemoved {
            EligiblityCategories.id = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "ID")
        }
        if !EligiblityCategories.eligibilityCategory.isRemoved {
            EligiblityCategories.eligibilityCategory = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "eligibilityCategory")
        }
        if !EligiblityCategories.description.isRemoved {
            EligiblityCategories.description = EntityContainerMetadata.EntityTypes.eligiblityCategories.property(withName: "description")
        }
        if !LocationTypes.id.isRemoved {
            LocationTypes.id = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "ID")
        }
        if !LocationTypes.locType.isRemoved {
            LocationTypes.locType = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "locType")
        }
        if !LocationTypes.description.isRemoved {
            LocationTypes.description = EntityContainerMetadata.EntityTypes.locationTypes.property(withName: "description")
        }
        if !SchoolOfferingAssistance.createdAt.isRemoved {
            SchoolOfferingAssistance.createdAt = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "createdAt")
        }
        if !SchoolOfferingAssistance.createdBy.isRemoved {
            SchoolOfferingAssistance.createdBy = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "createdBy")
        }
        if !SchoolOfferingAssistance.modifiedAt.isRemoved {
            SchoolOfferingAssistance.modifiedAt = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "modifiedAt")
        }
        if !SchoolOfferingAssistance.modifiedBy.isRemoved {
            SchoolOfferingAssistance.modifiedBy = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "modifiedBy")
        }
        if !SchoolOfferingAssistance.assistance.isRemoved {
            SchoolOfferingAssistance.assistance = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "assistance")
        }
        if !SchoolOfferingAssistance.school.isRemoved {
            SchoolOfferingAssistance.school = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "school")
        }
        if !SchoolOfferingAssistance.assistanceID.isRemoved {
            SchoolOfferingAssistance.assistanceID = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "assistance_ID")
        }
        if !SchoolOfferingAssistance.schoolID.isRemoved {
            SchoolOfferingAssistance.schoolID = EntityContainerMetadata.EntityTypes.schoolOfferingAssistance.property(withName: "school_ID")
        }
        if !SchoolOffersParameters.latitude.isRemoved {
            SchoolOffersParameters.latitude = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "LATITUDE")
        }
        if !SchoolOffersParameters.longitude.isRemoved {
            SchoolOffersParameters.longitude = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "LONGITUDE")
        }
        if !SchoolOffersParameters.distanceforsearch.isRemoved {
            SchoolOffersParameters.distanceforsearch = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "DISTANCEFORSEARCH")
        }
        if !SchoolOffersParameters.eligibilitycat.isRemoved {
            SchoolOffersParameters.eligibilitycat = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "ELIGIBILITYCAT")
        }
        if !SchoolOffersParameters.assistsubtype.isRemoved {
            SchoolOffersParameters.assistsubtype = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "ASSISTSUBTYPE")
        }
        if !SchoolOffersParameters.set.isRemoved {
            SchoolOffersParameters.set = EntityContainerMetadata.EntityTypes.schoolOffersParameters.property(withName: "Set")
        }
        if !SchoolOffersType.id.isRemoved {
            SchoolOffersType.id = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ID")
        }
        if !SchoolOffersType.timefrom.isRemoved {
            SchoolOffersType.timefrom = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "TIMEFROM")
        }
        if !SchoolOffersType.timeto.isRemoved {
            SchoolOffersType.timeto = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "TIMETO")
        }
        if !SchoolOffersType.availablemon.isRemoved {
            SchoolOffersType.availablemon = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEMON")
        }
        if !SchoolOffersType.availabletue.isRemoved {
            SchoolOffersType.availabletue = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLETUE")
        }
        if !SchoolOffersType.availablewed.isRemoved {
            SchoolOffersType.availablewed = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEWED")
        }
        if !SchoolOffersType.availablethr.isRemoved {
            SchoolOffersType.availablethr = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLETHR")
        }
        if !SchoolOffersType.availablefri.isRemoved {
            SchoolOffersType.availablefri = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLEFRI")
        }
        if !SchoolOffersType.availablesat.isRemoved {
            SchoolOffersType.availablesat = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLESAT")
        }
        if !SchoolOffersType.availablesun.isRemoved {
            SchoolOffersType.availablesun = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "AVAILABLESUN")
        }
        if !SchoolOffersType.startdate.isRemoved {
            SchoolOffersType.startdate = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STARTDATE")
        }
        if !SchoolOffersType.enddate.isRemoved {
            SchoolOffersType.enddate = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ENDDATE")
        }
        if !SchoolOffersType.name.isRemoved {
            SchoolOffersType.name = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "NAME")
        }
        if !SchoolOffersType.eligibilitycategory.isRemoved {
            SchoolOffersType.eligibilitycategory = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ELIGIBILITYCATEGORY")
        }
        if !SchoolOffersType.description.isRemoved {
            SchoolOffersType.description = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "DESCRIPTION")
        }
        if !SchoolOffersType.assistancesubtype.isRemoved {
            SchoolOffersType.assistancesubtype = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCESUBTYPE")
        }
        if !SchoolOffersType.addressId.isRemoved {
            SchoolOffersType.addressId = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ADDRESS_ID")
        }
        if !SchoolOffersType.street.isRemoved {
            SchoolOffersType.street = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STREET")
        }
        if !SchoolOffersType.city.isRemoved {
            SchoolOffersType.city = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CITY")
        }
        if !SchoolOffersType.statecode.isRemoved {
            SchoolOffersType.statecode = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "STATECODE")
        }
        if !SchoolOffersType.zip.isRemoved {
            SchoolOffersType.zip = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ZIP")
        }
        if !SchoolOffersType.lat.isRemoved {
            SchoolOffersType.lat = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LAT")
        }
        if !SchoolOffersType.long.isRemoved {
            SchoolOffersType.long = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LONG")
        }
        if !SchoolOffersType.locationId.isRemoved {
            SchoolOffersType.locationId = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATION_ID")
        }
        if !SchoolOffersType.locationtypeId.isRemoved {
            SchoolOffersType.locationtypeId = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONTYPE_ID")
        }
        if !SchoolOffersType.locationdescription.isRemoved {
            SchoolOffersType.locationdescription = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONDESCRIPTION")
        }
        if !SchoolOffersType.locationtype.isRemoved {
            SchoolOffersType.locationtype = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "LOCATIONTYPE")
        }
        if !SchoolOffersType.assistancetype.isRemoved {
            SchoolOffersType.assistancetype = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCETYPE")
        }
        if !SchoolOffersType.assistancetypedescription.isRemoved {
            SchoolOffersType.assistancetypedescription = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "ASSISTANCETYPEDESCRIPTION")
        }
        if !SchoolOffersType.pickupind.isRemoved {
            SchoolOffersType.pickupind = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "PICKUPIND")
        }
        if !SchoolOffersType.deliveryind.isRemoved {
            SchoolOffersType.deliveryind = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "DELIVERYIND")
        }
        if !SchoolOffersType.websiteurl.isRemoved {
            SchoolOffersType.websiteurl = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "WEBSITEURL")
        }
        if !SchoolOffersType.offerdetails.isRemoved {
            SchoolOffersType.offerdetails = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "OFFERDETAILS")
        }
        if !SchoolOffersType.contactname.isRemoved {
            SchoolOffersType.contactname = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTNAME")
        }
        if !SchoolOffersType.contactemail.isRemoved {
            SchoolOffersType.contactemail = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTEMAIL")
        }
        if !SchoolOffersType.contacttitle.isRemoved {
            SchoolOffersType.contacttitle = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "CONTACTTITLE")
        }
        if !SchoolOffersType.parameters.isRemoved {
            SchoolOffersType.parameters = EntityContainerMetadata.EntityTypes.schoolOffersType.property(withName: "Parameters")
        }
        if !Schools.id.isRemoved {
            Schools.id = EntityContainerMetadata.EntityTypes.schools.property(withName: "ID")
        }
        if !Schools.name.isRemoved {
            Schools.name = EntityContainerMetadata.EntityTypes.schools.property(withName: "name")
        }
        if !Schools.district.isRemoved {
            Schools.district = EntityContainerMetadata.EntityTypes.schools.property(withName: "district")
        }
        if !Schools.address.isRemoved {
            Schools.address = EntityContainerMetadata.EntityTypes.schools.property(withName: "address")
        }
        if !Schools.schoolAssistance.isRemoved {
            Schools.schoolAssistance = EntityContainerMetadata.EntityTypes.schools.property(withName: "schoolAssistance")
        }
        if !Schools.districtLeaid.isRemoved {
            Schools.districtLeaid = EntityContainerMetadata.EntityTypes.schools.property(withName: "district_leaid")
        }
        if !Schools.addressID.isRemoved {
            Schools.addressID = EntityContainerMetadata.EntityTypes.schools.property(withName: "address_ID")
        }
        if !States.stateCode.isRemoved {
            States.stateCode = EntityContainerMetadata.EntityTypes.states.property(withName: "StateCode")
        }
        if !States.name.isRemoved {
            States.name = EntityContainerMetadata.EntityTypes.states.property(withName: "Name")
        }
        if !States.fips.isRemoved {
            States.fips = EntityContainerMetadata.EntityTypes.states.property(withName: "FIPS")
        }
        if !States.district.isRemoved {
            States.district = EntityContainerMetadata.EntityTypes.states.property(withName: "district")
        }
        if !AssistanceLocationsByDistanceParameters.latitude.isRemoved {
            AssistanceLocationsByDistanceParameters.latitude = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "LATITUDE")
        }
        if !AssistanceLocationsByDistanceParameters.longitude.isRemoved {
            AssistanceLocationsByDistanceParameters.longitude = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "LONGITUDE")
        }
        if !AssistanceLocationsByDistanceParameters.distanceforsearch.isRemoved {
            AssistanceLocationsByDistanceParameters.distanceforsearch = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "DISTANCEFORSEARCH")
        }
        if !AssistanceLocationsByDistanceParameters.set.isRemoved {
            AssistanceLocationsByDistanceParameters.set = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceParameters.property(withName: "Set")
        }
        if !AssistanceLocationsByDistanceType.id.isRemoved {
            AssistanceLocationsByDistanceType.id = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "ID")
        }
        if !AssistanceLocationsByDistanceType.addressId.isRemoved {
            AssistanceLocationsByDistanceType.addressId = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "ADDRESS_ID")
        }
        if !AssistanceLocationsByDistanceType.lat.isRemoved {
            AssistanceLocationsByDistanceType.lat = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "LAT")
        }
        if !AssistanceLocationsByDistanceType.long.isRemoved {
            AssistanceLocationsByDistanceType.long = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "LONG")
        }
        if !AssistanceLocationsByDistanceType.countLoc.isRemoved {
            AssistanceLocationsByDistanceType.countLoc = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "COUNT_LOC")
        }
        if !AssistanceLocationsByDistanceType.parameters.isRemoved {
            AssistanceLocationsByDistanceType.parameters = EntityContainerMetadata.EntityTypes.assistanceLocationsByDistanceType.property(withName: "Parameters")
        }
        if !Sap4kidsParameters.param1.isRemoved {
            Sap4kidsParameters.param1 = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM1")
        }
        if !Sap4kidsParameters.param2.isRemoved {
            Sap4kidsParameters.param2 = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM2")
        }
        if !Sap4kidsParameters.param3.isRemoved {
            Sap4kidsParameters.param3 = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "PARAM3")
        }
        if !Sap4kidsParameters.set.isRemoved {
            Sap4kidsParameters.set = EntityContainerMetadata.EntityTypes.sap4kidsParameters.property(withName: "Set")
        }
        if !Sap4kidsType.id.isRemoved {
            Sap4kidsType.id = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ID")
        }
        if !Sap4kidsType.timefrom.isRemoved {
            Sap4kidsType.timefrom = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "TIMEFROM")
        }
        if !Sap4kidsType.timeto.isRemoved {
            Sap4kidsType.timeto = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "TIMETO")
        }
        if !Sap4kidsType.availablemon.isRemoved {
            Sap4kidsType.availablemon = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEMON")
        }
        if !Sap4kidsType.availabletue.isRemoved {
            Sap4kidsType.availabletue = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLETUE")
        }
        if !Sap4kidsType.availablewed.isRemoved {
            Sap4kidsType.availablewed = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEWED")
        }
        if !Sap4kidsType.availablethr.isRemoved {
            Sap4kidsType.availablethr = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLETHR")
        }
        if !Sap4kidsType.availablefri.isRemoved {
            Sap4kidsType.availablefri = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLEFRI")
        }
        if !Sap4kidsType.availablesat.isRemoved {
            Sap4kidsType.availablesat = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLESAT")
        }
        if !Sap4kidsType.availablesun.isRemoved {
            Sap4kidsType.availablesun = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "AVAILABLESUN")
        }
        if !Sap4kidsType.startdate.isRemoved {
            Sap4kidsType.startdate = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "STARTDATE")
        }
        if !Sap4kidsType.enddate.isRemoved {
            Sap4kidsType.enddate = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ENDDATE")
        }
        if !Sap4kidsType.name.isRemoved {
            Sap4kidsType.name = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "NAME")
        }
        if !Sap4kidsType.addressId.isRemoved {
            Sap4kidsType.addressId = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ADDRESS_ID")
        }
        if !Sap4kidsType.locationtypeId.isRemoved {
            Sap4kidsType.locationtypeId = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LOCATIONTYPE_ID")
        }
        if !Sap4kidsType.eligibilitycategory.isRemoved {
            Sap4kidsType.eligibilitycategory = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ELIGIBILITYCATEGORY")
        }
        if !Sap4kidsType.description.isRemoved {
            Sap4kidsType.description = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "DESCRIPTION")
        }
        if !Sap4kidsType.subtype.isRemoved {
            Sap4kidsType.subtype = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "SUBTYPE")
        }
        if !Sap4kidsType.street.isRemoved {
            Sap4kidsType.street = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "STREET")
        }
        if !Sap4kidsType.city.isRemoved {
            Sap4kidsType.city = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "CITY")
        }
        if !Sap4kidsType.zip.isRemoved {
            Sap4kidsType.zip = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "ZIP")
        }
        if !Sap4kidsType.lat.isRemoved {
            Sap4kidsType.lat = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LAT")
        }
        if !Sap4kidsType.long.isRemoved {
            Sap4kidsType.long = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "LONG")
        }
        if !Sap4kidsType.parameters.isRemoved {
            Sap4kidsType.parameters = EntityContainerMetadata.EntityTypes.sap4kidsType.property(withName: "Parameters")
        }
    }
}
