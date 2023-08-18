# Synopsis
The describe command inspects a keyword on the Bash commandline and reports what it represents when taken in the different possible contexts of bash.

This page is about extending its package and identification capabilities to other distros than the one originally designed for (debian et al.)

# Functions that use package management
- describePackage
    - dpkg 
        - Getting package description
        - Listing all files included in a package to deturmin which are executable

- packageIsInstalled
    - dpkg-query

- describeExecutable
    - dlocate -- Finding parrent package of an executable

# Functions that use command-not-found db
- queryDescribeDB

