
import Foundation
struct AttendenceResult : Codable {
	let myteamUserList : [MyteamUserList]?

	enum CodingKeys: String, CodingKey {

		case myteamUserList = "MyteamUserList"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		myteamUserList = try values.decodeIfPresent([MyteamUserList].self, forKey: .myteamUserList)
	}

}
