import Foundation

public enum MuscleGroup: String, Codable, CaseIterable {
    case arms = "ARMS",
         back = "BACK",
         core = "CORE",
         chest = "CHEST",
         shoulders = "SHOULDERS",
         legs = "LEGS"
    
    public var name: String {
        switch self {
        case .arms: return "arms"
        case .back: return "back"
        case .core: return "core"
        case .chest: return "chest"
        case .shoulders: return "shoulders"
        case .legs: return "legs"
        }
    }
}
