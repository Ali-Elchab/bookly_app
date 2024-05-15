# Bookly App

A Flutter application that fetches Google Books API to display books about programming. It showcases the use of Bloc and Cubit architectures for state management, focusing on best practices and the practical use of MVVM.

![Group 8](https://github.com/Ali-Elchab/bookly_app/assets/106644215/ceaa708f-a879-4256-8628-1ced85b781da)


## Why Bloc and Cubit?

### Bloc
- Utilized for managing complex state dynamics where multiple events lead to state changes.
- Ideal for complex business logic, benefiting from a clear separation of events and state transitions.

### Cubit
- Employed for simpler state management scenarios where direct state updates are sufficient.
- Reduces boilerplate by eliminating the event layer, making the code simpler and more direct.

## Getting Started

Follow these steps to get a local copy running:

```bash
# Clone the repository
git clone https://github.com/Ali-Elchab/bookly_app.git

# Navigate to the directory
cd bookly_app

# Install dependencies
flutter pub get

# Run the app
flutter run
