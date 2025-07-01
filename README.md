# eops_macports
A MacPorts repository for ESO Observation Preparation Software [EOPS]

This repository provides a workaround to install the following EOPS packages via MacPorts:

1. KARMA for KMOS
2. FIMS for FORS2
3. FPOSS for FLAMES

FPOSS is also available from the offical MacPorts repository and the ESO Repository.

FIMS is also available from the ESO Repository.

## Installation

The following instructions assume that MacPorts is already installed.
If not, see [https://www.macports.org/install.php].

In a terminal, issue the following commands

```bash
bash
git clone https://github.com/JohnPritchard/eops_macports.git
cd eops_macports/ports
portindex $(pwd)
sudo /usr/bin/sed -i '' \
    -e 's[^rsync.*[&\nfile:///Users/jpritcha/src/git/eops_macports/ports[' \
    /opt/local/etc/macports/sources.conf
```

## KARMA for KMOS

### Install

In a terminal, issue the following commands

```bash
sudo port install eops-eso-karma
```

### Run

```bash
eops-karma.sh
```

## FIMS for FORS2

### Install

In a terminal, issue the following commands

```bash
sudo port install eops-eso-fors-fims
```

### Run

```bash
eops-fims.sh R|B
```

## FPOSS for FLAMES

### Install

In a terminal, issue the following commands

```bash
sudo port install eops-eso-flames-fposs
```

### Run

```bash
eops-fposs.sh
```

