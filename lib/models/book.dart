


class Book{
  final String title;
  final String details;
  final String ratings;
  final String genre;
  final String imageUrl;

  Book({
    required this.title,
    required this.details,
    required this.genre,
    required this.ratings,
    required this.imageUrl,
});
  factory Book.fromJson(Map<String,dynamic>jSon)=> Book(title: jSon['title'],
        details: jSon['details'],
        genre: jSon['genre'],
        ratings: jSon['ratings'],
        imageUrl: jSon['imageUrl']
    );
}
List<Book> books=[
  Book(
       title: 'Half Girlfriend',
       details: 'Half Girlfriend is an Indian English coming of age, young adult romance novel by Indian author Chetan Bhagat.The novel, set in rural Bihar, New Delhi, Patna, and New York, is the story of a Bihari boy in quest of winning over the girl he loves.',
       genre: 'Fiction, Romance',
       ratings: '⭐⭐⭐⭐',
       imageUrl: 'assets/images/gf.jpg'
  ),
  Book(
      title: 'The Subtle Art of Not Giving a F*ck',
      details: 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life is a 2016 nonfiction self-help book by American blogger and author Mark Manson.',
      genre: 'Self-Helping',
      ratings: '⭐⭐⭐⭐',
      imageUrl: 'assets/images/sub.png'
  ),
  Book(
      title: 'The Richest Man in Babylon',
      details: 'The Richest Man in Babylon is a 1926 book by George S. Clason that dispenses financial advice through a collection of parables set 4,097 years ago in ancient Babylon. The book remains in print almost a century after the parables were originally published, and is regarded as a classic of personal financial advice.',
      genre: 'Non-Fiction',
      ratings: '⭐⭐⭐⭐',
      imageUrl: 'assets/images/rich.jpg'
  )

];