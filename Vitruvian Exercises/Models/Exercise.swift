import Foundation

public struct ExerciseSummary: Codable {
    public var equipment: Set<Equipment>
    public var muscles: Set<MuscleGroup>
    
    public init(equipment: Set<Equipment> = [], muscles: Set<MuscleGroup> = []) {
        self.equipment = equipment
        self.muscles = muscles
    }
}

public struct Exercise: Codable, Identifiable {
    public init(
        id: String? = nil,
        name: String? = nil,
        description: String? = nil,
        videos: Array<ExerciseVideo>? = nil,
        summary: ExerciseSummary? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.videos = videos
        self.summary = summary
    }

    public var id: String?

    public var name: String?
    public var description: String?
    public var videos: Array<ExerciseVideo>?

    public var summary: ExerciseSummary?
}
