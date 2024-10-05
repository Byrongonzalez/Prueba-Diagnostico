import 'package:evaluaciondiagnostico/map_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  bool _hotels = false;
  bool _restaurants = false;
  bool _parks = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busqueda'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Buscar',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: _hotels,
                onChanged: (value) {
                  setState(() {
                    _hotels = value!;
                  });
                },
              ),
              Text('Hoteles'),
              SizedBox(width: 20),
              Checkbox(
                value: _restaurants,
                onChanged: (value) {
                  setState(() {
                    _restaurants = value!;
                  });
                },
              ),
              Text('Restaurantes'),
              SizedBox(width: 20),
              Checkbox(
                value: _parks,
                onChanged: (value) {
                  setState(() {
                    _parks = value!;
                  });
                },
              ),
              Text('Parques'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen()),
              );
            },
            child: Text('Buscar'),
          ),
        ],
      ),
    );
  }
}