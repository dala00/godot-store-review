# Godot Store Review

Godot store review module for iOS.

## How to use

1. Clone this repository
1. Copy `review` directory of this repository to `modules` directory of [Godot](https://github.com/godotengine/godot) repository.
1. [Recompile the iOS export template](https://docs.godotengine.org/en/stable/development/compiling/compiling_for_ios.html).
1. Add the -ObjC linker flag to Other Linker Flags in your project's build settings(?)

Last tried on Godot3.2.2

## API Reference

```python
if Engine.has_singleton("StoreReview"):
    _store_review = Engine.get_singleton("StoreReview")
    _store_review.requestReview()
```

## License

MIT

## Contribution

Feel free
