enum StatusApi {
  chargement,
  error,
  ok
}


class Movie {
  final int id;
  final String title;
  final String overview;
  final DateTime releaseDate;
  final String imageUrl;
  final double vote;
  Movie(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.overview,
      required this.releaseDate,
      required this.vote});


//Méthode static Retourne une liste de Movie depuis l'API
  static List<Movie> moviesFromApi(Map<String, dynamic> body) {
    List<Movie> movieList = [];
    // Le body API nous retourne 4 noeud dont un qui est intéressant : results. Ce noeud est une liste d’élément dynamic
    List<dynamic> results = body["results"];
    results.forEach((value) {
      Movie movie = Movie(
          id: value["id"],
          title: value["title"],
          overview: value["overview"],
          imageUrl: value["poster_path"],
          releaseDate: DateTime.parse(value["release_date"]),
          vote: double.tryParse(value["vote_average"].toString())!);
      movieList.add(movie);
    });
    return movieList;
  }
}
