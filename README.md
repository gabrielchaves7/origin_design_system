# Origin Design System

Origin design system is the package where we have all the design system components for origin. The architecture of the package follow the atomic design pattern.

## Getting Started 🚀

### Flutter

The first thing you need is to setup flutter, please follow the steps:

1. https://docs.flutter.dev/get-started/install
2. https://docs.flutter.dev/get-started/editor

### Running the project

Since this project is a package, it's not possible to run it. You need to have origin_widgetbook installed to be able to open and navigate between the components :)

## Continuous Integration 🤖
On each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Workflows][very_good_coverage_link] for Code coverage.

---
## Running Tests 🧪

### Unit tests

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
