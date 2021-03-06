# crystal-gsl

### Status
[![Build Status](https://travis-ci.org/ruivieira/crystal-gsl.svg?branch=master)](https://travis-ci.org/ruivieira/crystal-gsl.svg?branch=master)

GNU Scientific Library (GSL) binding for Crystal

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  gsl:
    github: ruivieira/crystal-gsl
```
## System dependencies

### Ubuntu < 16.04 

* libgsl0-dev 
* gsl-bin

### Ubuntu >= 16.04

* libgsl-dev
* gsl-bin

### Fedora

* gsl
* gsl-devel

## Usage

```crystal
require "gsl"
```

### Documentation

Full documentation can be found at [here](https://ruivieira.github.io/crystal-gsl/).

### Examples

Examples can be found [here](https://ruivieira.github.io/projects/crystal-gsl/).

*Warning*:

- Not fully test
- Pre-release (API will break)
- Not fit for production



## Contributing

1. Fork it ( https://github.com/ruivieira/crystal-gsl/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

### Developing Depencies

* Ruby & rake
* [crystal-icr](https://github.com/greyblake/crystal-icr) , > 0.2.10 // Install manually not by shard install


## Contributors

- [ruivieira](https://github.com/ruivieira) Rui Vieira - creator, maintainer
- [dylandy](https://github.com/dylandy) Dylandy Chang - developer, maintainer
