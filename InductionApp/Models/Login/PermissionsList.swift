import Foundation

struct PermissionsList : Codable {
	let module : Int?
	let permissions : Int?

	enum CodingKeys: String, CodingKey {

		case module = "module"
		case permissions = "permissions"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		module = try values.decodeIfPresent(Int.self, forKey: .module)
		permissions = try values.decodeIfPresent(Int.self, forKey: .permissions)
	}

}
