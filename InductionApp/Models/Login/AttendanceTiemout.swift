import Foundation

struct AttendanceTiemout : Codable {
	let createdOn : CreatedOn?
	let id : Int?
	let latitude : Double?
	let location : String?
	let longitude : Double?
	let serialNumber : Int?
	let startTimeout : StartTimeout?
	let status : Int?
	let stopTimeout : StopTimeout?
	let strIntervalTime : String?
	let strTimeoutDate : String?
	let timeOutTempId : String?
	let totalIntervalTime : String?
	let userId : Int?
	let versionCode : Int?

	enum CodingKeys: String, CodingKey {

		case createdOn = "createdOn"
		case id = "id"
		case latitude = "latitude"
		case location = "location"
		case longitude = "longitude"
		case serialNumber = "serialNumber"
		case startTimeout = "startTimeout"
		case status = "status"
		case stopTimeout = "stopTimeout"
		case strIntervalTime = "strIntervalTime"
		case strTimeoutDate = "strTimeoutDate"
		case timeOutTempId = "timeOutTempId"
		case totalIntervalTime = "totalIntervalTime"
		case userId = "userId"
		case versionCode = "versionCode"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		createdOn = try values.decodeIfPresent(CreatedOn.self, forKey: .createdOn)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
		serialNumber = try values.decodeIfPresent(Int.self, forKey: .serialNumber)
		startTimeout = try values.decodeIfPresent(StartTimeout.self, forKey: .startTimeout)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
		stopTimeout = try values.decodeIfPresent(StopTimeout.self, forKey: .stopTimeout)
		strIntervalTime = try values.decodeIfPresent(String.self, forKey: .strIntervalTime)
		strTimeoutDate = try values.decodeIfPresent(String.self, forKey: .strTimeoutDate)
		timeOutTempId = try values.decodeIfPresent(String.self, forKey: .timeOutTempId)
		totalIntervalTime = try values.decodeIfPresent(String.self, forKey: .totalIntervalTime)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		versionCode = try values.decodeIfPresent(Int.self, forKey: .versionCode)
	}

}
