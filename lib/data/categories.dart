import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german, bulgarian, english and french added as last value
const labels = [
  ["1", "Obst", "плодове", "vegetables", "légumes", "verdure", "vihannekset"],
  ["2", "Farben", "цветове", "colors", "couleurs", "colori", "värit"],
  ["3", "Moebel", "мебели", "furniture", "meubles", "mobili", "huonekalut"],
  ["4", "Sachen", "дрехи", "clothes", "vêtements", "vestiti", "vaatteet"],
  ["5", "Spielzeug", "играчки", "toys", "jouets", "giocattoli", "lelut"],
  ["6", "Tiere", "животни", "animals", "animaux", "animali", "eläimet"],
  [
    "7",
    "Wilde Tiere",
    "диви животни",
    "wild animals",
    "animaux sauvages",
    "animali selvatici",
    "villieläimet"
  ],
  ["8", "Zahlen", "цифри", "digits", "chiffres", "cifre", "numerot"],
  ["9", "Wetter", "времето", "weather", "le temps", "tempo", "sää"],
  ["10", "Zu Hause", "вкъщи", "at home", "à la maison", "a casa", "kotona"],
  ["11", "Natur", "природа", "nature", "nature", "natura", "luonto"],
  ["12", "Im Meer", "морето", "sea", "mer", "mare", "meri"],
  [
    "13",
    "Am Strand",
    "на плажа",
    "on the beach",
    "sur la plage",
    "in spiaggia",
    "rannalla"
  ],
  ["14", "Sport", "спорт", "sport", "sport", "sport", "urheilu"],
  ["15", "Stadt", "град", "city", "ville", "città", "kaupunki"],
  [
    "16",
    "Berufe",
    "професии",
    "professions",
    "métiers",
    "professioni",
    "ammatit"
  ],
  [
    "17",
    "Fahrzeuge",
    "транспрорт",
    "transport",
    "transport",
    "trasporto",
    "liikenne"
  ],
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'fr': categoryLabels[4],
        'it': categoryLabels[5],
        'fi': categoryLabels[6]
      });
}).toList();
