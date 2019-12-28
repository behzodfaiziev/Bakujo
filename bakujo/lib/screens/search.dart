import 'package:flutter/material.dart';
import 'package:material_search/material_search.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final _names =  [
    'Кулоб',
    'Dushanbe',
    'Khudjand',
    'Farkhor',
    'Khorog',
    "Vose"
    "Khatlon"

  ];
    return Container(
      child: Material(
          child: new MaterialSearch<String>(
            placeholder: 'Поиск',
            results: _names.map((String v) => new MaterialSearchResult<String>(
              icon: Icons.location_city,
              value: v,
              text: "$v",
            )).toList(),
            filter: (dynamic value, String criteria) {
              return value.toLowerCase().trim()
                .contains(new RegExp(r'' + criteria.toLowerCase().trim() + ''));
            },
            onSelect: (dynamic value) => Navigator.of(context).pop(value),
            onSubmit: (String value) => Navigator.of(context).pop(value),
          ),
    ));
  }
}