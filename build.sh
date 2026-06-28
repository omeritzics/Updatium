#!/bin/bash

# Updatium Build Script
# This script builds the Updatium Flutter application for Android

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${PROJECT_DIR}/build"
FLUTTER_VERSION_MIN="3.40.0"

# print_info prints an informational message in green.
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# print_error prints an error message with error formatting.
print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# print_warning prints a warning message with a warning label.
print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# check_flutter verifies that Flutter and Dart are installed and prints the Flutter version.
check_flutter() {
    print_info "Checking Flutter installation..."
    
    if ! command -v flutter &> /dev/null; then
        print_error "Flutter is not installed or not in PATH"
        exit 1
    fi
    
    local flutter_version=$(flutter --version 2>&1 | head -n 1 | awk '{print $2}')
    print_info "Flutter version: $flutter_version"
    
    if ! command -v dart &> /dev/null; then
        print_error "Dart is not installed or not in PATH"
        exit 1
    fi
}

# check_java verifies that Java 17 or higher is installed and configures JAVA_HOME and Gradle to use it.
check_java() {
    print_info "Checking Java installation..."
    
    if ! command -v java &> /dev/null; then
        print_error "Java is not installed or not in PATH"
        exit 1
    fi
    
    local java_version=$(java -version 2>&1 | head -n 1 | awk -F '"' '{print $2}' | cut -d'.' -f1)
    print_info "Java version: $java_version"
    
    if [ "$java_version" -lt 17 ]; then
        print_error "Java 17 or higher is required"
        exit 1
    fi
    
    # Set JAVA_HOME to the Java installation directory
    if [ -z "$JAVA_HOME" ]; then
        local java_home=$(dirname $(dirname $(readlink -f $(which java))))
        export JAVA_HOME="$java_home"
        print_info "JAVA_HOME set to: $JAVA_HOME"
    fi
    
    # Set Gradle Java home as environment variable
    export ORG_GRADLE_PROJECT_jdkHome="$JAVA_HOME"
    
    # Configure Gradle to use system Java
    export GRADLE_OPTS="--enable-native-access=ALL-UNNAMED $GRADLE_OPTS"
    
    # Note: Toolchain downloading is configured via the foojay-resolver-convention plugin
    # in android/settings.gradle.kts, so Gradle will automatically download JDK 21 if needed.
}

# clean_build removes previous Flutter build artifacts by running flutter clean in the project directory.
clean_build() {
    print_info "Cleaning previous builds..."
    cd "$PROJECT_DIR"
    flutter clean
}

# get_dependencies fetches the Flutter package dependencies for the project.
get_dependencies() {
    print_info "Getting Flutter dependencies..."
    cd "$PROJECT_DIR"
    flutter pub get
}

# build_apk builds an APK for the specified flavor and build type and prints the expected output path.
build_apk() {
    local flavor=$1
    local build_type=$2
    
    print_info "Building APK for flavor: $flavor, build type: $build_type"
    
    cd "$PROJECT_DIR"
    
    # Configure Gradle to use system Java
    export GRADLE_JDK_HOME="$JAVA_HOME"
    export JAVA_HOME="$JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$PATH"
    
    if [ "$build_type" = "release" ]; then
        flutter build apk --release --flavor $flavor
    else
        flutter build apk --debug --flavor $flavor
    fi
    
    local output_dir="${PROJECT_DIR}/build/app/outputs/flutter-apk"
    if [ "$build_type" = "release" ]; then
        print_info "APK built successfully: ${output_dir}/app-$flavor-release.apk"
    else
        print_info "APK built successfully: ${output_dir}/app-$flavor-debug.apk"
    fi
}

# build_appbundle builds a release Android App Bundle for the specified flavor and prints the expected output path.
# @param flavor The Flutter build flavor to bundle.
build_appbundle() {
    local flavor=$1
    
    print_info "Building App Bundle for flavor: $flavor"
    
    cd "$PROJECT_DIR"
    flutter build appbundle --release --flavor $flavor
    
    local output_dir="${PROJECT_DIR}/build/app/outputs/bundle/$flavor"
    print_info "App Bundle built successfully: ${output_dir}/app-$flavor-release.aab"
}

# build_all builds the normal and fdroid APK variants in both debug and release modes.
build_all() {
    print_info "Building all variants..."
    
    local flavors=("normal" "fdroid")
    local build_types=("debug" "release")
    
    for flavor in "${flavors[@]}"; do
        for build_type in "${build_types[@]}"; do
            build_apk $flavor $build_type
        done
    done
    
    print_info "All variants built successfully"
}

# usage displays the command-line help and example invocations for the build script.
usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -f, --flavor FLAVOR     Build flavor (normal|fdroid)"
    echo "  -t, --type TYPE         Build type (debug|release)"
    echo "  -b, --bundle            Build App Bundle instead of APK"
    echo "  -a, --all               Build all variants"
    echo "  -c, --clean             Clean before build"
    echo "  -h, --help              Display this help message"
    echo ""
    echo "Examples:"
    echo "  $0 -f normal -t release"
    echo "  $0 -f fdroid -t debug"
    echo "  $0 -f normal -t release -b"
    echo "  $0 -a"
    echo ""
}

# Parse command line arguments
FLAVOR=""
BUILD_TYPE=""
BUILD_BUNDLE=false
BUILD_ALL=false
CLEAN=false

while [[ $# -gt 0 ]]; do
    case $1 in
        -f|--flavor)
            FLAVOR="$2"
            shift 2
            ;;
        -t|--type)
            BUILD_TYPE="$2"
            shift 2
            ;;
        -b|--bundle)
            BUILD_BUNDLE=true
            shift
            ;;
        -a|--all)
            BUILD_ALL=true
            shift
            ;;
        -c|--clean)
            CLEAN=true
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            usage
            exit 1
            ;;
    esac
done

# Main script execution
print_info "Starting Updatium build process..."

# Check prerequisites
check_flutter
check_java

# Clean if requested
if [ "$CLEAN" = true ]; then
    clean_build
fi

# Get dependencies
get_dependencies

# Build based on options
if [ "$BUILD_ALL" = true ]; then
    build_all
elif [ -n "$FLAVOR" ] && [ -n "$BUILD_TYPE" ]; then
    if [ "$BUILD_BUNDLE" = true ]; then
        if [ "$BUILD_TYPE" != "release" ]; then
            print_warning "App Bundle is only available for release builds. Building release..."
            BUILD_TYPE="release"
        fi
        build_appbundle $FLAVOR
    else
        build_apk $FLAVOR $BUILD_TYPE
    fi
else
    print_error "Invalid options. Please specify flavor and build type, or use --all"
    usage
    exit 1
fi

print_info "Build process completed successfully!"
