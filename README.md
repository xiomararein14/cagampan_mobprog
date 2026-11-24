# cagampan_mobprog

A new Flutter project.

## Lab Activity 1: Discussion

**Laboratory Discussion: Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.**

To integrate the image into the `newsfeed_card.dart` file, I created a separate reusable widget called `PostImage` in the `post_image.dart` file. This widget accepts an optional `imagePath` parameter that determines whether a post contains an image or not. I then imported and called the widget inside the `NewsfeedCard` to display the image below the post content.

To make the image display dynamic, I used a conditional statement that checks whether the `imagePath` is null or empty. If an image path is provided, the widget displays the image using `Image.asset()`. Otherwise, it returns `SizedBox.shrink()`, which prevents unnecessary blank spaces from appearing in the post.

This implementation allows the same newsfeed card to display posts with or without images without creating separate layouts. It also makes the code more organized, reusable, and easier to maintain.
