import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tac_link_clone/models/SocialMediaModel.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<SocialMediaModel> sosmedList;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String myName = "Rizki Abdul Gofur";
  String address = "Banyuwangi, East Java, Indonesia";
  String job = "Mobile Developer at\nOmega Teknologi Indonesia Company";
  int connections = 0;

  @override
  void initState() {
    sosmedList = [
      SocialMediaModel(
          url: "https://www.apple.com/id/app-store/",
          urlImage:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/512px-App_Store_%28iOS%29.svg.png?20201023145313",
          name: "iOS\nMobile App"),
      SocialMediaModel(
          name: "Official\nWebsite",
          urlImage: "https://pic.onlinewebfonts.com/svg/img_153948.png",
          url: "http://rizkyghofur.my.id"),
      SocialMediaModel(
          name: "Android\nMobile App",
          urlImage:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Google_Play_2016_icon.svg/512px-Google_Play_2016_icon.svg.png?20190913154302",
          url: "https://play.google.com/store/games"),
      SocialMediaModel(
          name: "Instagram",
          urlImage:
              "https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png",
          url: "https://instagram.com/rizky.ghofur"),
      SocialMediaModel(
          name: "WhatsApp",
          urlImage:
              "https://upload.wikimedia.org/wikipedia/commons/5/5e/WhatsApp_icon.png",
          url: "https://wa.me/628113666858"),
      SocialMediaModel(
          name: "Tiktok",
          urlImage:
              "https://static.wikia.nocookie.net/tiktok/images/e/eb/TikTok_Logo.png/revision/latest?cb=20210816124125",
          url: "https://www.tiktok.com/@rizkyghofur"),
      SocialMediaModel(
          name: "Shopee",
          urlImage:
              "https://www.iconlogovector.com/uploads/image/2022/01/shopee.png",
          url: "https://shopee.com"),
      SocialMediaModel(
          name: "Youtube",
          urlImage:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/159px-YouTube_full-color_icon_%282017%29.svg.png",
          url: "https://www.youtube.com/c/RizkyAbdulGhofur"),
      SocialMediaModel(
          name: "Tokopedia",
          urlImage:
              "https://www.freepnglogos.com/uploads/logo-tokopedia-png/berita-tokopedia-info-berita-terbaru-tokopedia-6.png",
          url: "httos://tokopedia.com")
    ];

    super.initState();
  }

  void _launchUrl(String urlString) async {
    if (!await launch(urlString)) throw 'Could not launch $urlString';
  }

  @override
  Widget build(BuildContext context) {
    var heightPad = MediaQuery.of(context).size.height * 0.125;
    var padding = MediaQuery.of(context).size.width * 0.1;
    return Scaffold(
      key: _scaffoldKey,
      body: MediaQuery.of(context).size.width <= 280 ||
              MediaQuery.of(context).size.width > 600 ||
              MediaQuery.of(context).size.height <= 600
          ? Center(
              child: Text(
                "This page will be optimized by opening the page on your mobile phone browser",
                textAlign: TextAlign.center,
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fsub8-1.fna.fbcdn.net/v/t1.6435-9/129608739_4689869724421540_3024007767558104975_n.jpg?stp=dst-jpg_s960x960&_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeENxbNCS2WuBzKsb2NYm_SXa_a95BVcaGVr9r3kFVxoZf_MKyCDH6jnnpinfsPW65k&_nc_ohc=-zXCWwhpxJ8AX-8auGf&_nc_ht=scontent.fsub8-1.fna&oh=00_AT93BGoxQMl5GnA4c_wMqtfxB2bAdMr7cOb0jdVufqdrIQ&oe=62DF4C63"),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        child: Container(
                          alignment: Alignment(0.0, 2.5),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/129279038_4689874011087778_4447315667308824792_n.jpg?stp=dst-jpg_s526x395&_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHNO3f3LEllrDZFjAyb66V5yllbv6MftizKWVu_ox-2LN4pSMhb0yGaCJkSE6sI0jM&_nc_ohc=W6sYBh2i_f4AX9Ap2pa&_nc_ht=scontent-sin6-3.xx&oh=00_AT_K2E7H-Vr-CvzLUpvThDEymkmpajYUdHTUwp1PRfqEHQ&oe=62DF4668"),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heightPad,
                    ),
                    Text(
                      myName,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      address,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black45,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      job,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black45,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Connections: $connections",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black45,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          connections++;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: () {},
                              ),
                              content: Text(
                                  "Select any Social Media Account below to open and save it as your contact/friend"),
                            ),
                          );
                        });
                      },
                      child: Text(
                        "Save Contact",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 325,
                      child: GridView.count(
                        padding: EdgeInsets.only(left: padding, right: padding),
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: sosmedList.map(
                          (sosmed) {
                            return InkWell(
                              onTap: () {
                                _launchUrl(sosmed.url);
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    sosmed.urlImage,
                                    height: 50,
                                    width: 50,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    sosmed.name,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
