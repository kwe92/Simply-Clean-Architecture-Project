# Flutter: Clean Architecture | D.R.Y Clean Code

Why Clean Architecture?

- Because we like to create ALOT of folders :D

- you can design applications with very low coupling (different folders) independent of technical implementation details.

- the application becomes easy to maintain and flexible to change.

- Clean architecture allows us to create architectural boundaries between dependencies (have a bunch of folders) which allows components to be intrinsically testable

Tools/Libraries (Packages)

- Provider: Flutter state management (You can use any kind of state management you prefer)

- auto_route: Routing package that uses the new Flutter Router instead of the default Navigator.

- get_it: Service locator design pattern package (also a runtime dependency injector). (COMING SOON!)

- equatable: Flutter package that makes comparing dart objects by equality much easier. (COMING SOON!)

- lint: Flutter package that helps you write clean code which follows Dart’s Style Guidelines. (COMING SOON!)

- retrofit: is a source code generator package that uses Dio as an HTTP client to generate the proper methods we need to deal with REST APIs based on abstraction, it’s inspired by the Android Retrofit. (COMING SOON!)

- floor: is a typesafe, reactive, lightweight source code generator package that uses the sqlite to store its data locally. (COMING SOON!)
