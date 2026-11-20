# ZOrderly Homebrew Tap

This third-party tap installs the [ZOrderly](https://github.com/rszabo50/zorderly) macOS app. The current `v0.1.0` package is an **unnotarized preview** for Apple Silicon on macOS 13 or later. It is not part of Homebrew's official cask repository.

```sh
brew install --cask rszabo50/zorderly/zorderly
```

The fully qualified command trusts this cask without trusting every future item in the tap. The cask verifies the release ZIP with a pinned SHA-256 checksum and installs `ZOrderly.app` into Applications.

macOS may block the app's first launch because it is not Developer ID signed or Apple notarized. Review the project and release before choosing whether to approve it in **System Settings → Privacy & Security**. ZOrderly also needs Accessibility access for its focus policies; macOS may require that permission again after an update.

To upgrade after a new cask version is published:

```sh
brew update
brew upgrade --cask rszabo50/zorderly/zorderly
```

The source code and MIT license are in the [main ZOrderly repository](https://github.com/rszabo50/zorderly).
