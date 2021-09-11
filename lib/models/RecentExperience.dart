class RecentWorkExperienceList {
  final String position, company, workstart,description1,description2,description3,description4,description5;
  final int id;

  RecentWorkExperienceList({this.id, this.position, this.company, this.workstart, this.description1, this.description2, this.description3, this.description4 ,this.description5});
}

// Demo List of my works
List<RecentWorkExperienceList> recentWorksExperiencelist = [
  RecentWorkExperienceList(
    id: 1,
    position: "Software Developer",
    company: "TechDeveloper  -Surat, Gujarat",
    workstart: "JUN 2019 - DEC 2019",
    description1: "My primary programming languages were Java and Dart.",
    description2: "I have to solve application issues by clarifying the concern of the customer, identify the cause of the problem.",
    description3: "In addition, I used new technologies and tools to boost the performance of the application.",
    description4: "Gathering reviews from users regarding application and if there is some problem I have to debug and solve that problem.",
    description5: "Moreover, I learned basic ReactNative, NodeJS, JavaScript.",
  ),
];
