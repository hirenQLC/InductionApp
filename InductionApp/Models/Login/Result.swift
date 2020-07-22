import Foundation

struct Result : Codable {
	let accountId : Int?
	let accountLocationInterval : Int?
	let accountName : String?
	let allowAddCustOnField : Int?
	let allowCheckInCheckOutAuto : Int?
	let allowEditCustLocForAll : Int?
	let allowOfflineOperation : Int?
	let allowOfflineUser : Int?
	let allowTimeout : Int?
	let allowTimoutUser : Int?
	let appVersion : Int?
	let assignedTerritoryList : [AssignedTerritoryList]?
	let attendance_date : Int?
	let auto_punch_out_time : String?
	let auto_punch_out_type : Int?
	let checkInRadius : Int?
	let companyName : String?
	let createdOn : CreatedOn?
	let currencySymbol : String?
	let customFormImageRetivalPath : String?
	let expenseCategoryList : [ExpenseCategoryList]?
	let expenseImageRetivalPath : String?
	let gender : Int?
	let holiday : [Holiday]?
	let homLatitude : Double?
	let homeLocation : String?
	let homeLongitude : Double?
	let id : Int?
	let importErrorFileRetrivePath : String?
	let imsgrRetivalPath : String?
	let industryCategoryList : [IndustryCategoryList]?
	let isFirstLogin : Bool?
	let is_newsletter_opt_in : Int?
	let is_terms_condition_agreed : Int?
	let langitude : Double?
	let latitude : Double?
	let leaveMasterList : [LeaveMasterList]?
	let leftslider : Leftslider?
	let locationIntervalUser : Int?
	let locationPollInterval : Int?
	let mobileNo : String?
	let modifiedOn : ModifiedOn?
	let newsletter_agreed_on : Newsletter_agreed_on?
	let officeLocation : String?
	let officelangitude : Double?
	let officelatitude : Double?
	let permissionsList : [PermissionsList]?
	let plan : String?
	let purposeCategoryList : [PurposeCategoryList]?
	let qs_active : Int?
	let qs_stepNo : Int?
	let role : Int?
	let role_list : [Role_list]?
	let shiftDetails : ShiftDetails?
	let shiftWeekOffList : [ShiftWeekOffList]?
	let teamId : Int?
	let terms_condition_agreed_on : Terms_condition_agreed_on?
	let userAccuracy : Int?
	let userDesignation : String?
	let userEmailAddress : String?
	let userFirstName : String?
	let userId : Int?
	let userLastName : String?
	let userPassword : String?
	let userRating : Int?
	let userToken : String?
	let working_hours : Int?

	enum CodingKeys: String, CodingKey {

		case accountId = "accountId"
		case accountLocationInterval = "accountLocationInterval"
		case accountName = "accountName"
		case allowAddCustOnField = "allowAddCustOnField"
		case allowCheckInCheckOutAuto = "allowCheckInCheckOutAuto"
		case allowEditCustLocForAll = "allowEditCustLocForAll"
		case allowOfflineOperation = "allowOfflineOperation"
		case allowOfflineUser = "allowOfflineUser"
		case allowTimeout = "allowTimeout"
		case allowTimoutUser = "allowTimoutUser"
		case appVersion = "appVersion"
		case assignedTerritoryList = "assignedTerritoryList"
		case attendance_date = "attendance_date"
		case auto_punch_out_time = "auto_punch_out_time"
		case auto_punch_out_type = "auto_punch_out_type"
		case checkInRadius = "checkInRadius"
		case companyName = "companyName"
		case createdOn = "createdOn"
		case currencySymbol = "currencySymbol"
		case customFormImageRetivalPath = "customFormImageRetivalPath"
		case expenseCategoryList = "expenseCategoryList"
		case expenseImageRetivalPath = "expenseImageRetivalPath"
		case gender = "gender"
		case holiday = "holiday"
		case homLatitude = "homLatitude"
		case homeLocation = "homeLocation"
		case homeLongitude = "homeLongitude"
		case id = "id"
		case importErrorFileRetrivePath = "importErrorFileRetrivePath"
		case imsgrRetivalPath = "imsgrRetivalPath"
		case industryCategoryList = "industryCategoryList"
		case isFirstLogin = "isFirstLogin"
		case is_newsletter_opt_in = "is_newsletter_opt_in"
		case is_terms_condition_agreed = "is_terms_condition_agreed"
		case langitude = "langitude"
		case latitude = "latitude"
		case leaveMasterList = "leaveMasterList"
		case leftslider = "leftslider"
		case locationIntervalUser = "locationIntervalUser"
		case locationPollInterval = "locationPollInterval"
		case mobileNo = "mobileNo"
		case modifiedOn = "modifiedOn"
		case newsletter_agreed_on = "newsletter_agreed_on"
		case officeLocation = "officeLocation"
		case officelangitude = "officelangitude"
		case officelatitude = "officelatitude"
		case permissionsList = "permissionsList"
		case plan = "plan"
		case purposeCategoryList = "purposeCategoryList"
		case qs_active = "qs_active"
		case qs_stepNo = "qs_stepNo"
		case role = "role"
		case role_list = "role_list"
		case shiftDetails = "shiftDetails"
		case shiftWeekOffList = "shiftWeekOffList"
		case teamId = "teamId"
		case terms_condition_agreed_on = "terms_condition_agreed_on"
		case userAccuracy = "userAccuracy"
		case userDesignation = "userDesignation"
		case userEmailAddress = "userEmailAddress"
		case userFirstName = "userFirstName"
		case userId = "userId"
		case userLastName = "userLastName"
		case userPassword = "userPassword"
		case userRating = "userRating"
		case userToken = "userToken"
		case working_hours = "working_hours"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		accountId = try values.decodeIfPresent(Int.self, forKey: .accountId)
		accountLocationInterval = try values.decodeIfPresent(Int.self, forKey: .accountLocationInterval)
		accountName = try values.decodeIfPresent(String.self, forKey: .accountName)
		allowAddCustOnField = try values.decodeIfPresent(Int.self, forKey: .allowAddCustOnField)
		allowCheckInCheckOutAuto = try values.decodeIfPresent(Int.self, forKey: .allowCheckInCheckOutAuto)
		allowEditCustLocForAll = try values.decodeIfPresent(Int.self, forKey: .allowEditCustLocForAll)
		allowOfflineOperation = try values.decodeIfPresent(Int.self, forKey: .allowOfflineOperation)
		allowOfflineUser = try values.decodeIfPresent(Int.self, forKey: .allowOfflineUser)
		allowTimeout = try values.decodeIfPresent(Int.self, forKey: .allowTimeout)
		allowTimoutUser = try values.decodeIfPresent(Int.self, forKey: .allowTimoutUser)
		appVersion = try values.decodeIfPresent(Int.self, forKey: .appVersion)
		assignedTerritoryList = try values.decodeIfPresent([AssignedTerritoryList].self, forKey: .assignedTerritoryList)
		attendance_date = try values.decodeIfPresent(Int.self, forKey: .attendance_date)
		auto_punch_out_time = try values.decodeIfPresent(String.self, forKey: .auto_punch_out_time)
		auto_punch_out_type = try values.decodeIfPresent(Int.self, forKey: .auto_punch_out_type)
		checkInRadius = try values.decodeIfPresent(Int.self, forKey: .checkInRadius)
		companyName = try values.decodeIfPresent(String.self, forKey: .companyName)
		createdOn = try values.decodeIfPresent(CreatedOn.self, forKey: .createdOn)
		currencySymbol = try values.decodeIfPresent(String.self, forKey: .currencySymbol)
		customFormImageRetivalPath = try values.decodeIfPresent(String.self, forKey: .customFormImageRetivalPath)
		expenseCategoryList = try values.decodeIfPresent([ExpenseCategoryList].self, forKey: .expenseCategoryList)
		expenseImageRetivalPath = try values.decodeIfPresent(String.self, forKey: .expenseImageRetivalPath)
		gender = try values.decodeIfPresent(Int.self, forKey: .gender)
		holiday = try values.decodeIfPresent([Holiday].self, forKey: .holiday)
		homLatitude = try values.decodeIfPresent(Double.self, forKey: .homLatitude)
		homeLocation = try values.decodeIfPresent(String.self, forKey: .homeLocation)
		homeLongitude = try values.decodeIfPresent(Double.self, forKey: .homeLongitude)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		importErrorFileRetrivePath = try values.decodeIfPresent(String.self, forKey: .importErrorFileRetrivePath)
		imsgrRetivalPath = try values.decodeIfPresent(String.self, forKey: .imsgrRetivalPath)
		industryCategoryList = try values.decodeIfPresent([IndustryCategoryList].self, forKey: .industryCategoryList)
		isFirstLogin = try values.decodeIfPresent(Bool.self, forKey: .isFirstLogin)
		is_newsletter_opt_in = try values.decodeIfPresent(Int.self, forKey: .is_newsletter_opt_in)
		is_terms_condition_agreed = try values.decodeIfPresent(Int.self, forKey: .is_terms_condition_agreed)
		langitude = try values.decodeIfPresent(Double.self, forKey: .langitude)
		latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
		leaveMasterList = try values.decodeIfPresent([LeaveMasterList].self, forKey: .leaveMasterList)
		leftslider = try values.decodeIfPresent(Leftslider.self, forKey: .leftslider)
		locationIntervalUser = try values.decodeIfPresent(Int.self, forKey: .locationIntervalUser)
		locationPollInterval = try values.decodeIfPresent(Int.self, forKey: .locationPollInterval)
		mobileNo = try values.decodeIfPresent(String.self, forKey: .mobileNo)
		modifiedOn = try values.decodeIfPresent(ModifiedOn.self, forKey: .modifiedOn)
		newsletter_agreed_on = try values.decodeIfPresent(Newsletter_agreed_on.self, forKey: .newsletter_agreed_on)
		officeLocation = try values.decodeIfPresent(String.self, forKey: .officeLocation)
		officelangitude = try values.decodeIfPresent(Double.self, forKey: .officelangitude)
		officelatitude = try values.decodeIfPresent(Double.self, forKey: .officelatitude)
		permissionsList = try values.decodeIfPresent([PermissionsList].self, forKey: .permissionsList)
		plan = try values.decodeIfPresent(String.self, forKey: .plan)
		purposeCategoryList = try values.decodeIfPresent([PurposeCategoryList].self, forKey: .purposeCategoryList)
		qs_active = try values.decodeIfPresent(Int.self, forKey: .qs_active)
		qs_stepNo = try values.decodeIfPresent(Int.self, forKey: .qs_stepNo)
		role = try values.decodeIfPresent(Int.self, forKey: .role)
		role_list = try values.decodeIfPresent([Role_list].self, forKey: .role_list)
		shiftDetails = try values.decodeIfPresent(ShiftDetails.self, forKey: .shiftDetails)
		shiftWeekOffList = try values.decodeIfPresent([ShiftWeekOffList].self, forKey: .shiftWeekOffList)
		teamId = try values.decodeIfPresent(Int.self, forKey: .teamId)
		terms_condition_agreed_on = try values.decodeIfPresent(Terms_condition_agreed_on.self, forKey: .terms_condition_agreed_on)
		userAccuracy = try values.decodeIfPresent(Int.self, forKey: .userAccuracy)
		userDesignation = try values.decodeIfPresent(String.self, forKey: .userDesignation)
		userEmailAddress = try values.decodeIfPresent(String.self, forKey: .userEmailAddress)
		userFirstName = try values.decodeIfPresent(String.self, forKey: .userFirstName)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		userLastName = try values.decodeIfPresent(String.self, forKey: .userLastName)
		userPassword = try values.decodeIfPresent(String.self, forKey: .userPassword)
		userRating = try values.decodeIfPresent(Int.self, forKey: .userRating)
		userToken = try values.decodeIfPresent(String.self, forKey: .userToken)
		working_hours = try values.decodeIfPresent(Int.self, forKey: .working_hours)
	}

}
