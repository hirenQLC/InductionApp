import Foundation

struct AttendanceData : Codable {
	let adminReason : String?
	let appVersion : String?
	let applyRequest : Int?
	let attendanceDetails : String?
	let attendanceId : Int?
	let attendanceReason : String?
	let attendanceType : Int?
	let attendanceTypeReason : String?
	let autoPunchOut : Bool?
	let comments : String?
	let createdOn : CreatedOn?
	let isChangeRequested : Int?
	let isRejected : Bool?
	let modifiedOn : Int?
	let newPunchInTime : Int?
	let newPunchOutTime : Int?
	let punchInDate : String?
	let punchInLatitude : Double?
	let punchInLocation : String?
	let punchInLocationNotFoundReason : String?
	let punchInLongitude : Double?
	let punchInTime : Int?
	let punchOutDate : String?
	let punchOutLatitude : Double?
	let punchOutLocation : String?
	let punchOutLocationNotFoundReason : String?
	let punchOutLongitude : Double?
	let punchOutTime : Int?
	let recordState : Int?
	let sPunchInTime : String?
	let sPunchOutTime : String?
	let shiftId : Int?
	let tempAttendanceId : String?
	let timeZoneOffset : Int?
	let userId : Int?
	let worked_for : Int?

	enum CodingKeys: String, CodingKey {

		case adminReason = "adminReason"
		case appVersion = "appVersion"
		case applyRequest = "applyRequest"
		case attendanceDetails = "attendanceDetails"
		case attendanceId = "attendanceId"
		case attendanceReason = "attendanceReason"
		case attendanceType = "attendanceType"
		case attendanceTypeReason = "attendanceTypeReason"
		case autoPunchOut = "autoPunchOut"
		case comments = "comments"
		case createdOn = "createdOn"
		case isChangeRequested = "isChangeRequested"
		case isRejected = "isRejected"
		case modifiedOn = "modifiedOn"
		case newPunchInTime = "newPunchInTime"
		case newPunchOutTime = "newPunchOutTime"
		case punchInDate = "punchInDate"
		case punchInLatitude = "punchInLatitude"
		case punchInLocation = "punchInLocation"
		case punchInLocationNotFoundReason = "punchInLocationNotFoundReason"
		case punchInLongitude = "punchInLongitude"
		case punchInTime = "punchInTime"
		case punchOutDate = "punchOutDate"
		case punchOutLatitude = "punchOutLatitude"
		case punchOutLocation = "punchOutLocation"
		case punchOutLocationNotFoundReason = "punchOutLocationNotFoundReason"
		case punchOutLongitude = "punchOutLongitude"
		case punchOutTime = "punchOutTime"
		case recordState = "recordState"
		case sPunchInTime = "sPunchInTime"
		case sPunchOutTime = "sPunchOutTime"
		case shiftId = "shiftId"
		case tempAttendanceId = "tempAttendanceId"
		case timeZoneOffset = "timeZoneOffset"
		case userId = "userId"
		case worked_for = "worked_for"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		adminReason = try values.decodeIfPresent(String.self, forKey: .adminReason)
		appVersion = try values.decodeIfPresent(String.self, forKey: .appVersion)
		applyRequest = try values.decodeIfPresent(Int.self, forKey: .applyRequest)
		attendanceDetails = try values.decodeIfPresent(String.self, forKey: .attendanceDetails)
		attendanceId = try values.decodeIfPresent(Int.self, forKey: .attendanceId)
		attendanceReason = try values.decodeIfPresent(String.self, forKey: .attendanceReason)
		attendanceType = try values.decodeIfPresent(Int.self, forKey: .attendanceType)
		attendanceTypeReason = try values.decodeIfPresent(String.self, forKey: .attendanceTypeReason)
		autoPunchOut = try values.decodeIfPresent(Bool.self, forKey: .autoPunchOut)
		comments = try values.decodeIfPresent(String.self, forKey: .comments)
		createdOn = try values.decodeIfPresent(CreatedOn.self, forKey: .createdOn)
		isChangeRequested = try values.decodeIfPresent(Int.self, forKey: .isChangeRequested)
		isRejected = try values.decodeIfPresent(Bool.self, forKey: .isRejected)
		modifiedOn = try values.decodeIfPresent(Int.self, forKey: .modifiedOn)
		newPunchInTime = try values.decodeIfPresent(Int.self, forKey: .newPunchInTime)
		newPunchOutTime = try values.decodeIfPresent(Int.self, forKey: .newPunchOutTime)
		punchInDate = try values.decodeIfPresent(String.self, forKey: .punchInDate)
		punchInLatitude = try values.decodeIfPresent(Double.self, forKey: .punchInLatitude)
		punchInLocation = try values.decodeIfPresent(String.self, forKey: .punchInLocation)
		punchInLocationNotFoundReason = try values.decodeIfPresent(String.self, forKey: .punchInLocationNotFoundReason)
		punchInLongitude = try values.decodeIfPresent(Double.self, forKey: .punchInLongitude)
		punchInTime = try values.decodeIfPresent(Int.self, forKey: .punchInTime)
		punchOutDate = try values.decodeIfPresent(String.self, forKey: .punchOutDate)
		punchOutLatitude = try values.decodeIfPresent(Double.self, forKey: .punchOutLatitude)
		punchOutLocation = try values.decodeIfPresent(String.self, forKey: .punchOutLocation)
		punchOutLocationNotFoundReason = try values.decodeIfPresent(String.self, forKey: .punchOutLocationNotFoundReason)
		punchOutLongitude = try values.decodeIfPresent(Double.self, forKey: .punchOutLongitude)
		punchOutTime = try values.decodeIfPresent(Int.self, forKey: .punchOutTime)
		recordState = try values.decodeIfPresent(Int.self, forKey: .recordState)
		sPunchInTime = try values.decodeIfPresent(String.self, forKey: .sPunchInTime)
		sPunchOutTime = try values.decodeIfPresent(String.self, forKey: .sPunchOutTime)
		shiftId = try values.decodeIfPresent(Int.self, forKey: .shiftId)
		tempAttendanceId = try values.decodeIfPresent(String.self, forKey: .tempAttendanceId)
		timeZoneOffset = try values.decodeIfPresent(Int.self, forKey: .timeZoneOffset)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		worked_for = try values.decodeIfPresent(Int.self, forKey: .worked_for)
	}

}
