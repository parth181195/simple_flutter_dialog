# simple_flutter_dialog

![pub package](https://img.shields.io/pub/v/simple_flutter_dialog.svg?color=orange&logo=flutter&logoColor=white)
![GitHub stars](https://img.shields.io/github/stars/parth181195/simple_flutter_dialog.svg?color=blue&label=Stars&logo=GitHub)
![GitHub](https://img.shields.io/github/license/parth181195/simple_flutter_dialog.svg?color=darkred&label=License)
![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.png?v=103)

a simple plugin in to show custom dialog in flutter.


Installation:

```yaml
dependencies:
  easy_dialog: <latest version>
``` 

 Usage: 
 
 Import the package
 
 ```dart
import 'package:simple_flutter_dialog/simple_flutter_dialog.dart';
```

Basic usage:

```dart
SimpleFlutterDialog(
    dialogTitle: Text('My Simple dialog'),
    headerImage: NetworkImage('https://via.placeholder.com/150'))
    isScrollable: true,
    child: Text(
        'Text content'
    ),
    actions: [
      FlatButton(
        onPressed: () {},
        child: Text('action'),
      ),
    ],
    .show(context);
```

All attributes:

| Attribute Name       | Data Type          | Description                                        | 
|----------------------|--------------------|----------------------------------------------------| 
| headerImage          | ImageProvider      | Image provider for header image                    | 
| dialogTitle          | Text               | text widget for dialog title                       | 
| actions              | List<Widget>       | list of widget for bottom actions                  | 
| height               | double             | height for dialog card                             | 
| width                | double             | width for dialog card                              | 
| bgOverlayColor       | Color              | background color for overlay                       | 
| radius               | double             | radius for corners                                 | 
| childPadding         | double             | padding for child                                  | 
| headerImageHeight    | double             | header image height                                | 
| dialogColor          | Color              | background color for card                          | 
| child                | Widget             | child widget                                       | 
| isScrollable         | bool               | do you eant to keep ypur content scrollable or not | 
| contentListAlignment | CrossAxisAlignment | cross axis alignment for content                   | 
| actionsRowAlignment  | MainAxisAlignment  | main axis alignment for actions                    | 
| headerImageFit       | BoxFit             | header image fit                                   |


