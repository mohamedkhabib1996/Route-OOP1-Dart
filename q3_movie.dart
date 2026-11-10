class Movie {
  String title;
  String studio;
  String rating;

  // Omitting rating uses the second-constructor behavior (default: PG).
  Movie(this.title, this.studio, [this.rating = 'PG']);

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];

    for (Movie movie in movies) {
      if (movie.rating.contains('PG')) {
        pgMovies.add(movie);
      }
    }

    return pgMovies;
  }
}

void main() {
  Movie casinoRoyale = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie familyMovie = Movie('Family Movie', 'ABC Studios');
  Movie actionMovie = Movie('Action Movie', 'XYZ Studios', 'R');

  print('Movie: ${casinoRoyale.title}');
  print('Studio: ${casinoRoyale.studio}');
  print('Rating: ${casinoRoyale.rating}');
  print('Default movie rating: ${familyMovie.rating}');

  List<Movie> movies = [casinoRoyale, familyMovie, actionMovie];
  List<Movie> pgMovies = Movie.getPG(movies);

  print('Movies with PG in their rating:');
  for (Movie movie in pgMovies) {
    print('${movie.title} (${movie.rating})');
  }
}
