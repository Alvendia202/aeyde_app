import 'package:flutter/material.dart';

abstract class SearchPage extends SearchDelegate {
  List<String> searchTerms= [
    'Aurora',
    'Benz',
    'Carolina',
    'Deim',
    'Franko',
  ];
  @override
  List<Widget> buildActions (BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          query= '';
        }
      ),
    ];
  }

  @override
  Widget buildLeading (BuildContext context){
    return IconButton(
       icon: Icon(Icons.arrow_back),
       onPressed: (){
        close(context,null);
       },
      );
  }

  Widget buildResult (BuildContext context) {
    List<String> matchQuery = [];
    for (var products in searchTerms){
      if (products.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(products); 
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    ); 
  }
}

@override
Widget buildSuggestions (BuildContext context){
 List<String> matchQuery = [];
    var searchTerms;
    for (var products in searchTerms){
      var query;
      if (products.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(products); 
      } 
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
      return ListTile(
        title: Text (result),
        );
      },
    );
  }