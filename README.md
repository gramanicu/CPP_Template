# CPP_Template

This is a simple bash script (c++proj) that creates a cpp project template (.cpp file and a makefile with a .clang-format file, used to style the code)

> **_NOTE:_** This is the continuation of another project (C_Template), updated for the C++ language
---

# Instalation

There are two ways to install this utility. You can install it for all users, using the `install.sh` script, or just for the current user, using `localInstal.sh` script.

Run one of this commands
- `./install.sh` - global installation
- `./localInstall.sh` - local installation

Now you should run the command from anywhere, using the `c++proj` command from the terminal.

> **_NOTE_** Everytime the script is run, it will try to get the latest version of the script from github. But, the changes will apply the next time the script is executed.

# Run arguments
- The script can use up to 3 arguments
    1. Source name
    2. Executable name
    3. Archive name
- All 3 of them should not include an extension (because it will be changed anyway)

#### No arguments used
- the source, executable and archive names will be equal to the working directory's name
```bash
user@workstation:~/Project$ c++proj
Project.cpp
Project
Project.zip
```

#### 1 argument used
- the source and executable name will be the one specified, the archive name will be equal to the working directory name
```bash
user@workstation:~/Project$ c++proj main
main.cpp
main
Project.zip
```

#### 2 arguments used
- the source and archive name will be equal to the first argument, the executable name will be
the second argument
```bash
user@workstation:~/Project$ c++proj main exe
main.cpp
exe
main.zip
```

#### 3 or more arguments used
- the source name will be the first argument, the executable will be the second, and the archive name will be the 3rd. All other arguments will be ignored
```bash
user@workstation:~/Project$ c++proj main exe archive
main.cpp
exe
archive.zip
```

# Makefile commands

- **build** - compiles the program
- **run** - compiles and executes the program
- **pack** - creates an archive with all source files (*.cpp & *.h), README file and the Makefile
- **clean** - deletes the executable and object files
- **beauty** - styles the code, using the google standard (except the indentation, 4 spaces instead of 2)
- **memory** - runs valgrind for the program, to check for memory leaks
- **gitignore** - add/updates the gitignore rules

© 2019 Grama Nicolae
