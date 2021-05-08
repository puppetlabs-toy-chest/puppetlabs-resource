# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v2.0.0](https://github.com/puppetlabs/puppetlabs-resource/tree/v2.0.0) (2021-05-08)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/v1.1.0...v2.0.0)

### Changed

- pdksync - Remove Puppet 5 from testing and bump minimal version to 6.0.0 [\#111](https://github.com/puppetlabs/puppetlabs-resource/pull/111) ([carabasdaniel](https://github.com/carabasdaniel))

### Added

- pdksync - \(feat\) - Add support for Puppet 7 [\#108](https://github.com/puppetlabs/puppetlabs-resource/pull/108) ([daianamezdrea](https://github.com/daianamezdrea))
- pdksync - \(IAC-973\) - Update travis/appveyor to run on new default branch `main` [\#100](https://github.com/puppetlabs/puppetlabs-resource/pull/100) ([david22swan](https://github.com/david22swan))

## [v1.1.0](https://github.com/puppetlabs/puppetlabs-resource/tree/v1.1.0) (2019-12-09)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/v1.0.0...v1.1.0)

### Added

- pdksync - "MODULES-10242 Add ubuntu14 support back to the modules" [\#75](https://github.com/puppetlabs/puppetlabs-resource/pull/75) ([sheenaajay](https://github.com/sheenaajay))

## [v1.0.0](https://github.com/puppetlabs/puppetlabs-resource/tree/v1.0.0) (2019-12-02)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/v0.4.0...v1.0.0)

### Changed

- pdksync - FM-8499 remove ubuntu 14 support [\#73](https://github.com/puppetlabs/puppetlabs-resource/pull/73) ([lionce](https://github.com/lionce))

### Added

- \(FM-8694\) - Addition of Support for CentOS 8 [\#70](https://github.com/puppetlabs/puppetlabs-resource/pull/70) ([david22swan](https://github.com/david22swan))

## [v0.4.0](https://github.com/puppetlabs/puppetlabs-resource/tree/v0.4.0) (2019-09-26)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/0.3.1...v0.4.0)

### Changed

- pdksync - \(MODULES-8444\) - Raise lower Puppet bound [\#51](https://github.com/puppetlabs/puppetlabs-resource/pull/51) ([david22swan](https://github.com/david22swan))

### Added

- \(FM-8158\) Add Windows Server 2019 support [\#56](https://github.com/puppetlabs/puppetlabs-resource/pull/56) ([eimlav](https://github.com/eimlav))
- \(FM-8046\) Add Redhat 8 support [\#55](https://github.com/puppetlabs/puppetlabs-resource/pull/55) ([sheenaajay](https://github.com/sheenaajay))

## [0.3.1](https://github.com/puppetlabs/puppetlabs-resource/tree/0.3.1) (2019-04-05)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/0.3.0...0.3.1)

### Fixed

- \(MODULES-8717\) Fix dependency issue with BoltSpec [\#43](https://github.com/puppetlabs/puppetlabs-resource/pull/43) ([eimlav](https://github.com/eimlav))

## [0.3.0](https://github.com/puppetlabs/puppetlabs-resource/tree/0.3.0) (2018-09-28)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-resource/compare/0.2.0...0.3.0)

### Added

- pdksync - \(FM-7392\) - Puppet 6 Testing Changes [\#30](https://github.com/puppetlabs/puppetlabs-resource/pull/30) ([pmcmaw](https://github.com/pmcmaw))
- pdksync - \(MODULES-7658\) use beaker4 in puppet-module-gems [\#26](https://github.com/puppetlabs/puppetlabs-resource/pull/26) ([tphoney](https://github.com/tphoney))
- \(FM-7267\) - Addition of support for ubuntu 18.04 [\#22](https://github.com/puppetlabs/puppetlabs-resource/pull/22) ([david22swan](https://github.com/david22swan))
- \[FM-7061\] Addition of Debian 9 support of resource [\#21](https://github.com/puppetlabs/puppetlabs-resource/pull/21) ([david22swan](https://github.com/david22swan))

### Fixed

- pdksync - \(FM-7655\) Fix rubygems-update for ruby \< 2.3 [\#36](https://github.com/puppetlabs/puppetlabs-resource/pull/36) ([tphoney](https://github.com/tphoney))
- pdksync - \(MODULES-6805\) metadata.json shows support for puppet 6 [\#28](https://github.com/puppetlabs/puppetlabs-resource/pull/28) ([tphoney](https://github.com/tphoney))
- pdksync - \(MODULES-7658\) use beaker3 in puppet-module-gems [\#24](https://github.com/puppetlabs/puppetlabs-resource/pull/24) ([tphoney](https://github.com/tphoney))
- \(MODULES-7645\) - Update README Limitations section [\#23](https://github.com/puppetlabs/puppetlabs-resource/pull/23) ([eimlav](https://github.com/eimlav))
- \(FM-6924\) - Change windows user to Administrator in tests [\#16](https://github.com/puppetlabs/puppetlabs-resource/pull/16) ([pmcmaw](https://github.com/pmcmaw))

## 0.2.0
### Summary
This makes the module PDK-compliant for easier maintenance. It also includes a roll up of maintenance changes.

### Added
- PDK conversion [MODULES-6466](https://tickets.puppetlabs.com/browse/MODULES-6466).

### Fixed
- Update bolt usage typo in README [MODULES-5945](https://tickets.puppetlabs.com/browse/MODULES-5945).

## Release 0.1.0
This is the initial release of the resource task.

## Features
- Retreive all resources of a specific type.
- Retrieve a named resource of a specific type.

[0.2.0]: https://github.com/puppetlabs/puppetlabs-resource/compare/0.1.0...0.2.0


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*
