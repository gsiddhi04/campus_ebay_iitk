# campus_ebay

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
#   C a m p u s _ e b a y 
 
 Campus Ebay
A mobile application built using Flutter to facilitate the buying and selling of items within a campus community. This app allows users to browse through listings, post their own items for sale, and communicate with buyers and sellers.

Features
Login Page: User authentication page with the IIT Kanpur logo.
Home Page: Includes a search bar, marketplace items, and a toggle menu for user profile, order history, and logout options.
User Profile: Displays user's profile information with options to edit profile and manage listings using a toggle button.
Marketplace: Browse through a list of items available for sale.
Product Preview: View detailed information about a product, including images, description, price, and a button to contact the dealer.
Chat Interface: Communicate directly with the seller or buyer after a deal is made.

Installation
Clone the repository:


git clone https://github.com/yourusername/campus-marketplace.git
cd campus-marketplace
Install dependencies:


flutter pub get
Run the app:


flutter run
Deployment
To deploy the Flutter app to GitHub Pages:

Install flutter-gh-pages package globally:


npm install -g flutter-gh-pages
Build the Flutter web app:


flutter build web
Deploy to GitHub Pages:


flutter-gh-pages --branch=gh-pages --dist=build/web
Access the deployed app:
Visit https://yourusername.github.io/campus-marketplace

File Structure


.
├── assets
│   ├── iitk_logo.png
│   ├── profile_picture.png
│   ├── product_image1.jpg
│   ├── product_image2.jpg
│   ├── product_image3.jpg
├── lib
│   ├── main.dart
│   ├── home_page.dart
│   ├── marketplace.dart
│   ├── product_page.dart
│   ├── chat_page.dart
│   ├── profile_page.dart
│   ├── edit_profile_page.dart
│   ├── manage_listings_page.dart
│   ├── login_page.dart
├── screenshots
│   ├── login.png
│   ├── home.png
│   ├── profile.png
│   ├── marketplace.png
│   ├── product.png
│   ├── chat.png
└── pubspec.yaml
