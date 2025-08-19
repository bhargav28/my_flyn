#  🛠️ Project Summary – My Flyn
## Project Description

 - My Flyn is a Flutter project implementing a campaign management system with features such as:
 - Campaign listing and status tracking (CampaignListViewWidget, CampaignStatusWidget)
 - User and profile management (MyInformationPage, SetPasswordPage)
 - Reactive UI using GetX for state management
 - The project follows clean architecture with data, domain, and presentation layers, using repositories, use-cases, and mappers.


''' Flutter
lib/
├── core/                 # Network & error handling
│   ├── error/
│   └── network/
├── get_it_configuration/ # Dependency injection
├── src/
│   ├── app/
│   │   ├── home/
│   │   │   ├── data/        # Models, mappers, repositories, data sources
│   │   │   ├── domain/      # Entities, repositories, use cases
│   │   │   └── presentations/
│   │   │       ├── controller/
│   │   │       ├── pages/
│   │   │       └── widgets/
│   ├── common/              # Constants & reusable widgets
│   ├── routes/              # App navigation
│   └── utils/               # Helper files, dummy data, app config
'''




## Highlights:
 - Clean separation of View / Controller / Domain / Data layers
 - GetX controllers in controller/ folder
 - Modular widgets for reuse (common/widgets/ and presentations/widgets/)
 - Network & error handling in core/


## Dependencies

 - State Management: get: ^4.7.2
 - Dependency Injection: get_it + injectable
 - Navigation: go_router
 - File/Image Picking: image_picker, file_picker
 - Other: flutter_svg, equatable, dartz



## Running the Project
### 1. Clone repo:

    git clone https://github.com/bhargav28/my_flyn.git
  
    cd my_flyn

### 2. Install dependencies:

    flutter pub get

### 3. Code generation

    flutter packages pub run build_runner build --delete-conflicting-outputs

### 4. Run on Emulator/Device

    flutter run

### 5. Build release version

    flutter build apk --release


## Implementation Decisions

 - Architecture: Clean architecture with data, domain, presentation separation
 - State Management: GetX (Rx + Obx) for reactive UI updates
 - DI: Used get_it with injectable for automatic dependency injection
 - Permissions: Handled camera, gallery, and file access with runtime checks
 - Routing: go_router for type-safe and declarative navigation
 - Reusability: Common widgets & helpers for consistency