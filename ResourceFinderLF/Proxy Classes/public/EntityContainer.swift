// # Proxy Compiler 20.3.0-6b3997-20200324

import Foundation
import SAPOData

open class EntityContainer<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = EntityContainerMetadata.document
    }

    open func fetchAddresses(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [Addresses] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Addresses.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.addresses), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAddresses(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([Addresses]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAddresses(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAddresses1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Addresses {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Addresses>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.addresses), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAddresses1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Addresses?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAddresses1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAddresses1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Addresses {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAddresses1(matching: var_query.withKey(Addresses.key(id: id)), headers: headers, options: options)
    }

    open func fetchAddresses1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Addresses?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAddresses1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocations(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AssistanceLocations] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AssistanceLocations.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.assistanceLocations), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAssistanceLocations(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AssistanceLocations]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocations(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocations1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceLocations {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AssistanceLocations>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.assistanceLocations), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAssistanceLocations1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceLocations?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocations1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocations1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceLocations {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAssistanceLocations1(matching: var_query.withKey(AssistanceLocations.key(id: id)), headers: headers, options: options)
    }

    open func fetchAssistanceLocations1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceLocations?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocations1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocationsByDistance(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AssistanceLocationsByDistanceParameters] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AssistanceLocationsByDistanceParameters.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.assistanceLocationsByDistance), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAssistanceLocationsByDistance(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AssistanceLocationsByDistanceParameters]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocationsByDistance(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocationsByDistanceParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceLocationsByDistanceParameters {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AssistanceLocationsByDistanceParameters>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.assistanceLocationsByDistance), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAssistanceLocationsByDistanceParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceLocationsByDistanceParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocationsByDistanceParameters(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceLocationsByDistanceParametersWithKey(latitude: Double?, longitude: Double?, distanceforsearch: Int?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceLocationsByDistanceParameters {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAssistanceLocationsByDistanceParameters(matching: var_query.withKey(AssistanceLocationsByDistanceParameters.key(latitude: latitude, longitude: longitude, distanceforsearch: distanceforsearch)), headers: headers, options: options)
    }

    open func fetchAssistanceLocationsByDistanceParametersWithKey(latitude: Double?, longitude: Double?, distanceforsearch: Int?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceLocationsByDistanceParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceLocationsByDistanceParametersWithKey(latitude: latitude, longitude: longitude, distanceforsearch: distanceforsearch, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceOfferings(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AssistanceOfferings] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AssistanceOfferings.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.assistanceOfferings), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAssistanceOfferings(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AssistanceOfferings]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceOfferings(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceOfferings1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceOfferings {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AssistanceOfferings>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.assistanceOfferings), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAssistanceOfferings1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceOfferings?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceOfferings1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceOfferings1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceOfferings {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAssistanceOfferings1(matching: var_query.withKey(AssistanceOfferings.key(id: id)), headers: headers, options: options)
    }

    open func fetchAssistanceOfferings1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceOfferings?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceOfferings1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceSubTypes(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AssistanceSubTypes] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AssistanceSubTypes.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.assistanceSubTypes), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAssistanceSubTypes(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AssistanceSubTypes]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceSubTypes(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceSubTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceSubTypes {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AssistanceSubTypes>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.assistanceSubTypes), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAssistanceSubTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceSubTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceSubTypes1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceSubTypes1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceSubTypes {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAssistanceSubTypes1(matching: var_query.withKey(AssistanceSubTypes.key(id: id)), headers: headers, options: options)
    }

    open func fetchAssistanceSubTypes1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceSubTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceSubTypes1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceTypes(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AssistanceTypes] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AssistanceTypes.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.assistanceTypes), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAssistanceTypes(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AssistanceTypes]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceTypes(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceTypes {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AssistanceTypes>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.assistanceTypes), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAssistanceTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceTypes1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAssistanceTypes1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AssistanceTypes {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAssistanceTypes1(matching: var_query.withKey(AssistanceTypes.key(id: id)), headers: headers, options: options)
    }

    open func fetchAssistanceTypes1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AssistanceTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAssistanceTypes1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModeTexts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [DeliveryModeTexts] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try DeliveryModeTexts.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.deliveryModeTexts), headers: var_headers, options: var_options).entityList())
    }

    open func fetchDeliveryModeTexts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([DeliveryModeTexts]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModeTexts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModeTexts1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DeliveryModeTexts {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<DeliveryModeTexts>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.deliveryModeTexts), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchDeliveryModeTexts1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DeliveryModeTexts?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModeTexts1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModeTexts1WithKey(locale: String?, code: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DeliveryModeTexts {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchDeliveryModeTexts1(matching: var_query.withKey(DeliveryModeTexts.key(locale: locale, code: code)), headers: headers, options: options)
    }

    open func fetchDeliveryModeTexts1WithKey(locale: String?, code: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DeliveryModeTexts?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModeTexts1WithKey(locale: locale, code: code, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModes(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [DeliveryModes] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try DeliveryModes.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.deliveryModes), headers: var_headers, options: var_options).entityList())
    }

    open func fetchDeliveryModes(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([DeliveryModes]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModes(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DeliveryModes {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<DeliveryModes>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.deliveryModes), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchDeliveryModes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DeliveryModes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModes1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDeliveryModes1WithKey(code: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DeliveryModes {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchDeliveryModes1(matching: var_query.withKey(DeliveryModes.key(code: code)), headers: headers, options: options)
    }

    open func fetchDeliveryModes1WithKey(code: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DeliveryModes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDeliveryModes1WithKey(code: code, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistrictOfferingAsistance(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [DistrictOfferingAsistance] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try DistrictOfferingAsistance.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.districtOfferingAsistance), headers: var_headers, options: var_options).entityList())
    }

    open func fetchDistrictOfferingAsistance(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([DistrictOfferingAsistance]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistrictOfferingAsistance(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistrictOfferingAsistance1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DistrictOfferingAsistance {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<DistrictOfferingAsistance>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.districtOfferingAsistance), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchDistrictOfferingAsistance1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DistrictOfferingAsistance?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistrictOfferingAsistance1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistrictOfferingAsistance1WithKey(assistanceID: GuidValue?, districtLeaid: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> DistrictOfferingAsistance {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchDistrictOfferingAsistance1(matching: var_query.withKey(DistrictOfferingAsistance.key(assistanceID: assistanceID, districtLeaid: districtLeaid)), headers: headers, options: options)
    }

    open func fetchDistrictOfferingAsistance1WithKey(assistanceID: GuidValue?, districtLeaid: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (DistrictOfferingAsistance?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistrictOfferingAsistance1WithKey(assistanceID: assistanceID, districtLeaid: districtLeaid, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistricts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [Districts] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Districts.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.districts), headers: var_headers, options: var_options).entityList())
    }

    open func fetchDistricts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([Districts]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistricts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistricts1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Districts {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Districts>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.districts), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchDistricts1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Districts?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistricts1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchDistricts1WithKey(leaid: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Districts {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchDistricts1(matching: var_query.withKey(Districts.key(leaid: leaid)), headers: headers, options: options)
    }

    open func fetchDistricts1WithKey(leaid: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Districts?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchDistricts1WithKey(leaid: leaid, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchEligiblityCategories(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [EligiblityCategories] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try EligiblityCategories.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.eligiblityCategories), headers: var_headers, options: var_options).entityList())
    }

    open func fetchEligiblityCategories(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([EligiblityCategories]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchEligiblityCategories(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchEligiblityCategories1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> EligiblityCategories {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<EligiblityCategories>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.eligiblityCategories), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchEligiblityCategories1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (EligiblityCategories?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchEligiblityCategories1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchEligiblityCategories1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> EligiblityCategories {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchEligiblityCategories1(matching: var_query.withKey(EligiblityCategories.key(id: id)), headers: headers, options: options)
    }

    open func fetchEligiblityCategories1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (EligiblityCategories?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchEligiblityCategories1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLocationTypes(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [LocationTypes] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try LocationTypes.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.locationTypes), headers: var_headers, options: var_options).entityList())
    }

    open func fetchLocationTypes(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([LocationTypes]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLocationTypes(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLocationTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> LocationTypes {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<LocationTypes>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.locationTypes), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchLocationTypes1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (LocationTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLocationTypes1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLocationTypes1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> LocationTypes {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchLocationTypes1(matching: var_query.withKey(LocationTypes.key(id: id)), headers: headers, options: options)
    }

    open func fetchLocationTypes1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (LocationTypes?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLocationTypes1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSap4kids(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [Sap4kidsParameters] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Sap4kidsParameters.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.sap4kids), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSap4kids(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([Sap4kidsParameters]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSap4kids(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSap4kidsParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Sap4kidsParameters {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Sap4kidsParameters>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.sap4kids), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSap4kidsParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Sap4kidsParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSap4kidsParameters(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSap4kidsParametersWithKey(param1: Double?, param2: Double?, param3: Int?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Sap4kidsParameters {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSap4kidsParameters(matching: var_query.withKey(Sap4kidsParameters.key(param1: param1, param2: param2, param3: param3)), headers: headers, options: options)
    }

    open func fetchSap4kidsParametersWithKey(param1: Double?, param2: Double?, param3: Int?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Sap4kidsParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSap4kidsParametersWithKey(param1: param1, param2: param2, param3: param3, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOfferingAssistance(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [SchoolOfferingAssistance] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try SchoolOfferingAssistance.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.schoolOfferingAssistance), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSchoolOfferingAssistance(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([SchoolOfferingAssistance]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOfferingAssistance(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOfferingAssistance1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SchoolOfferingAssistance {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<SchoolOfferingAssistance>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.schoolOfferingAssistance), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSchoolOfferingAssistance1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SchoolOfferingAssistance?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOfferingAssistance1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOfferingAssistance1WithKey(assistanceID: GuidValue?, schoolID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SchoolOfferingAssistance {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSchoolOfferingAssistance1(matching: var_query.withKey(SchoolOfferingAssistance.key(assistanceID: assistanceID, schoolID: schoolID)), headers: headers, options: options)
    }

    open func fetchSchoolOfferingAssistance1WithKey(assistanceID: GuidValue?, schoolID: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SchoolOfferingAssistance?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOfferingAssistance1WithKey(assistanceID: assistanceID, schoolID: schoolID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOffers(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [SchoolOffersParameters] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try SchoolOffersParameters.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.schoolOffers), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSchoolOffers(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([SchoolOffersParameters]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOffers(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOffersParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SchoolOffersParameters {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<SchoolOffersParameters>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.schoolOffers), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSchoolOffersParameters(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SchoolOffersParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOffersParameters(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchoolOffersParametersWithKey(latitude: Double?, longitude: Double?, distanceforsearch: Int?, eligibilitycat: String?, assistsubtype: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SchoolOffersParameters {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSchoolOffersParameters(matching: var_query.withKey(SchoolOffersParameters.key(latitude: latitude, longitude: longitude, distanceforsearch: distanceforsearch, eligibilitycat: eligibilitycat, assistsubtype: assistsubtype)), headers: headers, options: options)
    }

    open func fetchSchoolOffersParametersWithKey(latitude: Double?, longitude: Double?, distanceforsearch: Int?, eligibilitycat: String?, assistsubtype: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SchoolOffersParameters?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchoolOffersParametersWithKey(latitude: latitude, longitude: longitude, distanceforsearch: distanceforsearch, eligibilitycat: eligibilitycat, assistsubtype: assistsubtype, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchools(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [Schools] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Schools.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.schools), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSchools(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([Schools]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchools(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchools1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Schools {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Schools>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.schools), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSchools1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Schools?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchools1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSchools1WithKey(id: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Schools {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSchools1(matching: var_query.withKey(Schools.key(id: id)), headers: headers, options: options)
    }

    open func fetchSchools1WithKey(id: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Schools?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchSchools1WithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchStates(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [States] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try States.array(from: self.executeQuery(var_query.fromDefault(EntityContainerMetadata.EntitySets.states), headers: var_headers, options: var_options).entityList())
    }

    open func fetchStates(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([States]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchStates(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchStates1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> States {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<States>.from(self.executeQuery(query.fromDefault(EntityContainerMetadata.EntitySets.states), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchStates1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (States?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchStates1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchStates1WithKey(stateCode: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> States {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchStates1(matching: var_query.withKey(States.key(stateCode: stateCode)), headers: headers, options: options)
    }

    open func fetchStates1WithKey(stateCode: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (States?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchStates1WithKey(stateCode: stateCode, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open override var metadataLock: MetadataLock {
        return EntityContainerMetadata.lock
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadataWithLock(service: self, fetcher: nil, options: EntityContainerMetadataParser.options, mergeAction: { EntityContainerMetadataChanges.merge(metadata: self.metadata) })
        }
    }
}
