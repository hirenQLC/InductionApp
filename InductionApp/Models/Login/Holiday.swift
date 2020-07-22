import Foundation

struct Holiday : Codable {
	let holidayType : Int?
	let holidaysId : Int?
	let holidayOn : String?
	let isActive : Bool?
	let holidayName : String?
	let status : Int?

	enum CodingKeys: String, CodingKey {

		case holidayType = "holidayType"
		case holidaysId = "holidaysId"
		case holidayOn = "holidayOn"
		case isActive = "isActive"
		case holidayName = "holidayName"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		holidayType = try values.decodeIfPresent(Int.self, forKey: .holidayType)
		holidaysId = try values.decodeIfPresent(Int.self, forKey: .holidaysId)
		holidayOn = try values.decodeIfPresent(String.self, forKey: .holidayOn)
		isActive = try values.decodeIfPresent(Bool.self, forKey: .isActive)
		holidayName = try values.decodeIfPresent(String.self, forKey: .holidayName)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
	}

}
