import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Be yourself;',
    'There is nothing better than being you always.',
    'You are beautiful and special so love yourself.'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote){
          return Text(quote);
        }).toList(),
      ),
    );
  }
}



