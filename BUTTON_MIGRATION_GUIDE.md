# Button Component Migration Guide

## Overview
This document outlines the migration from custom TextButton helper functions to official Flutter button components.

## Changes Made

### 1. Updated `lib/components/button_helpers.dart`
- **Added**: `AppTextButton` widget class that wraps Flutter's `TextButton`
- **Added**: `AppTextButtonWithIcon` widget class that uses Flutter's `TextButton.icon`
- **Deprecated**: `appTextButtonWithIcon()` helper function (kept for backward compatibility)

### 2. Updated Files
- `lib/components/generated_form_modal.dart` - Migrated to `AppTextButton`
- `lib/pages/apps.dart` - Migrated `getSelectAllButton()` to `AppTextButtonWithIcon`