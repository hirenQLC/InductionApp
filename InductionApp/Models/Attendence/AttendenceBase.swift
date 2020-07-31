
import Foundation
struct AttendenceBase : Codable {
	let resultType : String?
	let errorCode : String?
	let status : String?
	let result : AttendenceResult?
	let errorMessage : String?

	enum CodingKeys: String, CodingKey {

		case resultType = "resultType"
		case errorCode = "errorCode"
		case status = "status"
		case result = "result"
		case errorMessage = "errorMessage"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		resultType = try values.decodeIfPresent(String.self, forKey: .resultType)
		errorCode = try values.decodeIfPresent(String.self, forKey: .errorCode)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		result = try values.decodeIfPresent(AttendenceResult.self, forKey: .result)
		errorMessage = try values.decodeIfPresent(String.self, forKey: .errorMessage)
	}

}
