class OnBoardingEntity {
  late String title;
  late String description;
  late String image;


  OnBoardingEntity ({

    required this.title,
    required this.description,
    required this.image,
  });

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
        title: "Hot and Spicy",
        description: "Order hot and Spicy \nFood with Happiness",
        image: "image-1.jpg"
    ),
    OnBoardingEntity(
        title: "Happy Bookies",
        description: "Order best Cookie \n and enjoy",
        image: "image-2.jpg"
    ),
    OnBoardingEntity(
        title: "Love to eat",
        description: "Order your Wish \n You can order",
        image: "image-3.jpg"
    ),


  ];

}




