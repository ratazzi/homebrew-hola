# Homebrew Tap for Hola

Hola is a single-binary configuration management tool for macOS. Set up your Mac in minutes with Brewfile + mise.toml + dotfiles.

## Installation

```bash
brew tap ratazzi/hola
brew install hola
```

## Usage

```bash
# Bootstrap your Mac from a dotfiles repo
hola apply --github username/dotfiles

# Or use a full Git URL
hola apply --repo https://github.com/username/dotfiles.git

# Run provisioning scripts
hola provision ~/.config/hola/provision.rb

# Show help
hola --help
```

## Features

- **Zero learning curve**: Uses Brewfile and mise.toml you already know
- **Single binary**: No runtime dependencies, ~6MB, 8ms cold start
- **Cross-platform**: Supports both arm64 and x86_64 Macs
- **Idempotent**: Safe to run multiple times
- **Ruby DSL**: Advanced provisioning with embedded mruby interpreter

## Update

```bash
brew update
brew upgrade hola
```

## Uninstall

```bash
brew uninstall hola
brew untap ratazzi/hola
```

## More Information

- [GitHub Repository](https://github.com/ratazzi/hola)
- [Documentation](https://github.com/ratazzi/hola#readme)

## License

MIT
