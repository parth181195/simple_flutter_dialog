import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleFlutterDialog {
  final ImageProvider headerImage;
  final Text dialogTitle;
  final List<Widget> actions;
  final double height;
  final double width;
  final Color bgOverlayColor;
  final double radius;
  final double childPadding;
  final double headerImageHeight;
  final Color dialogColor;
  final Widget child;
  final bool isScrollable;
  final CrossAxisAlignment contentListAlignment;
  final MainAxisAlignment actionsRowAlignment;
  final BoxFit headerImageFit;
  ClipRRect imageWidget;

  SimpleFlutterDialog(
      {Key key,
      this.headerImage,
      this.isScrollable = true,
      this.headerImageFit = BoxFit.cover,
      this.headerImageHeight = 100,
      this.actions,
      this.actionsRowAlignment = MainAxisAlignment.end,
      this.dialogTitle,
      this.height = 200,
      this.child,
      this.childPadding = 10,
      this.width = 300,
      this.bgOverlayColor = Colors.black12,
      this.radius = 10,
      this.dialogColor = Colors.white,
      this.contentListAlignment = CrossAxisAlignment.start}) {
    if (headerImage != null) {
      imageWidget = ClipRRect(
        child: new Image(
          image: headerImage,
          width: width,
          height: headerImageHeight,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius)),
      );
    }
  }

  show(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Material(
            color: Colors.transparent,
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: Container(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                    ),
                    decoration: BoxDecoration(color: bgOverlayColor),
                  ),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(radius)),
                    child: Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          new BoxShadow(
                            spreadRadius: 1.0,
                            color: Colors.black38,
                            offset: new Offset(5.0, 5.0),
                            blurRadius: 40.0,
                          )
                        ], color: dialogColor),
                        child: getColumnOrListView()),
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget getColumnOrListView() {
    return !isScrollable
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: contentListAlignment,
            children: getChildContents(),
          )
        : ListView(
            children: getChildContents(),
          );
  }

  List<Widget> getChildContents() {
    return [
      imageWidget != null ? imageWidget : Container(),
      dialogTitle != null
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Text(
                dialogTitle.data,
                style: dialogTitle.style != null
                    ? dialogTitle.style
                    : TextStyle(fontSize: 25),
              ),
            )
          : Container(),
      child != null
          ? Padding(
              padding: EdgeInsets.all(childPadding),
              child: child,
            )
          : Container(),
      actions != null
          ? Padding(
              padding: EdgeInsets.only(right: radius, left: radius),
              child: Row(
                mainAxisAlignment: actionsRowAlignment,
                children: actions,
              ),
            )
          : Container()
    ];
  }
}
