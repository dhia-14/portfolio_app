class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String? githubUrl;
  final String? demoUrl;
  final String? imageUrl;
  final int priority; // 1-3 for display order

  Project({
    required this.title,
    required this.description,
    required this.technologies,
    this.githubUrl,
    this.demoUrl,
    this.imageUrl,
    this.priority = 3,
  });
}

// Sample projects data
List<Project> getSampleProjects() {
  return [
    Project(
      title: 'Movie Recommender',
      description: 'A movie reccomendation web site using IMDB API,',
      technologies: ['React'],
      githubUrl: 'https://github.com/dhia-14/movie-recommender',
      priority: 2,
    ),
    Project(
      title: 'Tic Tac Toe online',
      description: 'An online tic-tac-toe game with real-time updates, ',
      technologies: ['Kotlin', 'Firebase'],
      githubUrl: 'https://github.com/dhia-14/Tic-Tac-Toe-online',
      priority: 3,
    ),
    Project(
      title: 'Authentication page ',
      description: 'Authentication page made with kotlin',
      technologies: ['Kotlin', 'Firebase'],
      githubUrl: 'https://github.com/dhia-14/page-d-authetification',
      priority: 1,
    ),
    Project(
      title: 'Portfolio App',
      description: 'An application that describes my portfolio',
      technologies: ['Flutter'],
      githubUrl: 'https://github.com/dhia-14/portfolio_app',
      priority: 2,
    ),
  ];
}