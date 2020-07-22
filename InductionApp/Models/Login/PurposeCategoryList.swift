import Foundation

struct PurposeCategoryList : Codable {
	let purpose : String?
	let id : Int?
	let isActive : Bool?

	enum CodingKeys: String, CodingKey {

		case purpose = "purpose"
		case id = "id"
		case isActive = "isActive"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		purpose = try values.decodeIfPresent(String.self, forKey: .purpose)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		isActive = try values.decodeIfPresent(Bool.self, forKey: .isActive)
	}

}
