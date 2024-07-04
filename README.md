# fovie
Flutter Lovie Repo

# Row [textFieldBox, elevatedButton] [search/addBox]
```
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
        Expanded(
        child: TextFormField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(),
            hintText: 'search via movie title or year',
            ),
            textAlign: TextAlign.center,
        ),
        ),
        ElevatedButton(
        onPressed: () {
            print("pressed");
        },
        child: Icon(Icons.search_outlined),
        ),
    ],
    ),
    SizedBox(
    height: 5,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
        Expanded(
        child: TextFormField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(),
            hintText: 'title',
            ),
            textAlign: TextAlign.center,
        ),
        ),
        SizedBox(width: 5),
        Expanded(
        child: TextFormField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(),
            hintText: 'year',
            ),
            textAlign: TextAlign.center,
        ),
        ),
        ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
    ],
    ),
```
# Container textBok
```
Container(
    margin: const EdgeInsets.all(5),
    child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(),
            hintText: 'Container Text Form Field')),
    ),
```
# 