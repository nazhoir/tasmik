class TajwidList {
  final String level;
  final String title;
  final String explain;
  final String example;

  final String? ininya;
  final List<IsiList>? listisi;

  TajwidList({
    required this.level,
    required this.title,
    required this.explain,
    required this.example,
    this.listisi,
    this.ininya,
  });
}

class IsiList {
  final String title;
  IsiList({
    required this.title,
  });
}

var tajwidList = [
  TajwidList(
    level: "Awwaliyah",
    title: "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
    explain: "",
    example: "",
    listisi: [
      IsiList(title: "apa Saja 1"),
      IsiList(title: "apa Saja 2"),
      IsiList(title: "apa Saja 3"),
    ],
  ),
  TajwidList(
    level: "Awwaliyah",
    title: "Kosong 1",
    explain: "",
    example: "",
    listisi: [
      IsiList(title: "apa Saja 1"),
      IsiList(title: "apa Saja 2"),
      IsiList(title: "apa Saja 3"),
    ],
  ),
  TajwidList(
    level: "Awwaliyah",
    title: "Kosong 2",
    explain: "",
    example: "",
    listisi: [
      IsiList(title: "apa Saja 1"),
      IsiList(title: "apa Saja 2"),
      IsiList(title: "apa Saja 3"),
    ],
  ),
  TajwidList(
    level: "Awwaliyah",
    title: "Kosong 3",
    explain: "",
    example: "",
    listisi: [
      IsiList(title: "apa Saja 1"),
      IsiList(title: "apa Saja 2"),
      IsiList(title: "apa Saja 3"),
    ],
  ),
  TajwidList(
    level: "Awwaliyah",
    title: "Kosong 4",
    explain: "",
    example: "",
    listisi: [
      IsiList(title: "apa Saja 1"),
      IsiList(title: "apa Saja 2"),
      IsiList(title: "apa Saja 3"),
    ],
  ),
];
