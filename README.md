# 📰 NewsApp

A Flutter news app that fetches top headlines by category using the [NewsAPI](https://newsapi.org/).

---

## Features

- Browse news by category: Business, Entertainment, Health, Science, Sports, Technology
- Fetches live headlines from NewsAPI
- Cached network images for smooth loading
- Clean, scrollable feed with title and description

---

## Project Structure

```
lib/
├── model/
│   ├── category_model.dart     # Category data model
│   └── feed_model.dart         # News article data model
├── services/
│   └── news_service.dart       # API calls using Dio
├── view/
│   ├── home_screen.dart        # Main screen
│   └── category_view.dart      # Category news screen
└── widget/
    ├── category.dart            # Single category card
    ├── category_builder.dart    # Horizontal category list
    ├── feed_item.dart           # Single news card
    ├── feed_builder.dart        # Sliver news list
    └── upper_view_feed_builder.dart  # Async feed loader
```

---

## Getting Started

### Prerequisites

- Flutter SDK
- A free API key from [newsapi.org](https://newsapi.org/)

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/amr-turki/news_app.git
   cd news_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Add your API key in `news_service.dart`:
   ```dart
   'https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_API_KEY&category=$category'
   ```

4. Add category images under `assests/images/`:
   - `business.jpg`
   - `entertainment.jpg`
   - `health.jpg`
   - `science.jpg`
   - `sports.jpg`
   - `technology.jpg`

5. Register assets in `pubspec.yaml`:
   ```yaml
   flutter:
     assets:
       - assests/images/
   ```

6. Run the app:
   ```bash
   flutter run
   ```

---

## Dependencies

```yaml
dependencies:
  dio: # HTTP client
  cached_network_image: # Image caching
```
