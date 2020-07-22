import Foundation

struct LoginBase : Codable {
	let status : String?
	let errorCode : String?
	let errorMessage : String?
	let resultType : String?
	let result : Result?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case errorCode = "errorCode"
		case errorMessage = "errorMessage"
		case resultType = "resultType"
		case result = "result"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		errorCode = try values.decodeIfPresent(String.self, forKey: .errorCode)
		errorMessage = try values.decodeIfPresent(String.self, forKey: .errorMessage)
		resultType = try values.decodeIfPresent(String.self, forKey: .resultType)
		result = try values.decodeIfPresent(Result.self, forKey: .result)
	}

}
