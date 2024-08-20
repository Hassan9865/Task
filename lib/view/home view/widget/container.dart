import 'package:flutter/material.dart';

class MyContainerPost extends StatelessWidget {
  final double height;
  final Widget? custumchild;
  const MyContainerPost({
    super.key,
    required this.height,
    this.custumchild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 2,
      height: height,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
        color: Color(0xFFECF3F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 15,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/images/Photo.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "James",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.verified,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(" . 1 hour ago"),
                          ],
                        ),
                        Text("Topic name"),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "Lorem ipsum dolor sit amet ",
                    style: TextStyle(
                      overflow: TextOverflow.clip,
                    ),
                  ),
                )
              ],
            ),
            Flexible(
              child: custumchild ?? SizedBox.shrink(),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  size: MediaQuery.of(context).size.width / 16,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.comment_outlined,
                  size: MediaQuery.of(context).size.width / 16,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.share_outlined,
                  size: MediaQuery.of(context).size.width / 16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
