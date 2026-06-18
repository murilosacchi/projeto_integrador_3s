# Fire Extinguisher Management System - Web

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Platform](https://img.shields.io/badge/platform-Flutter-02569B)
![License](https://img.shields.io/badge/license-Proprietary-orange)

## Overview

This repository contains the **web application** for the Fire Extinguisher Management System, a comprehensive solution designed to streamline the inventory and maintenance tracking of fire suppression equipment. The system provides real-time monitoring, QR code-based asset identification, and intuitive dashboards for managing large-scale fire safety equipment across multiple facilities.

This cross-platform application, built with Flutter and Dart, enables organizations to efficiently track extinguisher locations, maintenance schedules, validity periods, and expiration status through a modern, responsive web interface.

## Context

This project was developed as part of an academic partnership between **Mauá Institute of Technology** and **São Paulo Metro (Metrô de SP)**. The fire extinguisher management system is one component of a larger asset management platform. This repository specifically implements the **web client application** responsible for:

- User authentication and authorization
- Real-time dashboard visualization
- Equipment inventory management
- QR code scanning and asset identification
- Data synchronization with the centralized database

The system integrates with a MySQL database hosted on Supabase, ensuring secure, scalable data management for monitoring fire safety compliance across multiple metro stations.

## Technologies

### Frontend
- **Flutter** - Cross-platform UI framework for responsive web interface
- **Dart** - Primary programming language
- **GoRouter** - Navigation and routing management
- **Provider** - State management and reactive data binding
- **Hive** - Local caching and offline data persistence

### Backend & Database
- **Supabase** - Backend-as-a-Service with PostgreSQL/MySQL integration
- **GoTrue** - User authentication and session management
- **PostgREST** - RESTful API to database
- **Storage Client** - File storage and retrieval

### UI Components & Utilities
- **fl_chart** - Data visualization and charting library
- **Dropdown Button 2** - Enhanced dropdown component
- **Auto Size Text** - Responsive text scaling
- **Font Awesome Flutter** - Icon library
- **Google Fonts** - Typography support
- **Cached Network Image** - Optimized image loading and caching
- **Flutter Animate** - Animation framework
- **Rive** - Animation assets and runtime

### QR Code & Integration
- **QR Server API** - QR code generation and recognition
- **URL Launcher** - Deep linking and app integration
- **App Links** - Web linking and app link handling

### Utilities & Helpers
- **RxDart** - Reactive programming extensions
- **JSON Path** - JSON parsing and manipulation
- **Shared Preferences** - Persistent key-value storage
- **Intl** - Internationalization support
- **Timeago** - Relative time formatting
- **Path Provider** - File system access

## Architecture

The application follows a **modular, component-based architecture** structured around FlutterFlow conventions:

### Core Layers

```
lib/
├── main.dart                      # Application entry point
├── index.dart                     # Exports and imports aggregator
├── auth/                          # Authentication layer
│   ├── supabase_auth/            # Supabase-specific implementation
│   │   ├── auth_util.dart        # Authentication utilities
│   │   ├── supabase_auth_manager.dart
│   │   └── supabase_user_provider.dart
│   └── base_auth_user_provider.dart
├── backend/                       # Data and API layer
│   ├── api_requests/
│   │   └── api_calls.dart        # External API integrations (QR code generation)
│   └── supabase/
│       ├── supabase.dart         # Supabase initialization and client
│       └── database/             # Database models and queries
├── pages/                         # Feature pages (MVC pattern)
│   ├── login_page/               # Authentication UI
│   ├── register_page/            # User registration
│   ├── painel_page/              # Dashboard/dashboard analytics
│   ├── consulta_page/            # Equipment query and search
│   ├── adicionar_page/           # Add new extinguisher
│   ├── q_r_code_page/            # QR code scanning interface
│   └── user_page/                # User profile management
├── components/                    # Reusable UI components
│   ├── sidebar_widget.dart       # Navigation sidebar
│   ├── popup_extintor_widget.dart # Equipment details popup
│   ├── popup_qr_code_widget.dart # QR code display popup
│   └── register_widget.dart      # Reusable registration form
├── flutter_flow/                 # FlutterFlow framework utilities
│   ├── flutter_flow_theme.dart   # Theme configuration
│   ├── flutter_flow_util.dart    # Helper functions
│   ├── flutter_flow_widgets.dart # Custom widgets
│   ├── flutter_flow_model.dart   # Base model class
│   ├── form_field_controller.dart
│   ├── lat_lng.dart              # Location coordinates
│   └── nav/                      # Navigation routing
└── assets/                        # Static resources
    ├── images/
    ├── fonts/
    ├── rive_animations/          # Rive animation assets
    ├── jsons/
    ├── pdfs/
    └── videos/
```

### Design Patterns

- **State Management**: Provider pattern with ChangeNotifier for reactive UI updates
- **Navigation**: GoRouter with app state-based routing logic
- **Data Binding**: One-way data flow from backend to UI
- **Component Structure**: Model-Widget pattern where each page/component has corresponding `.dart_model.dart` and `.dart_widget.dart` files
- **Authentication**: Stream-based user state management with real-time session tracking
- **Local Caching**: Hive for offline data persistence and Shared Preferences for app settings

## Features

### 1. **User Authentication**
   - Email/password login and registration
   - Session management via Supabase GoTrue
   - JWT token-based authentication
   - Real-time user state streaming

### 2. **Dashboard (Painel)**
   - Dynamic chart visualizations displaying equipment status
   - Overview metrics (expiring extinguishers, expired equipment, total inventory)
   - Real-time data synchronization

### 3. **Equipment Management**
   - **Query/Search**: Browse and filter extinguisher inventory
   - **Add New Equipment**: Register new fire extinguishers with complete metadata
   - **Edit Equipment**: Modify equipment details (location, serial number, status)
   - **Delete Equipment**: Remove outdated or decommissioned items
   - Database integration with MySQL via Supabase

### 4. **QR Code Integration**
   - Unique QR code per extinguisher for rapid identification
   - Scan functionality to access equipment details
   - QR code generation via QR Server API
   - Support for mobile device scanning

### 5. **User Profile Management**
   - User account settings and preferences
   - Role-based access control
   - Personal information management

### 6. **Responsive Web Interface**
   - Sidebar navigation for page routing
   - Adaptive layout for different screen sizes
   - Auto-scaling typography and components

## Repository Structure

| Folder | Purpose |
|--------|---------|
| `lib/` | Main Dart source code for the Flutter application |
| `lib/auth/` | Authentication logic and user provider implementations |
| `lib/backend/` | Database queries, API calls, and data models |
| `lib/pages/` | Feature pages organized by functionality |
| `lib/components/` | Reusable UI components shared across pages |
| `lib/flutter_flow/` | FlutterFlow framework extensions and utilities |
| `assets/` | Static resources (images, fonts, animations, videos) |
| `android/` | Android-specific build configuration and native code |
| `ios/` | iOS-specific build configuration and native code |
| `web/` | Web platform configuration and HTML entry point |
| `test/` | Unit and widget tests |

### Key Configuration Files
- `pubspec.yaml` - Flutter dependencies and project metadata
- `analysis_options.yaml` - Dart static analysis rules
- `web/index.html` - Web entry point with Bootstrap configuration

## Installation

### Prerequisites
- Flutter SDK (version >=3.0.0, <4.0.0)
- Dart SDK (included with Flutter)
- Git
- A code editor (VS Code, Android Studio, or IntelliJ)
- Supabase account and credentials

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/fire-extinguisher-management-system-web.git
   cd fire-extinguisher-management-system-web
   ```

2. **Install Flutter dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Supabase credentials**
   - Update Supabase URL and API key in `lib/backend/supabase/supabase.dart`
   - Ensure environment variables are properly configured for your deployment

4. **Run code generation (if applicable)**
   ```bash
   flutter pub run build_runner build
   ```

5. **Verify setup**
   ```bash
   flutter analyze
   ```

## Usage

### Running the Application

**Web Platform** (recommended for development)
```bash
flutter run -d chrome
```

**Android Emulator**
```bash
flutter run -d emulator-5554
```

**iOS Simulator**
```bash
flutter run -d simulator
```

**Production Build**
```bash
flutter build web --release
```

### Accessing Features

1. **Login**
   - Open the application in your browser
   - Enter credentials on the login page
   - Successful authentication redirects to the dashboard

2. **Dashboard**
   - View real-time charts and equipment statistics
   - Monitor expiration dates and maintenance schedules

3. **Query Extinguishers**
   - Navigate to "Consulta" (Query) page
   - Search or filter by location, serial number, or status
   - Click on entries to view detailed information

4. **Add Equipment**
   - Go to "Adicionar" (Add) page
   - Fill in equipment details (serial, location, maintenance date)
   - Submit to add to database

5. **Scan QR Codes**
   - Navigate to QR Code page
   - Use mobile device to scan equipment QR codes
   - View equipment details instantly

6. **Manage Profile**
   - Access user page for account settings
   - Update personal information

## My Contributions

Based on repository analysis, contributions include:

- **Architecture & Structure**: Implemented modular component-based architecture with proper separation of concerns (pages, components, backend services)
- **Authentication System**: Integrated Supabase-based authentication with stream-based user state management and JWT token handling
- **Data Layer**: Structured backend API integration with database queries and external API calls (QR code generation)
- **Navigation Framework**: Configured GoRouter-based navigation with app state management and page routing logic
- **Component Development**: Created reusable UI components (sidebar, popups, forms) following FlutterFlow conventions
- **State Management**: Implemented Provider-based reactive state management for efficient data binding
- **Theme Configuration**: Established consistent theming system with dark/light mode support
- **Responsive Design**: Ensured responsive web interface with adaptive layouts and auto-scaling components
- **API Integration**: Integrated third-party QR code generation API with error handling
- **Development Standards**: Configured linting rules and code analysis for maintaining code quality

## Future Improvements

- **Mobile App Optimization**: Develop native mobile app for iOS/Android with offline-first capability
- **Advanced Analytics**: Implement predictive maintenance scheduling and compliance reporting
- **Geolocation Features**: Add GPS-based equipment tracking and location-based alerts
- **Export Functionality**: Enable PDF/Excel export of equipment reports for auditing
- **Bulk Operations**: Implement batch import/export of equipment data via CSV
- **Notification System**: Add push notifications for expiration dates and maintenance reminders
- **Audit Logging**: Implement comprehensive activity logging for compliance tracking
- **Role-Based Access**: Enhance permission system with granular role management
- **Integration APIs**: Expose REST APIs for third-party system integration
- **Multi-Language Support**: Extend localization beyond Portuguese and English

## Team

This project was developed by a team of **Computer Science students** from the **Mauá Institute of Technology** in partnership with **São Paulo Metro (Metrô de SP)**.

### Team Members
- Mitchell Santana Miyake (23.10270-5)
- Enrico Orlando Bernardi de Oliveira (23.01355-9)
- Arthur Baptista Falzetta (23.00800-8)
- Murilo Sucupira Sacchi (23.10260-8)
- Ramon Santos Pereira (22.00049-6)
- Cayan Neres Claro (23.01232-3)

---

**Last Updated**: 2024
**Platform**: Flutter/Dart
**Database**: Supabase (PostgreSQL/MySQL)
Contribuições são bem-vindas! Caso tenha sugestões ou encontre problemas, sinta-se à vontade para abrir um issue ou enviar um pull request.

# Nota
Essa é a versão de computador que possui de maneira complementar vínculo com o repositório [mobile](https://github.com/murilosacchi/projeto_integrador_3s_mobile).

# Links Relevantes
- [Documentação](https://mauabr-my.sharepoint.com/:w:/g/personal/22_00049-6_maua_br/EQwqUZU0zPVJlipYw2JiU8MBRA7FCh24GRNLXQw_R7qu_Q?e=71dwMk)
- [Figma](https://www.figma.com/design/jNDJQ6jvcmyRAn8YvjeCc4/PI---Metro?node-id=78-81&t=wYoA5JxwjsheBRtk-1)


![metro sp 50 50](https://github.com/user-attachments/assets/75170002-b18f-49ee-8caa-ba65e6eef623) 
