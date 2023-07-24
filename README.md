# Overview of mobilicis Flutter Application

- ### API Handling :
  GET, POST using dio Package. read more about dio package here: https://pub.dev/packages/dio
  
- ### UI Implementation :
  1. Used flutter_svg packages to show all Icons and logo.
  2. Fetched dynamic data from the API and display it on the home page.
  3. Implemented infinite scrolling to load more data as the user scrolls down on the home page using the SingleChildScrollView widget.
     
- ### Push Notifications :
  1. Integrate Firebase Cloud Messaging (FCM) for push notifications in the app & show notifications details like title, and body using Firebase Cloud Messaging. read more about FCM: https://blog.logrocket.com/add-flutter-push-notifications-firebase-cloud-messaging/
  2. Implemented click process when the user taps on a notification Icon to navigate to a specific screen (Notification Screen).
 
- ### Image Cache Optimization :
  Used cached_network_image package to improve performance when displaying images. Image caching allows you to store and reuse images in memory, which reduces the need to reload images from the network or disk every time they are displayed. This can significantly improve the performance and user experience of your app, especially when dealing with large or frequently used images.
   read more about cached_network_image package: https://pub.dev/packages/cached_network_image

- ### Memory Management :
  Used flutter_cache_manager package to improve performance of upload & fetch data. cache memory is a faster memory storage that stores the data in the memory of the phone locally. It stores the data for a fixed period of time after its data is cleaned form the memory.
    read more about Cache Memory: https://medium.flutterdevs.com/cache-management-in-flutter-35a374c14303
  
  
