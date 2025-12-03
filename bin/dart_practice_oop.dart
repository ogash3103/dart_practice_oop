import 'package:dart_practice_oop/Products/Article.dart';
final List<Article> articles = [
  Article(
    title: "COVID-19 Was a Top Cause of Death in 2020 and 2021, Even For Younger People",
    category: "Covid-19",
    date: "Dec 22, 2022",
    imageUrl: "https://example.com/covid.jpg",
  ),
  Article(
    title: "Study Finds Being 'Hangry' is a Real Thing",
    category: "Health",
    date: "Dec 22, 2022",
    imageUrl: "https://example.com/hangry.jpg",
  ),
  Article(
    title: "Why Childhood Obesity Rates Are Rising and What We Can Do",
    category: "Lifestyle",
    date: "Dec 21, 2022",
    imageUrl: "https://example.com/childhood.jpg",
  ),
];

void main() {
  final healthArticles = getArticlesByCategory("Lifestyle");

  for (var a in healthArticles) {
    print(a.title);
  }

}

List<Article> getArticlesByCategory(String category) {
  if (category == "Newest") return articles;

  return articles.where(
        (a) => a.category.toLowerCase() == category.toLowerCase(),
  ).toList();
}
