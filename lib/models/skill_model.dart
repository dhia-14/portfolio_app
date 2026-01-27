class Skill {
  final String name;
  final int level; // 0-100 percentage

  Skill({
    required this.name,
    required this.level,
  });
}

// Helper function to get sample skills
List<Skill> getSampleSkills() {
  return [
    Skill(name: 'Flutter', level: 90),
    Skill(name: 'Dart', level: 85),
    Skill(name: 'Firebase', level: 80),
    Skill(name: 'UI/UX Design', level: 75),
    Skill(name: 'API Integration', level: 85),
    Skill(name: 'State Management', level: 80),
  ];
}