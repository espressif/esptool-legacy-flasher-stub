# esptool-legacy-flasher-stub

> **This repository is deprecated.**
>
> Development has moved to **[esp-flasher-stub](https://github.com/espressif/esp-flasher-stub)**. That project is the supported replacement for this legacy flasher stub and will receive ongoing maintenance and new chip support from Espressif.
>
> Do not start new work here. For bug fixes, features, and new targets, use [esp-flasher-stub](https://github.com/espressif/esp-flasher-stub) instead.

## About this project

This repository contains the original flasher stub that was extracted from [esptool](https://github.com/espressif/esptool). The stub is a small program loaded into chip RAM during flashing. It provides faster flash operations and features beyond what the ROM bootloader offers.

It is kept available for reference and for users who still depend on the legacy implementation. It is not actively developed and will not receive official support from Espressif.


## How To Use

1. Install esptool in [development mode](https://docs.espressif.com/projects/esptool/en/latest/esp32/contributing.html#development-setup).
2. Obtain the flasher stub binaries as JSON files either from the [releases page](https://github.com/espressif/esptool-legacy-flasher-stub/releases) or from the artifacts of your pull request.
3. Replace the esptool's JSONs files in the `esptool/targets/stub_flasher` directory with the obtained JSON files.

## Issue Tracker

Please report issues in [the esptool repository](https://github.com/espressif/esptool/issues) if you encounter any.

## About

This flasher stub was initially part of the [esptool](https://github.com/espressif/esptool) project.

## Contributing

This repository is deprecated and not accepting new features or chip targets. Please contribute to [esp-flasher-stub](https://github.com/espressif/esp-flasher-stub) instead.

## How To Release (For Maintainers Only)

```bash
pip install commitizen
git fetch
git checkout -b update/release_v1.1.0
git reset --hard origin/master
cz bump
git push -u
git push --tags
```
Create a pull request and edit the automatically created draft [release notes](https://github.com/espressif/esptool-legacy-flasher-stub/releases).

## License

This document and the attached source code are released as Free Software under GNU General Public License Version 2 or later. See the accompanying [LICENSE file](https://github.com/espressif/esptool-legacy-flasher-stub/blob/master/LICENSE) for a copy.
