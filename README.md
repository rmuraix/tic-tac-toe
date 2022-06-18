# Tic-Tac-Toe
![License:MIT License](https://img.shields.io/github/license/rmuraix/tic-tac-toe)
![issues](https://img.shields.io/github/issues/rmuraix/tic-tac-toe)  
The tic-tac-toe game made in Python.
## Features
- Playable on Windows
- GUI Support
## Download/Usage
1. Download latest version in [here](https://github.com/rmuraix/tic-tac-toe/releases).
2. Run .exe
## Develop
### Requirement
- Python 3.10.5 or later (non Docker users)
### Setup
A Dockerfile is included in the repository. If you are a Docker user, you can start developing immediately!!  
The required libraries are described in `requirements.txt`.
```shell
$ pip install -r requirements.txt
```
### Build
Use [Nuitka](https://github.com/Nuitka/Nuitka).
```shell
$ nuitka --follow-imports --onefile main.py
```
## Contributing  
Read [CONTRIBUTING.md](/CONTRIBUTING.md) and [CODE_OF_CONDUCT.md](/CODE_OF_CONDUCT.md).   
## Auther/Contributer
Ryota Murai ([@rmuraix](https://github.com/rmuraix))  
## License
'rmuraix/tic-tac-toe' is under [MIT License](/LICENSE).