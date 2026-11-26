# cagampan_mobprog

A new Flutter project.

## Lab Activity 1: Discussion

**Laboratory Discussion: Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.**

To integrate the image into the `newsfeed_card.dart` file, I created a separate reusable widget called `PostImage` in the `post_image.dart` file. This widget accepts an optional `imagePath` parameter that determines whether a post contains an image or not. I then imported and called the widget inside the `NewsfeedCard` to display the image below the post content.

To make the image display dynamic, I used a conditional statement that checks whether the `imagePath` is null or empty. If an image path is provided, the widget displays the image using `Image.asset()`. Otherwise, it returns `SizedBox.shrink()`, which prevents unnecessary blank spaces from appearing in the post.

This implementation allows the same newsfeed card to display posts with or without images without creating separate layouts. It also makes the code more organized, reusable, and easier to maintain.


## Lab Activity 2: Discussion

**Laboratory Discussion: Discuss how you managed to create the posts and notifications efficiently. Also, discuss how you accomplished the enhancements, the challenges you encountered, and how you addressed them.**

I was able to create the posts and notifications efficiently by using lists and `ListView.separated()` instead of creating each widget individually. I also reused existing widgets to avoid repeating the same code, which made adding and modifying content easier. Through this approach, I was able to display 12 newsfeed posts and 20 notifications with different content.

For the enhancements, I added different post captions, dates, numbers of likes, and optional images. I also implemented dynamic AppBar titles and added Friends and Profile screens. I renamed my application Ardently Social and chose the Coastal Elegance color palette because I wanted it to have a simple, elegant, and calming appearance. I also added profile pictures to the notifications to make the application look more realistic and consistent.

Some of the challenges I encountered were maintaining consistent colors across all screens and experiencing Android emulator errors. I addressed these by replacing hardcoded colors with color constants, troubleshooting the emulator, and waiting for it to fully load before running the application again. Overall, I enjoyed customizing the application and learned how dynamic lists and reusable widgets can make application development more efficient and organized.
