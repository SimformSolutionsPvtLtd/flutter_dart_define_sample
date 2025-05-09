# 🔐 Secure Config in Flutter with --dart-define

This repo demonstrates how to **safely manage secrets and environment variables** in your Flutter app using Flutter's official `--dart-define` and `--dart-define-from-file` options — no `.env` files needed!

## 🚀 Why Use This?

Many developers rely on `.env` files or third-party packages to handle sensitive values like API keys or tokens. But here's the thing:

> Secrets stored in `.env` files often end up bundled in your app's assets — making them easy to extract with reverse engineering.

**This repo shows a better way.** A secure, build-time solution — built right into Flutter.

## 📦 What's Inside

- `main.dart` — Uses values injected via `--dart-define-from-file`
- `secrets.json` — Example JSON file passed using `--dart-define-from-file`
- Clear instructions on how to build and run securely

## 🛠️ How to Use

```bash
flutter run --dart-define-from-file=secrets.json
```