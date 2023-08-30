import 'dart:io';

import 'author.dart';
import 'book.dart';

void main(){
  Author author =Author("Dr Seuss", "Best Sellers");

  Book book1 = Book("The Cat in Hat", 1957, author,6);
  Book book2 = Book("The Lorax", 1971, author,8);
  Book book3 = Book("Horton Hears a Who", 1954, author,7);
  List<Book> booksList = [book1, book2, book3];
    
  Author author1 = Author("Roald Dahl", "Best Sellers");

  Book book4 = Book("Charlie and the Chocolate Factory", 1960, author1,6);
  Book book5 = Book("David Copperfield", 1850, author1,5);
  Book book6 = Book("Matilda", 1988, author1,3);
  List<Book> bookList = [book4, book5, book6];

  List<Author> authors = [author,author1];
  
  for (var a in authors) {
    print(a.name);
  }
  print("Choose an author : ");
  String choice = stdin.readLineSync()!;
  switch (choice) {
    case "Dr Seuss":
      for (var b in booksList) {
        print("Book ${booksList.indexOf(b) + 1} title: ${b.title}\nYear Published: ${b.yearPublished}\nPrice: ${b.price}");
        print("-----------------------------------");
      }
      break;
    case "Roald Dahl":
      for (var i in bookList) {
        print("Book ${bookList.indexOf(i) + 1}} title: ${i.title}\nYear Published: ${i.yearPublished}\nAuthor name: ${i.author?.name}\nPrice: ${i.price}");
        print("-----------------------------------");
      }
      break;
    default:
      print("Invalid selection");
      break;
  }

}