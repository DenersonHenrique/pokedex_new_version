# pokedex_new_version

Flutter Pokedex APP

# Flutter MVVM Clean Architecture Example

This is a sample Flutter application showcasing the implementation of MVVM (Model-View-ViewModel) architecture along with clean architecture principles. The app is built using Flutter and Dart, leveraging various architectural concepts and best practices.

## Features

- Modularization using `flutter_modular` for better project organization and maintainability.
- Dependency injection with `get_it` to manage dependencies and facilitate testability.
- Abstractions for HTTP requests using `http` for seamless integration with external APIs.
- Customized visual widgets for a personalized user interface.
- Implementation of unit tests for business logic and UI components.

## Architecture Overview

The application follows the principles of clean architecture, separating concerns into layers:

- **Presentation Layer**: Contains UI components, including widgets, views, and screens. Follows the MVVM pattern for a clear separation of concerns between the UI, business logic, and data.
- **Domain Layer**: Contains business logic and domain entities. Defines use cases and interfaces for interacting with external data sources.
- **Data Layer**: Handles data retrieval and manipulation, including API calls, database operations, and caching.

## Modularization and Dependency Injection

The use of `flutter_modular` enables modularization of the application, allowing for independent feature development and easier code organization. Dependency injection is managed using `get_it`, providing a centralized container for managing dependencies across modules.

## HTTP Requests Abstraction

Abstractions are created for HTTP requests using `dio`, allowing for seamless integration with external APIs while keeping the codebase clean and maintainable. These abstractions provide a clear separation of concerns and facilitate mocking for unit tests.

## Custom Visual Widgets

Custom visual widgets are created to provide a personalized user interface and enhance the user experience. These widgets encapsulate common UI patterns and can be easily reused across the application.

## Unit Testing

Unit tests are implemented for both business logic and UI components using Flutter's built-in testing framework. These tests ensure the correctness of the application's behavior and help maintain code quality and reliability.

## Getting Started

To run the application locally, follow these steps:

1. Clone the repository to your local machine.
2. Install Flutter and Dart SDKs if you haven't already.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run` to launch the application on your device or simulator.

## Contributing

Contributions are welcome! Feel free to submit bug reports, feature requests, or pull requests to help improve this project.

## Reference for creating the layout.

- [Youtube channel](https://www.youtube.com/c/RenatoMotaDev)
- [Playlist Flutter Pokedex](https://www.youtube.com/playlist?list=PLHAtJbrQ17AVj0LJEc955109XpX925Pt1)

## Author

- **Denerson Henrique** - [Linkedin](https://www.linkedin.com/in/denersonhenrique/) - [GitHub](https://github.com/DenersonHenrique)

## License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE) file for details.
