# Unit Converter

This is a simple web application that allows users to convert between different units of measurement.

## Requirements

- Ruby 3.0.0
- Rails 6.1.3
- Bundler 2.2.9

## Installation

1. Clone the repository to your local machine.

```sh
git clone https://github.com/Jhon112/unit-converter.git
cd unit-converter
```

2. Then, you can install the project's dependencies by running:

```sh
bundle install
```

## Usage

To run the application, you can start a local server by running:

```sh
  rails server
```

You can then navigate to `http://localhost:3000` in your web browser to access the application.

The application allows you to convert units of measurement by entering a query in the format `value unit1 in unit2`, where `value` is the numerical value of the measurement, `unit1` is the unit you want to convert from, and `unit2` is the unit you want to convert to. For example, to convert 2 kilograms to pounds, you would enter `2kg in lb` in the input box.

The application can convert the following types of units:

- Mass: kilograms (kg), pounds (lb)
- Length: meters (m), feet (ft)

## Development

If you want to make changes to the application, you can run the test suite to ensure that everything is working correctly:

```sh
rspec
```

The application's tests are located in the `spec` directory.

## Contributing

If you want to contribute to the code, you can fork the repository and submit a pull request:

- [Unit Converter Repository](https://github.com/Jhon112/unit-converter)
