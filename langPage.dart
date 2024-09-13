import 'package:flutter/material.dart';

class LangPage extends StatefulWidget {
  @override
  _LangPageState createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  // Define a list of languages and their corresponding flags
  List<LanguageOption> languages = [

    LanguageOption('United States', 'English', '🇺🇸'),
    LanguageOption('India', 'English', '🇮🇳'),
    LanguageOption('Sri Lanka', 'Tamil', '🇱🇰'),
    LanguageOption('Sri Lanka', 'Sinhala', '🇱🇰'),

  ];

  String? selectedLanguage = 'united states';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              languages[index].flag,
              style: TextStyle(fontSize: 24),
            ),
            title: Text('${languages[index].country} (${languages[index].language})'),
            trailing: Radio<String>(
              value: languages[index].country,
              groupValue: selectedLanguage,
              onChanged: (String? value) {
                setState(() {
                  selectedLanguage = value;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class LanguageOption {
  final String country;
  final String language;
  final String flag;

  LanguageOption(this.country, this.language, this.flag);
}
