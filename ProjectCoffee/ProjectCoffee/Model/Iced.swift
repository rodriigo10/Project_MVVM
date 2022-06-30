// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iced = try? newJSONDecoder().decode(Iced.self, from: jsonData)

import Foundation

// MARK: - IcedElement
struct IcedElement: Codable {
    let title, icedDescription: String?
    let ingredients: [String]?
    let image: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case title
        case icedDescription = "description"
        case ingredients, image, id
    }
}

typealias Iced = [IcedElement]
