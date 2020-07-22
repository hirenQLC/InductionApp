import Foundation

struct ShiftWeekOffList : Codable {
	let shiftId : Int?
	let week_6 : Int?
	let week_5 : Int?
	let week_4 : Int?
	let week_3 : Int?
	let week_2 : Int?
	let week_1 : Int?
	let day : String?
	let status : Int?

	enum CodingKeys: String, CodingKey {

		case shiftId = "shiftId"
		case week_6 = "week_6"
		case week_5 = "week_5"
		case week_4 = "week_4"
		case week_3 = "week_3"
		case week_2 = "week_2"
		case week_1 = "week_1"
		case day = "day"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		shiftId = try values.decodeIfPresent(Int.self, forKey: .shiftId)
		week_6 = try values.decodeIfPresent(Int.self, forKey: .week_6)
		week_5 = try values.decodeIfPresent(Int.self, forKey: .week_5)
		week_4 = try values.decodeIfPresent(Int.self, forKey: .week_4)
		week_3 = try values.decodeIfPresent(Int.self, forKey: .week_3)
		week_2 = try values.decodeIfPresent(Int.self, forKey: .week_2)
		week_1 = try values.decodeIfPresent(Int.self, forKey: .week_1)
		day = try values.decodeIfPresent(String.self, forKey: .day)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
	}

}
