# esptool-legacy-flasher-stub

This project is based on the original flasher stub of [esptool](https://github.com/espressif/esptool). It will be deprecated in the near future. It is not advised to base projects on it because it won't receive official support from Espressif Systems. The new and supported flasher stub will be the [esp-flasher-stub](https://github.com/espressif/esp-flasher-stub) project.

# How To Use

1. Install esptool in [development mode](https://docs.espressif.com/projects/esptool/en/latest/esp32/contributing.html#development-setup).
2. Obtain the flasher stub binaries as JSON files either from the [releases page](https://github.com/espressif/esptool-legacy-flasher-stub/releases) or from the artifacts of your pull request.
3. Replace the esptool's JSONs files in the `esptool/targets/stub_flasher` directory with the obtained JSON files.

## Issue Tracker

Please report issues in [the esptool repository](https://github.com/espressif/esptool/issues) if you encounter any.

## About

This flasher stub was initially part of the [esptool](https://github.com/espressif/esptool) project.

## Contributing

Please install the [pre-commit](https://pre-commit.com/) hooks to ensure that your commits are properly formatted:

```bash
pip install pre-commit
pre-commit install -t pre-commit -t commit-msg
```

# How To Release (For Maintainers Only)

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
