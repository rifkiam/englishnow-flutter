import 'package:englishnow/subjects.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_android/url_launcher_android.dart';
import 'model/data.dart';

class DetailScreenLayoutBuilder extends StatelessWidget
{
  final String value;
  DetailScreenLayoutBuilder({required this.value, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
    {
      if (constraints.maxWidth >= 860)
      {
        return WebDashboardUBuilder(value: value);
      }
      else
      {
        return MobileDashboardUBuilder(value: value);
      }
    });
  }
}

class MobileDashboardUBuilder extends StatelessWidget
{
  double upFontSize = 24;
  double separator = 40;
  final String value;
  MobileDashboardUBuilder({required this.value,});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: SafeArea
      (
        child: SingleChildScrollView
        (
          child: Padding
          (
            padding: EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 48),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                SizedBox(child: Text("what would you", style: TextStyle(fontSize: (upFontSize + 2)),),),
                SizedBox(child: Text("learn today, $value?", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: (upFontSize + 2)),),),
                SizedBox(height: 24),
                SizedBox
                (
                  height: 40,
                  child: ListView.separated
                  (
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index)
                      {
                        final Sections sectionField = sectionsListScroll[index];
                        return InkWell
                        (
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionField);}));},
                          child: ClipRRect
                          (
                            borderRadius: BorderRadius.circular(20), child: Container
                            (
                              color: Colors.black,
                              padding: const EdgeInsets.all(10),
                              child: Text(sectionField.sectionName, style: TextStyle(color: Colors.white, fontSize: 14.5),),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index)
                      {
                        return SizedBox(width: 7);
                      },
                      itemCount: sectionsListScroll.length,
                  )
                ),
                SizedBox(height: separator,),
                SizedBox(child: Text("Featured this week", style: TextStyle(fontSize: upFontSize),),),
                Text("For you who seeks online course", style: TextStyle(fontSize: (upFontSize-9), color: Colors.black54),),
                SizedBox(height: 28),
                ClipRRect
                (
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell
                  (
                    onTap: ()
                    {
                      launch('https://www.oxfordonlineenglish.com/free-english-lessons-mobile');
                    },
                    child: Stack
                    (
                      children:
                      [
                        Container
                        (
                          height: 200,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/english-banner.jpg'), fit: BoxFit.cover),),
                        ),
                        Container
                        (
                          height: 200,
                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                        ),
                        Container
                        (
                          height: 200,
                          child: Padding
                          (
                            padding: EdgeInsets.all(24),
                            child: Column
                            (
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Take a free online english lesson with Oxford!", style: TextStyle(color: Colors.white),),],
                            )
                          ),
                        )
                      ]
                    ),
                  ),
                ),
                SizedBox(height: separator,),
                SizedBox(child: Text("For beginners", style: TextStyle(fontSize: upFontSize),),),
                Text("For you who's just getting started", style: TextStyle(fontSize: (upFontSize-9), color: Colors.black54),),
                SizedBox(height: 28),
                Column
                (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:
                  [
                    InkWell
                      (
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[0]);}));},
                      child: ClipRRect
                        (
                        borderRadius: BorderRadius.circular(20), child: Container
                        (
                        color: Color.fromRGBO(222, 222, 222, 0.6),
                        padding: const EdgeInsets.all(32),
                        child: Text(sectionsListScroll[0].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                      ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell
                      (
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[1]);}));},
                      child: ClipRRect
                        (
                        borderRadius: BorderRadius.circular(20), child: Container
                        (
                        color: Color.fromRGBO(222, 222, 222, 0.6),
                        padding: const EdgeInsets.all(32),
                        child: Text(sectionsListScroll[1].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                      ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell
                      (
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[2]);}));},
                      child: ClipRRect
                        (
                        borderRadius: BorderRadius.circular(20), child: Container
                        (
                        color: Color.fromRGBO(222, 222, 222, 0.6),
                        padding: const EdgeInsets.all(32),
                        child: Text(sectionsListScroll[2].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                      ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  launchURL(String url) async
  {
    if(await canLaunchUrl(Uri.parse(url)))
      {
        await launchUrl(Uri.parse(url));
      }
    else
      {
        throw "Could not redirect.";
      }
  }

  launchURL2(String url) async
  {
    if(await canLaunch(url))
    {
      await launch(url);
    }
    else
    {
      throw "Could not redirect.";
    }
  }
}

class WebDashboardUBuilder extends StatelessWidget
{
  double webFontSize = 22;
  double separator = 40;
  final String value;
  WebDashboardUBuilder({required this.value});
  @override
  Widget build(BuildContext context)
  {
    var sectionField = sectionsListScroll;
    return Scaffold
      (
        body: Column
        (
          children:
          [
            Expanded
            (
              flex: 3,
              child: Stack
              (
                children:
                [
                  Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/people-having-conversation.jpg'), fit: BoxFit.cover)),),
                  Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)),),
                  Padding
                  (
                    padding: const EdgeInsets.symmetric(horizontal: 128, vertical: 48),
                    child: Row
                    (
                      children:
                      [
                        Expanded(flex: 3, child: Container()),
                        Expanded
                        (
                          flex: 20,
                          child: Text.rich
                          (
                            TextSpan
                            (
                              text: "what would you",
                              style: TextStyle
                              (
                                fontSize: (webFontSize + 6),
                                color: Colors.white
                              ),
                              children:
                              [
                                TextSpan
                                (
                                  text: " learn today, $value?",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: (webFontSize + 6))
                                )
                              ]
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: 16,),
            Expanded
            (
              flex: 7,
              child: Row
              (
                children:
                [
                  Expanded
                  (
                    flex: 3,
                    child: ClipRRect
                    (
                      borderRadius: BorderRadius.only(topRight: Radius.circular(24)),
                      child: Stack
                      (
                        children:
                        [
                          Container
                          (
                            padding: EdgeInsets.all(16),
                            color: Colors.deepPurpleAccent,
                            child: ListView.separated
                            (
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index)
                              {
                                final Sections sectionField = sectionsListScroll[index];
                                return InkWell
                                (
                                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionField);}));},
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(24),
                                    child: Container
                                    (
                                      color: Colors.black,
                                      padding: const EdgeInsets.all(12),
                                      child: Text(sectionField.sectionName, style: TextStyle(color: Colors.white, fontSize: 14.5),),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index)
                              {
                                return SizedBox(height: 16);
                              },
                              itemCount: sectionsListScroll.length,
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded
                  (
                    flex: 10,
                    child: Padding
                    (
                      padding: EdgeInsets.only(top: 8, left: 84, right: 48, bottom: 64),
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Expanded
                          (
                            flex: 1,
                            child: Column
                            (
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Text("Featured this week", style: TextStyle(fontSize: webFontSize),),
                                Text("For you who seeks online course", style: TextStyle(fontSize: (webFontSize-9), color: Colors.black54),),
                              ],
                            )
                          ),
                          SizedBox(height: 10),
                          Expanded
                          (
                            flex: 6,
                            child: ClipRRect
                            (
                              borderRadius: BorderRadius.circular(30),
                              child: InkWell
                              (
                                onTap: ()
                                {
                                  launchUrl(Uri.parse('https://www.oxfordonlineenglish.com/free-english-lessons-mobile'));
                                },
                                child: Stack
                                (
                                  children:
                                  [
                                    Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/english-banner.jpg'), fit: BoxFit.cover),),),
                                    Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)),),
                                    Padding
                                    (
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column
                                      (
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:
                                        [
                                          Text("Take a free online english lesson with Oxford!", style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    )
                                  ]
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded
                  (
                    flex: 10,
                    child: Padding
                    (
                      padding: EdgeInsets.only(top: 8, left: 84, right: 48, bottom: 64),
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Expanded
                          (
                            flex: 1,
                            child: Column
                            (
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Text("For beginners", style: TextStyle(fontSize: webFontSize)),
                                Text("For you who's just getting started", style: TextStyle(fontSize: (webFontSize-9), color: Colors.black54),),
                              ]
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded
                          (
                            flex: 6,
                            child: ListView
                            (
                              children: 
                              [
                                InkWell
                                (
                                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[0]);}));},
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(20), child: Container
                                    (
                                      color: Color.fromRGBO(222, 222, 222, 0.6),
                                      padding: const EdgeInsets.all(32),
                                      child: Text(sectionsListScroll[0].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                InkWell
                                (
                                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[1]);}));},
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(20), child: Container
                                    (
                                      color: Color.fromRGBO(222, 222, 222, 0.6),
                                      padding: const EdgeInsets.all(32),
                                      child: Text(sectionsListScroll[1].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                InkWell
                                (
                                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return SubjectPageLayoutBuilder(sectionField: sectionsListScroll[2]);}));},
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(20), child: Container
                                    (
                                      color: Color.fromRGBO(222, 222, 222, 0.6),
                                      padding: const EdgeInsets.all(32),
                                      child: Text(sectionsListScroll[2].sectionName, style: TextStyle(color: Colors.black, fontSize: 14.5),),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    )
                  ),
                ],
              )
            )
          ],
        )
    );
  }
  launchURL(String url) async
  {
    if(await canLaunchUrl(Uri.parse(url)))
    {
      await launchUrl(Uri.parse(url));
    }
    else
    {
      throw "Could not redirect.";
    }
  }

  launchURL2(String url) async
  {
    if(await canLaunch(url))
    {
      await launch(url);
    }
    else
    {
      throw "Could not redirect.";
    }
  }
}