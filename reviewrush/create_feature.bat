@echo off
set /p FEATURE_NAME="Enter feature name: "

:: Create folders for Clean Architecture
mkdir lib\features\%FEATURE_NAME%\data\datasources
mkdir lib\features\%FEATURE_NAME%\data\repositories
mkdir lib\features\%FEATURE_NAME%\data\models
mkdir lib\features\%FEATURE_NAME%\domain\entities
mkdir lib\features\%FEATURE_NAME%\domain\repositories
mkdir lib\features\%FEATURE_NAME%\domain\usecases
mkdir lib\features\%FEATURE_NAME%\presentation\blocs
mkdir lib\features\%FEATURE_NAME%\presentation\screens
mkdir lib\features\%FEATURE_NAME%\presentation\widgets

:: Create Dart files for Data layer
echo // RemoteDataSource file > lib\features\%FEATURE_NAME%\data\datasources\%FEATURE_NAME%_remote_data_source.dart
echo // LocalDataSource file > lib\features\%FEATURE_NAME%\data\datasources\%FEATURE_NAME%_local_data_source.dart
echo // Model file > lib\features\%FEATURE_NAME%\data\models\%FEATURE_NAME%_model.dart
echo // Repository Implementation file > lib\features\%FEATURE_NAME%\data\repositories\%FEATURE_NAME%_repository_impl.dart

:: Create Dart files for Domain layer
echo // Entity file > lib\features\%FEATURE_NAME%\domain\entities\%FEATURE_NAME%_entity.dart
echo // Repository Interface file > lib\features\%FEATURE_NAME%\domain\repositories\%FEATURE_NAME%_repository.dart
echo // Use Case file > lib\features\%FEATURE_NAME%\domain\usecases\%FEATURE_NAME%_use_case.dart

:: Create Dart files for Presentation layer
echo // BLoC file > lib\features\%FEATURE_NAME%\presentation\blocs\%FEATURE_NAME%_bloc.dart
echo // Screen file > lib\features\%FEATURE_NAME%\presentation\screens\%FEATURE_NAME%_screen.dart
echo // Widget file > lib\features\%FEATURE_NAME%\presentation\widgets\%FEATURE_NAME%_widget.dart

echo Folder structure and Dart files for feature '%FEATURE_NAME%' created successfully!
