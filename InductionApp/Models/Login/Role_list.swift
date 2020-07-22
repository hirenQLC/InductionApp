import Foundation

struct Role_list : Codable {
	let roleId : Int?
	let roleName : String?

	enum CodingKeys: String, CodingKey {

		case roleId = "roleId"
		case roleName = "roleName"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		roleId = try values.decodeIfPresent(Int.self, forKey: .roleId)
		roleName = try values.decodeIfPresent(String.self, forKey: .roleName)
	}

}
