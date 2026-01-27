class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String? githubUrl;
  final String? liveUrl;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
    this.githubUrl,
    this.liveUrl,
  });
}

List<Project> getSampleProjects() {
  return [
    Project(
      title: 'E-Commerce App',
      description: 'Full-featured shopping app with cart and payment integration',
      technologies: ['Flutter', 'Firebase', 'Stripe', 'Provider'],
      githubUrl: 'https://github.com/username/ecommerce',
    ),
    Project(
      title: 'Weather App',
      description: 'Real-time weather forecasts with beautiful animations',
      technologies: ['Flutter', 'OpenWeather API', 'Animations'],
      githubUrl: 'https://github.com/username/weather',
    ),
  ];
}