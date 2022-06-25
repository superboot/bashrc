# Superbash: Speeding up with little aids

Superbash is a collection of enhancements to bash through small helper functions and an extension/wrapper of the cd (change directory) command, adding breadcrumb traversal and bookmarks. Additionally there is a describe() function (aliased to 'd' by default) that introspects the environment for a name and returns details for it.

Other niceties are the debugging functions as well as the function tracing functions called at the top of the included functions. The idiom can be copied into your own scripts if proffered 

## Installing
The idea is to clone the repo and run the setup script. 
It will move existing .bashrc etc into the ~/.bash/local/ directory, and 
symlink to the appropriate file in ~/.bash/, which then includes the default ~/.bash/local version at the end.

1. Clone the repo and move it to ~/.bash
2. cd ~/.bash
3. ./setup

## Usage

### CD enhancements
**Keybindings**
1. Alt-p  -- Print breadcrums list with position arrow.
2. Alt-o  -- Traverse back one directory.
3. Alt-i  -- Traverse forward one directory.

**Commands**
cd <n>     -- Change directory to breadcrumb number <n>.
cd ./n     -- Change directory to directory named ./n
..         -- Change directory to parent.
upto <dir> -- Change directory up to the named parent directory in the PWD path.

### Describe
The describe() function returns the usages of the given name in the current environment. 

Possible types are:
1. Variables
2. Indexed arrays
3. Associative arrays
4. Aliases
5. Functions
6. Builtins
7. Executables
9. System packages (Currently only works for Debian based (apt, dpkg, etc)).

### Bash REPL
This is a work in progress, but uses a set of FIFOs and a tmux session to read and write to them. 

