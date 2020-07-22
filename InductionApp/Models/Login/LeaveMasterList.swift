import Foundation

struct LeaveMasterList : Codable {
	let isFile_upload_enable : Int?
	let duration_leave_days : Int?
	let leaveType : String?
	let active : Bool?
	let isFile_upload_enable_days : Int?
	let max_consecutive_leave : Double?
	let leaveTypeId : Int?
	let leave_btn_weekends : Int?
	let submission_of_application_before : Int?
	let leave_btn_holiday : Int?
	let status : Int?

	enum CodingKeys: String, CodingKey {

		case isFile_upload_enable = "isFile_upload_enable"
		case duration_leave_days = "duration_leave_days"
		case leaveType = "leaveType"
		case active = "active"
		case isFile_upload_enable_days = "isFile_upload_enable_days"
		case max_consecutive_leave = "max_consecutive_leave"
		case leaveTypeId = "leaveTypeId"
		case leave_btn_weekends = "leave_btn_weekends"
		case submission_of_application_before = "submission_of_application_before"
		case leave_btn_holiday = "leave_btn_holiday"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		isFile_upload_enable = try values.decodeIfPresent(Int.self, forKey: .isFile_upload_enable)
		duration_leave_days = try values.decodeIfPresent(Int.self, forKey: .duration_leave_days)
		leaveType = try values.decodeIfPresent(String.self, forKey: .leaveType)
		active = try values.decodeIfPresent(Bool.self, forKey: .active)
		isFile_upload_enable_days = try values.decodeIfPresent(Int.self, forKey: .isFile_upload_enable_days)
		max_consecutive_leave = try values.decodeIfPresent(Double.self, forKey: .max_consecutive_leave)
		leaveTypeId = try values.decodeIfPresent(Int.self, forKey: .leaveTypeId)
		leave_btn_weekends = try values.decodeIfPresent(Int.self, forKey: .leave_btn_weekends)
		submission_of_application_before = try values.decodeIfPresent(Int.self, forKey: .submission_of_application_before)
		leave_btn_holiday = try values.decodeIfPresent(Int.self, forKey: .leave_btn_holiday)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
	}

}
