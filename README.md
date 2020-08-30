# Windows Setup

![Made with some language](https://img.shields.io/badge/powershell-blue?style=for-the-badge)
![Built with Love](https://img.shields.io/badge/built%20with-love-red?style=for-the-badge)
[![Project License](https://img.shields.io/github/license/pahimar/windows-setup?style=for-the-badge&color=blue)](./LICENSE.md)
[![Code of Conduct](https://img.shields.io/badge/code%20of-conduct-blue?style=for-the-badge)](./.github/CODE_OF_CONDUCT.md)
[![Contributions welcome](https://img.shields.io/badge/contributions-welcome-blue?style=for-the-badge)](./.github/CONTRIBUTING.md)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/pahimar/windows-setup?color=blue&style=for-the-badge)](https://github.com/pahimar/windows-setup/releases)

A collection of scripts for fresh Windows 10 installs.

## Overview

A collection of scripts to customize a fresh Windows 10 install.

## Features

1. A "de-bloat" script that removes a lot of the bloat that is present after a fresh OS install. This script is based off of https://github.com/farag2/Windows-10-Setup-Script
2. An application installation script based on [chocolatey](https://chocolatey.org/) that installs a specific set of packages from the chocolatey repo.

## Usage

### De-Bloat

The [de-bloat](./debloat.ps1) script runs through a long list of tweaks to reduce the amount of bloat present in a fresh OS install.

In order to run, from an elevated (aka, Run as Administrator) Powershell terminal run `.\debloat.ps1` and answer the prompts.

### Chocolatey

The [chocolatey](./setup.ps1) application setup script;

1. Checks to see if [chocolatey](https://chocolatey.org/) is already installed (and installs it if it's not found).
2. Reads the contents of [applications](./applications.txt) file, and for every entry, installs the package from the [chocolatey repo](https://chocolatey.org/packages).

## Releases

Check out the [Releases](https://github.com/pahimar/windows-setup/releases) page to download the latest release.

## Contributing

Contributions are vital to the health and longevity of open source projects, and they are always welcome here! Please check out the [Contributing guide](./.github/CONTRIBUTING.md) as well as the [setup guide](./.github/PROJECT_SETUP.md) to get started.

## Community

Feel free to join our community!

[![Follow me on Twitter](https://img.shields.io/twitter/follow/pahimar?style=for-the-badge&logo=twitter&logoColor=white&color=blue)](https://twitter.com/pahimar/)
[![Join us on Discord](https://img.shields.io/discord/134733695373410304?label=discord&style=for-the-badge&logo=discord&logoColor=white&color=blue)](https://discord.gg/s7Jxz6Y)

## Sponsorship

If you enjoy my work and would like to support it, please feel free to [become a patron](https://www.patreon.com/pahimar) of mine on Patreon. This is by **no** means necessary - if you got something out of any of my projects that is more than enough for me!

[![Become a patron](https://c5.patreon.com/external/logo/become_a_patron_button.png)](https://www.patreon.com/pahimar)

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://www.pahimar.dev/"><img src="https://avatars2.githubusercontent.com/u/1450090?v=4" width="100px;" alt=""/><br /><sub><b>Rob Davis</b></sub></a><br /><a href="https://github.com/pahimar/dot-github/commits?author=pahimar" title="Documentation">📖</a> <a href="https://github.com/pahimar/dot-github/commits?author=pahimar" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors)
specification. Contributions of any kind welcome!

## License

This project is provided under the [MIT License](LICENSE.md) &copy; 2020 Rob Davis.
