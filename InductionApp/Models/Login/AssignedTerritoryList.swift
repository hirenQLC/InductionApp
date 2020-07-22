import Foundation

struct AssignedTerritoryList : Codable {
	let hasChild : Int?
	let parentCategory : Int?
	let id : Int?
	let updatedOn : UpdatedOn?
	let categoryName : String?

	enum CodingKeys: String, CodingKey {

		case hasChild = "hasChild"
		case parentCategory = "parentCategory"
		case id = "id"
		case updatedOn = "updatedOn"
		case categoryName = "categoryName"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		hasChild = try values.decodeIfPresent(Int.self, forKey: .hasChild)
		parentCategory = try values.decodeIfPresent(Int.self, forKey: .parentCategory)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		updatedOn = try values.decodeIfPresent(UpdatedOn.self, forKey: .updatedOn)
		categoryName = try values.decodeIfPresent(String.self, forKey: .categoryName)
	}

}
