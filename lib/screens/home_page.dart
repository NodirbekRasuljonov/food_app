import 'package:flutter/material.dart';
import 'package:food_app/constants/colorconst.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  CustomScrollView body() {
    return CustomScrollView(
      slivers: [
        _sliverAppBar(),
        _sliverToBoxAdapter(),
        _slivertextrow(),
        _sliverlistbuilder(),
        _bods(),
        _sliverGrid(),
        _browse()
      ],
    );
  }

  SliverAppBar _sliverAppBar() {
    return SliverAppBar(
      leading: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(Icons.menu, color: ConstColors.iconColor),
        ),
      ),
      title: const Text('Home'),
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: ConstColors.iconColor,
            ),
          ),
        )
      ],
    );
  }

  SliverToBoxAdapter _sliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
                'https://kartinkin.net/uploads/posts/2021-07/1627432738_23-kartinkin-com-p-ovsyanie-pryaniki-yeda-krasivo-foto-26.jpg'),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.55,
        child: Stack(
          children: [
            Positioned(
              top: 20.0,
              left: 20.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33.0),
                  color: ConstColors.containerColor,
                ),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.height * 0.14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: ConstColors.iconColor,
                      size: 26.0,
                    ),
                    Text(
                      'SALE',
                      style: TextStyle(
                          color: ConstColors.textColor, fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              right: 20.0,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.height * 0.4,
                child: const Text(
                  'Get 20% off when you purchase 5 meal kit',
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverPadding _slivertextrow() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top rated recipies',
              style: TextStyle(color: ConstColors.textColor, fontSize: 15.0),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Show all',
                  style:
                      TextStyle(color: ConstColors.textColor, fontSize: 10.0),
                ))
          ],
        ),
      ),
    );
  }

  SliverPadding _sliverlistbuilder() {
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        sliver: SliverToBoxAdapter(
            child: SizedBox(
          height: 250.0,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 165.0,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 100.0,
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 50.0,
                            child: Text(
                              'GF',
                              style: TextStyle(
                                  color: ConstColors.textColor, fontSize: 14.0),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color:
                                  ConstColors.containerColor.withOpacity(0.8),
                            ),
                          ),
                          width: 165,
                          height: 150.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      'https://i.pinimg.com/originals/ae/11/72/ae11727a6fce4ba80da9792dd2dd0883.jpg'))),
                        ),
                      ),
                      Positioned(
                          top: 150.0,
                          left: 10.0,
                          right: 10.0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 100.0,
                            width: 170.0,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'BBQ Bacon Burgers',
                                  style: TextStyle(
                                      color: ConstColors.textColor,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  'BBQ BAcon Burgers',
                                  style: TextStyle(
                                      color: ConstColors.textColor,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),),
                    ],
                  ),
                );
              },),
        ),),);
  }

  SliverToBoxAdapter _bods() {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: ConstColors.containerColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.card_giftcard,
              color: ConstColors.textColor,
              size: 55.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 55.0),
              height: 80.0,
              width: double.infinity,
              child: Text(
                'Get 20 credits for inviting a friend',
                style: TextStyle(color: ConstColors.textColor, fontSize: 25.0),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50.0,
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Text(
                'Enter a friends email address and when they add credits you will get 20 credits on us!',
                style: TextStyle(color: ConstColors.textColor, fontSize: 13.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade900,
                filled: true,
                focusColor: Colors.grey.shade900,
                hintText: 'Enter your email',
                hintStyle:
                    TextStyle(color: ConstColors.textColor.withOpacity(0.8)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _sliverGrid() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 850.0,
        width: double.infinity,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 250.0,
              mainAxisSpacing: 10.0),
          itemBuilder: (context, index) {
            return Container(
              width: 170.0,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 100.0,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5.0),
                        height: 30.0,
                        width: 50.0,
                        child: Text(
                          'GF',
                          style: TextStyle(
                              color: ConstColors.textColor, fontSize: 14.0),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ConstColors.containerColor.withOpacity(0.8),
                        ),
                      ),
                      width: 170,
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  'https://kartinkin.net/uploads/posts/2021-01/thumbs/1611931712_22-p-chernie-foni-s-blyudami-24.jpg'))),
                    ),
                  ),
                  Positioned(
                    top: 150.0,
                    left: 10.0,
                    right: 10.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 100.0,
                      width: 170.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'BBQ Bacon Burgers',
                            style: TextStyle(
                                color: ConstColors.textColor, fontSize: 12.0),
                          ),
                          Text(
                            'BBQ BAcon Burgers',
                            style: TextStyle(
                                color: ConstColors.textColor, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }

  SliverPadding _browse() {
    return SliverPadding(
      padding:const EdgeInsets.all(15.0),
      sliver:SliverToBoxAdapter(
        child: Container(
          height: MediaQuery.of(context).size.height*0.45,width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),image:const DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider('https://get.pxhere.com/photo/dish-food-cuisine-ingredient-salad-vegan-nutrition-produce-vegetable-staple-food-recipe-vegetarian-food-meat-souvlaki-skewer-mixed-grill-meal-zucchini-mediterranean-food-greek-food-fattoush-superfood-1557745.jpg'),),),
            child: Stack(
              children: [
                Positioned(
                  top: 270,
                  left: 100.0,
                  right: 100.0,
                  bottom: 30.0,
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Browse',style: TextStyle(color: ConstColors.textColor),),
                      height: MediaQuery.of(context).size.height*0.5,width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
                      color: ConstColors.containerColor),
                      ),),),
              ],
            ),
         ),
      )
    );
  }
}
