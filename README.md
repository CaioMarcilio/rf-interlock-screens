# RF Interlock Screens

## Description
These screens are for monitoring the interlock faults from RF System of Sirius Accelerator Booster and Storage Ring.

---

## Windows Installation
For the Windows installation, the only requirements are EPICS, Anaconda, Python and the PyDM library. To install [EPICS on Windows](https://docs.epics-controls.org/projects/how-tos/en/latest/getting-started/installation-windows.html), follow their own procedure about it. The EPICS need to use the Sirius server IP on channel access list to read the RF Interlock PVs.

 After that, to install Anaconda, use the official [Anaconda](https://www.anaconda.com/products/distribution) distribution that fits your system.

After Anaconda's installation, open the anaconda terminal and create the virtual environment to use the screens

    (base) C:\your\folder> conda create -n rf-interlock-screens python=3.8 "pyqt >=5,<5.15" pip numpy scipy six psutil pyqtgraph pydm -c conda-forge

To check if the conda environment was sucessfully created, use

    (base) C:\your\folder> conda activate rf-interlock-screens

If your terminal look like like the following, everything went right

    (rf-interlock-screens) C:\your\folder>

After the installation, clone this repository to the PC

    git clone https://github.com/CaioMarcilio/rf-interlock-screens.git

## Linux Installation

For the Unix installation, the only requirements are EPICS, Anaconda, Python and the PyDM library. To install [EPICS on Linux](https://epics-controls.org/resources-and-support/base/series-3-15/), use their official distribution. The EPICS need to use the Sirius server IP on channel access list to read the RF Interlock PVs.

To install Anaconda on Windows, use the official [Anaconda](https://www.anaconda.com/products/distribution) distribution.

After installing Anaconda, use the following command on terminal to set up the environment

    $ conda create -n rf-interlock-screens python=3.8 "pyqt >=5,<5.15" pip numpy scipy six psutil pyqtgraph pydm -c conda-forge

To check if the conda environment was sucessfully created, use

    $ conda activate rf-interlock-screens

If your terminal look like like the following, everything went right

    (rf-interlock-screens) $

After the installation, clone this repository to the PC

    git clone https://github.com/CaioMarcilio/rf-interlock-screens.git

---

## Usage
There are two main screens that can lead to all others:
- `bo-screens/interlock_rf_booster.ui`
- `si-screens/interlock_rf_anel.ui`

With the environment activated, to run any screen of this repository use the following command

    $ (rf-interlock-screens) pydm /screen_path/screen_name.ui
