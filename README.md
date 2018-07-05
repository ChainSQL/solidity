# The Solidity Contract-Oriented Programming Language
[![Join the chat at https://gitter.im/ethereum/solidity](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ethereum/solidity?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Build Status](https://travis-ci.org/ethereum/solidity.svg?branch=develop)](https://travis-ci.org/ethereum/solidity)

## Useful links
To get started you can find an introduction to the language in the [Solidity documentation](https://solidity.readthedocs.org). In the documentation, you can find [code examples](https://solidity.readthedocs.io/en/latest/solidity-by-example.html) as well as [a reference](https://solidity.readthedocs.io/en/latest/solidity-in-depth.html) of the syntax and details on how to write smart contracts.

You can start using [Solidity in your browser](http://remix.ethereum.org) with no need to download or compile anything.

The changelog for this project can be found [here](https://github.com/ethereum/solidity/blob/develop/Changelog.md).

Solidity is still under development. So please do not hesitate and open an [issue in GitHub](https://github.com/ethereum/solidity/issues) if you encounter anything strange.

## Building
### Building executable solc on linux/window

#### Clone the Repository

```
> git clone git@github.com:ChainSQL/solidity.git
> cd solidity
```

#### Prerequisites 

##### 1. macOS

​	For macOS, ensure that you have the latest version of  [Xcode installed](https://developer.apple.com/xcode/download/) . This contains the [Clang C++ compiler](https://en.wikipedia.org/wiki/Clang), the [Xcode IDE](https://en.wikipedia.org/wiki/Xcode) and other Apple development tools which are required for building C++ applications on OS X. If you are installing Xcode for the first time, or have just installed a new version then you will need to agree to the license before you can do command-line builds: 

```
> sudo xcodebuild -license accept
```

Our OS X builds require you to [install the Homebrew](http://brew.sh/) package manager for installing external dependencies. Here’s how to [uninstall Homebrew](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/FAQ.md#how-do-i-uninstall-homebrew), if you ever want to start again from scratch. 

2. ##### Windows

   You will need to install the following dependencies for Windows builds of Solidity: 

   | Software                                                     | Notes                                               |
   | ------------------------------------------------------------ | --------------------------------------------------- |
   | [Git for Windows](https://git-scm.com/download/win)          | Command-line tool for retrieving source from Github |
   | [CMake](https://cmake.org/download/)                         | Cross-platform build file generator                 |
   | [Visual Studio 2017 Build Tools](https://www.visualstudio.com/downloads/#build-tools-for-visual-studio-2017) | C++ compiler                                        |
   | [Visual Studio 2017](https://www.visualstudio.com/vs/) (Optional) | C++ compiler and dev environment                    |

   If you’ve already had one IDE and only need compiler and libraries, you could install Visual Studio 2017 Build Tools.

   Visual Studio 2017 provides both IDE and necessary compiler and libraries. So if you have not got an IDE and prefer to develop solidity, Visual Studio 2017 may be an choice for you to get everything setup easily.

   Here is the list of components that should be installed in Visual Studio 2017 Build Tools or Visual Studio 2017:

   - Visual Studio C++ core features
   - VC++ 2017 v141 toolset (x86,x64)
   - Windows Universal CRT SDK
   - Windows 8.1 SDK
   - C++/CLI support

### External Dependencies

​	We now have a “one button” script which installs all required external dependencies on macOS, Windows and on numerous Linux distros. This used to be a multi-step manual process, but is now a one-liner: 

```
> ./scripts/install_deps.sh
```

Or, on windows:

```
> scripts\install_deps.bat
```



#### Command-Line Build

**Be sure to install External Dependencies (see above) before build.** 

Solidity project uses CMake to configure the build. Building Solidity is quite similar on Linux, macOS and other Unices: 

```
> mkdir build
> cd build
> cmake ..
> make -j2
```

And even for Windows: 

```
> mkdir build
> cd build
> cmake -G "Visual Studio 15 2017 Win64" ..
```

This latter set of instructions should result in the creation of **solidity.sln** in that build directory. Double-clicking on that file should result in Visual Studio firing up. We suggest building **RelWithDebugInfo** configuration, but all others work.

Alternatively, you can build for Windows on the command-line, like so:

```
cmake --build . --config RelWithDebInfo
```



### Building soljson.js on linux

#### Prerequisites

1. sudo apt-get install docker

#### Execute buiding commands

```bash
> sudo ./scripts/build_emscripten.sh
```



## How to Contribute
Please see our [contribution guidelines](https://solidity.readthedocs.io/en/latest/contributing.html) in the Solidity documentation.

Any contributions are welcome!

## Reference

See the [Solidity documentation](https://solidity.readthedocs.io/en/latest/installing-solidity.html#building-from-source) for build instructions 