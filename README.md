# ci-tools

This repository provides a bunch of convenience scripts that can be used in
configurations for CI providers like [Travis CI] and [AppVeyor].

  [Travis CI]: https://travis-ci.org/
  [AppVeyor]: https://ci.appveyor.com/

## Contents

__`get-os-name`__

> Determines the name of the current operating system. If the variable
> `$TRAVIS_OS_NAME` is set, it will be returned as-is, otherwise the OS
> name is infered from the `uname` command. On Windows, only the name
> `MSYS_NT` is currently accepted.
>
> Echos to stdout one of the following: `windows`, `linux`, `osx`
>
> __Availability__: Windows (Bash), Linux, OSX

__`get-ninja`__ `version dir`

> Download the [Ninja] build system of the specified *version* and place the
> `ninja` binary into *dir*.
>
> __Availability__: Windows, Linux, OSX

  [Ninja]: https://ninja-build.org

__`get-xcode-cltools`__ `version dir`

> Download an XCode CommandLineTools disk image and install it into *dir*. The
> *version* must be a version string of the format `<XCODE>-<OSX>-<DATE>`, for
> example `5.0-10.08-2013.09.18`. Available versions can be checked
> [here][XCode Versions].
>
> __Availablity__: OSX

  [XCode Versions]: https://github.com/NiklasRosenstein/xcode-cltools-installer/wiki/XCode-Versions
