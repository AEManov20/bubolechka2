import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german, bulgarian, english and french added as last value
const labels = [
  [
    "1",
    "Obst",
    "плодове",
    "vegetables",
    "légumes",
    "verdure",
    "vihannekset",
    "legumes"
  ],
  ["2", "Farben", "цветове", "colors", "couleurs", "colori", "värit", "cores"],
  [
    "3",
    "Moebel",
    "мебели",
    "furniture",
    "meubles",
    "mobili",
    "huonekalut",
    "móveis"
  ],
  [
    "4",
    "Sachen",
    "дрехи",
    "clothes",
    "vêtements",
    "vestiti",
    "vaatteet",
    "roupas"
  ],
  [
    "5",
    "Spielzeug",
    "играчки",
    "toys",
    "jouets",
    "giocattoli",
    "lelut",
    "brinquedos"
  ],
  [
    "6",
    "Tiere",
    "животни",
    "animals",
    "animaux",
    "animali",
    "eläimet",
    "animais"
  ],
  [
    "7",
    "Wilde Tiere",
    "диви животни",
    "wild animals",
    "animaux sauvages",
    "animali selvatici",
    "villieläimet",
    "animais selvagens"
  ],
  ["8", "Zahlen", "цифри", "digits", "chiffres", "cifre", "numerot", "dígitos"],
  ["9", "Wetter", "времето", "weather", "le temps", "tempo", "sää", "tempo"],
  [
    "10",
    "Zu Hause",
    "вкъщи",
    "at home",
    "à la maison",
    "a casa",
    "kotona",
    "em casa"
  ],
  [
    "11",
    "Natur",
    "природа",
    "nature",
    "nature",
    "natura",
    "luonto",
    "natureza"
  ],
  ["12", "Im Meer", "морето", "sea", "mer", "mare", "meri", "mar"],
  [
    "13",
    "Am Strand",
    "на плажа",
    "on the beach",
    "sur la plage",
    "in spiaggia",
    "rannalla",
    "na praia"
  ],
  ["14", "Sport", "спорт", "sport", "sport", "sport", "urheilu", "esporte"],
  ["15", "Stadt", "град", "city", "ville", "città", "kaupunki", "cidade"],
  [
    "16",
    "Berufe",
    "професии",
    "professions",
    "métiers",
    "professioni",
    "ammatit",
    "profissões"
  ],
  [
    "17",
    "Fahrzeuge",
    "транспрорт",
    "transport",
    "transport",
    "trasporto",
    "liikenne",
    "transporte"
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
        'bg': categoryLabels[2],
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'fr': categoryLabels[4],
        'it': categoryLabels[5],
        'fi': categoryLabels[6],
        'br': categoryLabels[7]
      });
}).toList();
