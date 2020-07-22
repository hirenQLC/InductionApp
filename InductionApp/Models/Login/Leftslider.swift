import Foundation

struct Leftslider : Codable {
	let accountName : String?
	let allowAddCustOnField : Int?
	let allowCheckInCheckOutAuto : Int?
	let allowEditCustLocForAll : Int?
	let allowOfflineOperation : Int?
	let allowTimeout : Int?
	let appVersion : Int?
	let appointmentId : Int?
	let attendanceData : AttendanceData?
	let attendanceId : Int?
	let attendanceStatus : Bool?
	let attendanceTiemout : AttendanceTiemout?
	let attendance_date : Int?
	let auto_punch_out_time : String?
	let auto_punch_out_type : Int?
	let checkInRadius : Int?
	let customerBatch : Int?
	let customerId : Int?
	let hasSubordinates : Int?
	let homeLatitude : Double?
	let homeLocation : String?
	let homeLongitude : Double?
	let isEnforce : Bool?
	let lastCheckInDateTime : Int?
	let lastCheckOutDateTime : Int?
	let lastPunchInDateTime : Int?
	let lastPunchOutDateTime : Int?
	let lastcheckInTime : String?
	let lastcheckOutTime : String?
	let lastpunchInTime : String?
	let lastpunchOutTime : String?
	let locationInterval : String?
	let officeLatitude : Double?
	let officeLocation : String?
	let officeLongitude : Double?
	let permissionsList : [String]?
	let punchDate : String?
	let punchInTime : String?
	let punchOutTime : String?
	let role_list : [String]?
	let shiftDetails : ShiftDetails?
	let territoryCount : Int?
	let territoryLastUpdated : TerritoryLastUpdated?
	let todayAppointments : Int?
	let unreadMessagesCount : Int?
	let userAccuracy : Int?
	let userRole : Int?
	let versionCode : Int?
	let versionName : String?
	let working_hours : Int?

	enum CodingKeys: String, CodingKey {

		case accountName = "accountName"
		case allowAddCustOnField = "allowAddCustOnField"
		case allowCheckInCheckOutAuto = "allowCheckInCheckOutAuto"
		case allowEditCustLocForAll = "allowEditCustLocForAll"
		case allowOfflineOperation = "allowOfflineOperation"
		case allowTimeout = "allowTimeout"
		case appVersion = "appVersion"
		case appointmentId = "appointmentId"
		case attendanceData = "attendanceData"
		case attendanceId = "attendanceId"
		case attendanceStatus = "attendanceStatus"
		case attendanceTiemout = "attendanceTiemout"
		case attendance_date = "attendance_date"
		case auto_punch_out_time = "auto_punch_out_time"
		case auto_punch_out_type = "auto_punch_out_type"
		case checkInRadius = "checkInRadius"
		case customerBatch = "customerBatch"
		case customerId = "customerId"
		case hasSubordinates = "hasSubordinates"
		case homeLatitude = "homeLatitude"
		case homeLocation = "homeLocation"
		case homeLongitude = "homeLongitude"
		case isEnforce = "isEnforce"
		case lastCheckInDateTime = "lastCheckInDateTime"
		case lastCheckOutDateTime = "lastCheckOutDateTime"
		case lastPunchInDateTime = "lastPunchInDateTime"
		case lastPunchOutDateTime = "lastPunchOutDateTime"
		case lastcheckInTime = "lastcheckInTime"
		case lastcheckOutTime = "lastcheckOutTime"
		case lastpunchInTime = "lastpunchInTime"
		case lastpunchOutTime = "lastpunchOutTime"
		case locationInterval = "locationInterval"
		case officeLatitude = "officeLatitude"
		case officeLocation = "officeLocation"
		case officeLongitude = "officeLongitude"
		case permissionsList = "permissionsList"
		case punchDate = "punchDate"
		case punchInTime = "punchInTime"
		case punchOutTime = "punchOutTime"
		case role_list = "role_list"
		case shiftDetails = "shiftDetails"
		case territoryCount = "territoryCount"
		case territoryLastUpdated = "territoryLastUpdated"
		case todayAppointments = "todayAppointments"
		case unreadMessagesCount = "unreadMessagesCount"
		case userAccuracy = "userAccuracy"
		case userRole = "userRole"
		case versionCode = "versionCode"
		case versionName = "versionName"
		case working_hours = "working_hours"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		accountName = try values.decodeIfPresent(String.self, forKey: .accountName)
		allowAddCustOnField = try values.decodeIfPresent(Int.self, forKey: .allowAddCustOnField)
		allowCheckInCheckOutAuto = try values.decodeIfPresent(Int.self, forKey: .allowCheckInCheckOutAuto)
		allowEditCustLocForAll = try values.decodeIfPresent(Int.self, forKey: .allowEditCustLocForAll)
		allowOfflineOperation = try values.decodeIfPresent(Int.self, forKey: .allowOfflineOperation)
		allowTimeout = try values.decodeIfPresent(Int.self, forKey: .allowTimeout)
		appVersion = try values.decodeIfPresent(Int.self, forKey: .appVersion)
		appointmentId = try values.decodeIfPresent(Int.self, forKey: .appointmentId)
		attendanceData = try values.decodeIfPresent(AttendanceData.self, forKey: .attendanceData)
		attendanceId = try values.decodeIfPresent(Int.self, forKey: .attendanceId)
		attendanceStatus = try values.decodeIfPresent(Bool.self, forKey: .attendanceStatus)
		attendanceTiemout = try values.decodeIfPresent(AttendanceTiemout.self, forKey: .attendanceTiemout)
		attendance_date = try values.decodeIfPresent(Int.self, forKey: .attendance_date)
		auto_punch_out_time = try values.decodeIfPresent(String.self, forKey: .auto_punch_out_time)
		auto_punch_out_type = try values.decodeIfPresent(Int.self, forKey: .auto_punch_out_type)
		checkInRadius = try values.decodeIfPresent(Int.self, forKey: .checkInRadius)
		customerBatch = try values.decodeIfPresent(Int.self, forKey: .customerBatch)
		customerId = try values.decodeIfPresent(Int.self, forKey: .customerId)
		hasSubordinates = try values.decodeIfPresent(Int.self, forKey: .hasSubordinates)
		homeLatitude = try values.decodeIfPresent(Double.self, forKey: .homeLatitude)
		homeLocation = try values.decodeIfPresent(String.self, forKey: .homeLocation)
		homeLongitude = try values.decodeIfPresent(Double.self, forKey: .homeLongitude)
		isEnforce = try values.decodeIfPresent(Bool.self, forKey: .isEnforce)
		lastCheckInDateTime = try values.decodeIfPresent(Int.self, forKey: .lastCheckInDateTime)
		lastCheckOutDateTime = try values.decodeIfPresent(Int.self, forKey: .lastCheckOutDateTime)
		lastPunchInDateTime = try values.decodeIfPresent(Int.self, forKey: .lastPunchInDateTime)
		lastPunchOutDateTime = try values.decodeIfPresent(Int.self, forKey: .lastPunchOutDateTime)
		lastcheckInTime = try values.decodeIfPresent(String.self, forKey: .lastcheckInTime)
		lastcheckOutTime = try values.decodeIfPresent(String.self, forKey: .lastcheckOutTime)
		lastpunchInTime = try values.decodeIfPresent(String.self, forKey: .lastpunchInTime)
		lastpunchOutTime = try values.decodeIfPresent(String.self, forKey: .lastpunchOutTime)
		locationInterval = try values.decodeIfPresent(String.self, forKey: .locationInterval)
		officeLatitude = try values.decodeIfPresent(Double.self, forKey: .officeLatitude)
		officeLocation = try values.decodeIfPresent(String.self, forKey: .officeLocation)
		officeLongitude = try values.decodeIfPresent(Double.self, forKey: .officeLongitude)
		permissionsList = try values.decodeIfPresent([String].self, forKey: .permissionsList)
		punchDate = try values.decodeIfPresent(String.self, forKey: .punchDate)
		punchInTime = try values.decodeIfPresent(String.self, forKey: .punchInTime)
		punchOutTime = try values.decodeIfPresent(String.self, forKey: .punchOutTime)
		role_list = try values.decodeIfPresent([String].self, forKey: .role_list)
		shiftDetails = try values.decodeIfPresent(ShiftDetails.self, forKey: .shiftDetails)
		territoryCount = try values.decodeIfPresent(Int.self, forKey: .territoryCount)
		territoryLastUpdated = try values.decodeIfPresent(TerritoryLastUpdated.self, forKey: .territoryLastUpdated)
		todayAppointments = try values.decodeIfPresent(Int.self, forKey: .todayAppointments)
		unreadMessagesCount = try values.decodeIfPresent(Int.self, forKey: .unreadMessagesCount)
		userAccuracy = try values.decodeIfPresent(Int.self, forKey: .userAccuracy)
		userRole = try values.decodeIfPresent(Int.self, forKey: .userRole)
		versionCode = try values.decodeIfPresent(Int.self, forKey: .versionCode)
		versionName = try values.decodeIfPresent(String.self, forKey: .versionName)
		working_hours = try values.decodeIfPresent(Int.self, forKey: .working_hours)
	}

}
