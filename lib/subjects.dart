import 'package:flutter/material.dart';
import 'model/data.dart';

class SubjectPageLayoutBuilder extends StatelessWidget
{
  final Sections sectionField;

  SubjectPageLayoutBuilder({required this.sectionField, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
    {
      if (constraints.maxWidth >= 860)
      {
        return WebSubjectPage(sectionField: sectionField);
      }
      else
      {
        return SubjectPage(sectionField: sectionField);
      }
    });
  }
}


class SubjectPage extends StatelessWidget
{
  final Sections sectionField;

  SubjectPage({Key? key, required this.sectionField});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: SingleChildScrollView
      (
        child: Container
        (
          child: Column
          (
            children: 
            [
              Container
              (
                height: 400,
                child: ClipRRect
                (
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(55), bottomLeft: Radius.circular(55)),
                  child: Stack
                  (
                    children:
                    [
                      Container
                      (
                        decoration: BoxDecoration
                        (
                          color: Colors.deepPurpleAccent,
                          image: DecorationImage(image: AssetImage(sectionField.imgPath), fit: BoxFit.cover),
                        )
                      ),
                      Container
                      (
                        decoration: BoxDecoration
                        (
                          gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                        ),
                      ),
                      Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Expanded
                          (
                            flex: 22, child: Container()
                          ),
                          Expanded
                          (
                            flex: 5,
                            child: Container(child: Text(sectionField.sectionName, style: TextStyle(color: Colors.white, fontSize: 20),))
                          ),
                          Expanded
                          (
                            flex: 10,
                            child: Container(padding: EdgeInsets.symmetric(horizontal: 40), child: Text(sectionField.overview, style: TextStyle(color: Colors.white, fontSize: 13,), textAlign: TextAlign.center,))
                          )
                        ],
                      ),
                      SafeArea
                      (
                        child: Padding
                        (
                          padding: const EdgeInsets.all(20.0),
                          child: Row
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:
                            [
                              IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
                              FavoriteButton(sectionField: sectionField,),
                            ],
                          ),
                        ),
                      ),
                    ]
                  ),
                )
              ),
              Container
              (
                child: Row
                (
                  children: 
                  [
                    Expanded(flex: 2, child: Container()),
                    Expanded
                    (
                      flex: 12,
                      child: Container
                      (
                        child: Column
                        (
                          children:
                          [
                            SizedBox(height: 16),
                            Text(sectionField.sectionDescription, textAlign: TextAlign.justify),
                            SizedBox(height: 14),
                            Column
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: sectionField.materials.map((mat)
                              {
                                return Container(alignment: Alignment.centerLeft, child: Text(mat, textAlign: TextAlign.justify,), padding: EdgeInsets.only(bottom: 10),);
                              }
                              ).toList(),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(flex: 2, child: Container()),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class WebSubjectPage extends StatelessWidget
{
  final Sections sectionField;
  WebSubjectPage({Key? key, required this.sectionField});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: Row
        (
        children:
        [
          Expanded
            (
              flex: 4,
              child: ClipRRect
                (
                  borderRadius: BorderRadius.only(topRight: Radius.circular(48), bottomRight: Radius.circular(48)),
                  child: Stack
                    (
                    children:
                    [
                      Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(sectionField.imgPath), fit: BoxFit.cover),)),
                      Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.white10,], begin: Alignment.centerRight, end: Alignment.centerLeft)),),
                      Center
                      (
                        child: Container
                        (
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Container(child: Text(sectionField.sectionName, style: TextStyle(color: Colors.black, fontSize: 26),)),
                              SizedBox(height: 12),
                              Text(sectionField.overview, style: TextStyle(color: Colors.black, fontSize: 18,), textAlign: TextAlign.center,)
                            ],
                          ),
                        )
                      ),
                      Padding
                      (
                        padding: const EdgeInsets.all(20.0),
                        child: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
                            FavoriteButton(sectionField: sectionField,),
                          ],
                        ),
                      ),
                    ],
                  )
              )
          ),
          Expanded
          (
            flex: 8,
            child: Padding
            (
              padding: EdgeInsets.only(right: 40, left: 32, top: 32, bottom: 32),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Container(padding: EdgeInsets.only(bottom: 14), child: Text(sectionField.sectionDescription),),
                  Column
                  (
                    children: sectionField.materials.map((mat)
                    {
                      return Container(alignment: Alignment.centerLeft, child: Text(mat, textAlign: TextAlign.justify,), padding: EdgeInsets.only(bottom: 10),);
                    }
                    ).toList(),
                  )
                ],
              )
            )
          )
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget
{
  final Sections sectionField;
  FavoriteButton({Key? key, required this.sectionField}) : super(key: key);
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.sectionField.isFavorite == true ? Icon(Icons.star, color: Colors.yellow,) : Icon(Icons.star_border, color: Colors.yellow,),
      onPressed: ()
      {
        setState(()
        {
          widget.sectionField.isFavorite = !widget.sectionField.isFavorite;
        });
      },
    );
  }
}