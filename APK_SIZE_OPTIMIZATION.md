# APK Size Optimization - Architecture Splitting

## Problem
The original APK was ~160MB (expanding to 250+ MB after installation) because it included all CPU architectures in a single package.

## Solution
We now build separate APKs for each CPU architecture, significantly reducing download size.

## Available APK Types

### 🏆 **Primary Recommendation**
**`updatium-{commit}-arm64-v8a.apk`** - **64-bit ARM**
- **Target**: Modern phones (2017+)
- **Size**: ~30-40% smaller than universal
- **Performance**: Best performance on modern devices
- **Compatibility**: Most phones from 2017 onwards

### 📱 **Legacy Support**
**`updatium-{commit}-armeabi-v7a.apk`** - **32-bit ARM**
- **Target**: Older phones (pre-2017)
- **Size**: Similar to arm64-v8a
- **Performance**: Good compatibility, slightly slower than 64-bit
- **Compatibility**: Phones from 2008-2017

### 🖥️ **Testing/Emulation**
**`updatium-{commit}-x86_64.apk`** - **64-bit x86**
- **Target**: Android emulators, some tablets
- **Size**: Usually smallest
- **Performance**: Emulator optimization
- **Compatibility**: Development/testing only

### 📦 **Fallback Option**
**`updatium-{commit}-universal.apk`** - **All Architectures**
- **Target**: Devices that don't fit above categories
- **Size**: Largest (original ~160MB)
- **Performance**: Works on all devices
- **Compatibility**: 100% device coverage

## Size Comparison (Expected)

| Architecture | Expected Size | Installation Size | Use Case |
|-------------|---------------|-------------------|----------|
| arm64-v8a   | ~60-80MB      | ~120-150MB        | Most phones |
| armeabi-v7a | ~60-80MB      | ~120-150MB        | Older phones |
| x86_64      | ~50-70MB      | ~100-130MB        | Emulators |
| universal   | ~160MB        | ~250MB+           | Fallback |

## How to Choose

1. **For most users**: Choose `arm64-v8a` (64-bit phones)
2. **For older phones**: Choose `armeabi-v7a` (32-bit phones)
3. **For developers**: Choose `x86_64` for emulator testing
4. **If unsure**: Choose `universal` (works everywhere)

## Device Detection

You can check your device's architecture using:
- AIDA64 app
- CPU-Z app
- `adb shell getprop ro.product.cpu.abi`

## Benefits

- ✅ **60% smaller downloads** for most users
- ✅ **Faster installation** due to smaller size
- ✅ **Better performance** (optimized for specific architecture)
- ✅ **Reduced storage usage** on device
- ✅ **Faster updates** (smaller delta)

## Implementation Details

The CI workflow now:
1. Builds debug APKs with `--split-per-abi` flag
2. Creates separate APKs for each architecture
3. Provides size information for each variant
4. Maintains universal APK as fallback

This approach maintains compatibility while dramatically reducing APK size for the majority of users.
