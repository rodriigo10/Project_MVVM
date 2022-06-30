// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hot = try? newJSONDecoder().decode(Hot.self, from: jsonData)

import Foundation

// MARK: - HotElement
struct HotElement: Codable {
    let title, hotDescription: String?
    let ingredients: [String]?
    let image: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case title
        case hotDescription = "description"
        case ingredients, image, id
    }
}

typealias Hot = [HotElement]
