import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/create%20view/create_viewModel.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CreateViewmodel(),
        builder: (context, CreateViewmodel viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Create Post"),
              centerTitle: true,
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5DC482),
                    // textStyle: Colors.white,
                    shape: RoundedRectangleBorder(
                      // Make the button square
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Post', // Changed text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17, // Optional: Adjust font size if needed
                    ),
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 30),
                        backgroundColor: Color(0xff5DC482),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Public', // Changed text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 30),

                        // backgroundColor: Color(0xff5DC482),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Colors.blueAccent, width: 1.0)),
                      ),
                      child: Text(
                        'Business',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Type something ', border: InputBorder.none),
                  ),
                ),
                Spacer(),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Topic"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // fixedSize: Size(150, 30),
                            backgroundColor: Color(0xff5DC482),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Climate change & sustainability',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // fixedSize: Size(150, 30),
                            // backgroundColor: Color(0xff5DC482),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Colors.blueAccent, width: 1.0)),
                          ),
                          child: Text(
                            'Conscious art',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              viewModel.captureImageWithCamera();
                            },
                            icon: Icon(
                              Icons.camera_enhance_rounded,
                              size: MediaQuery.of(context).size.width / 13,
                            )),
                        IconButton(
                            onPressed: () {
                              viewModel.pickImageFromGallery();
                            },
                            icon: Icon(
                              Icons.photo,
                              size: MediaQuery.of(context).size.width / 13,
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
