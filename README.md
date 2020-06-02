# pyFluminus GUI

This is a GUI which extends [pyFluminus](https://github.com/raynoldng/pyfluminus).

The goal of this installer is to make it easy for windows users(who may not be familiar with CLI tools) to download their files easily.

Here's an overview of what the UI looks like

![gif](https://media.giphy.com/media/dxyTwmcUZDEJE0hSMl/giphy.gif)


## Setup

`virtualenv .env && source ./.env/bin/activate && pip install -r requirements.txt && python3 pyfluminus_gui.py`



PRs are welcome

Features (at parity with [fluminus](https://github.com/indocomsoft/fluminus))
- Authentication via ADFS (vafs.nus.edu.sg)
- Get name of student
- Get list of modules
    - Taking/Teaching
    - Only this semester's modules
- Get announcements
- Get listing of workbin files and download them
- Get listing of webcasts and download them
- Get listing of weekly lesson plans and their associated files

# CLI Usage

To download your files:

```
mkdir /tmp/fluminus
python pyfluminus_cli.py -username="e123456" -password="passw0rd"  --download-to=/tmp/luminus
```

If you are uncomfortable with having to pass your credentials in as plaintext you can instead save it as environment variables: `LUMINUS_USERNAME`, `LUMINUS_PASSWORD` and pass in the `--env` flag.

This downloads files of all your modules to the directory specified. To download files again simply do:

```
python pyfluminus_cli.py -username="e123456" -password="passw0rd"  --download-to=/tmp/luminus
```

More information can be found in the help page:
```
usage: pyfluminus_cli.py [-h] [-username USERNAME] [-password PASSWORD]
                         [--env] [--download_to DOWNLOAD_TO] [--ignore IGNORE]

CLI wrapper to pyfluminus

optional arguments:
  -h, --help            show this help message and exit
  -username USERNAME    NUSNET username, e.g. e01234
  -password PASSWORD    NUSNET password
  --env                 Get username and password from environment variables
  --download_to DOWNLOAD_TO
                        Download destination
  --ignore IGNORE       Comma separated list of modules to ignore (e.g.
                        CS1231,CS4321)
  --announcements       Display announcements
```

# Todos
- [ ] Add a windows installer.
