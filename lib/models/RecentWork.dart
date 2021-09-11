class RecentWork {
  final String description, category, title,lin;
  final int id;

  RecentWork({this.id, this.description, this.category, this.title, this.lin});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Fitness Application",
    category: "Android App",
    /*image: "assets/images/work_1.png",*/
    description: "Muscle Monster is a Gym Application. Which have some major features which gym app should have. Such as This Application have three panels Admin, User, Trainer. Moreover, this app listed all the types of Exercises and also shows steps and video of that exercise. Furthermore, User can chat with Trainer as well as he/she can booked appointment with trainer for in-person meeting. In addition to that, User can Sell/Buy old Gym equipments.",
    lin: "https://github.com/rohanjariwala03/Muscle-Monster---Fitness-Application"
  ),
  RecentWork(
    id: 2,
    title: "E-commerce Application",
    category: "Flutter",
    description: "E-commerce App named as Bags World is cross platform flutter Application. This App based on two application first is Admin App and Second is User App. In this app user can show different type of bags. User have to SignUp/Login. If user already login one time then he/she will redirected to HomePage. On the Admin Side, He can add new Bags, also view all the users and listed bags. ",
    lin: "https://github.com/rohanjariwala03/Bags-World-Flutter-App"
  ),
  RecentWork(
    id: 3,
    title: "Portfolio Website",
    category: "Flutter",
    description: "Portfolio website is my latest project. On Portfolio website User can add his/her summery of their works, their project as well as they can describe all their skills. Moreover, User can add their CV and Contact Me page to add the chance of hiring in a company. Furthermore, they can add Database to store all the details of who visited the site and many more.",
    lin: "https://github.com/rohanjariwala03/Portfolio-Website-Flutter"
  ),
  RecentWork(
    id: 4,
    title: "Real Estate Website",
    category: "Asp.net C#",
    description: "Universal Builder is a Real Estate Website, which is made in Asp.net with C#. This website have four panel, User, Admin, Builder, Agent. Builder and Agent can add their properties to the website and User can able to contact them after the admin approved their post. Even Builder can add House for auction with time limit which user can able to Bid. In addition, Admin can delete property as well as he can delete Users, Builders, Agents.",
    lin: "https://github.com/rohanjariwala03/Universal_Builders"
  ),
];
