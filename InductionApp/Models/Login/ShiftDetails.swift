import Foundation

struct ShiftDetails : Codable {
	let first_half : String?
	let graceTime : String?
	let halfDayStartAfter : String?
	let isActive : Int?
	let is_system_generated : Int?
	let leftEarlyStartBefore : String?
	let minTimefullday : String?
	let minTimehalfday : String?
	let minTimeleftearly : String?
	let shiftEndTime : String?
	let shiftId : Int?
	let shiftName : String?
	let shiftStartTime : String?
	let shiftType : Int?

	enum CodingKeys: String, CodingKey {

		case first_half = "first_half"
		case graceTime = "graceTime"
		case halfDayStartAfter = "halfDayStartAfter"
		case isActive = "isActive"
		case is_system_generated = "is_system_generated"
		case leftEarlyStartBefore = "leftEarlyStartBefore"
		case minTimefullday = "minTimefullday"
		case minTimehalfday = "minTimehalfday"
		case minTimeleftearly = "minTimeleftearly"
		case shiftEndTime = "shiftEndTime"
		case shiftId = "shiftId"
		case shiftName = "shiftName"
		case shiftStartTime = "shiftStartTime"
		case shiftType = "shiftType"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		first_half = try values.decodeIfPresent(String.self, forKey: .first_half)
		graceTime = try values.decodeIfPresent(String.self, forKey: .graceTime)
		halfDayStartAfter = try values.decodeIfPresent(String.self, forKey: .halfDayStartAfter)
		isActive = try values.decodeIfPresent(Int.self, forKey: .isActive)
		is_system_generated = try values.decodeIfPresent(Int.self, forKey: .is_system_generated)
		leftEarlyStartBefore = try values.decodeIfPresent(String.self, forKey: .leftEarlyStartBefore)
		minTimefullday = try values.decodeIfPresent(String.self, forKey: .minTimefullday)
		minTimehalfday = try values.decodeIfPresent(String.self, forKey: .minTimehalfday)
		minTimeleftearly = try values.decodeIfPresent(String.self, forKey: .minTimeleftearly)
		shiftEndTime = try values.decodeIfPresent(String.self, forKey: .shiftEndTime)
		shiftId = try values.decodeIfPresent(Int.self, forKey: .shiftId)
		shiftName = try values.decodeIfPresent(String.self, forKey: .shiftName)
		shiftStartTime = try values.decodeIfPresent(String.self, forKey: .shiftStartTime)
		shiftType = try values.decodeIfPresent(Int.self, forKey: .shiftType)
	}

}
