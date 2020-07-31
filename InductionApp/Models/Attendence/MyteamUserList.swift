
import Foundation
struct MyteamUserList : Codable {
	let userProfilePic : String?
	let userPercentage : Double?
	let userId : Int?
	let username : String?

	enum CodingKeys: String, CodingKey {

		case userProfilePic = "userProfilePic"
		case userPercentage = "userPercentage"
		case userId = "userId"
		case username = "username"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		userProfilePic = try values.decodeIfPresent(String.self, forKey: .userProfilePic)
		userPercentage = try values.decodeIfPresent(Double.self, forKey: .userPercentage)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		username = try values.decodeIfPresent(String.self, forKey: .username)
	}

}
