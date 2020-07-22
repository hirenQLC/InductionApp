import Foundation

struct IndustryCategoryList : Codable {
	let id : Int?
	let isActive : Bool?
	let categoryName : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case isActive = "isActive"
		case categoryName = "categoryName"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		isActive = try values.decodeIfPresent(Bool.self, forKey: .isActive)
		categoryName = try values.decodeIfPresent(String.self, forKey: .categoryName)
	}

}
