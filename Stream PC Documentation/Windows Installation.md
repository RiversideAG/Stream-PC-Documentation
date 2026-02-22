# RiversideAG Stream PC Windows Installation

These are the instructions (and documentation of steps taken) for installing Windows 11 Pro on the Riverside AG Stream PC.

*Note that selectable options (checkboxes, drop down, multiple select, etc.) are written in **bold** and options you type the text for are written in `code formatting`.*

## USB Imaging

*Note: The USB drive used must be at least 8GB in size.*

Download the Windows 11 ISO from [Microsoft's Install Page](https://www.microsoft.com/en-us/software-download/windows11) **on a Windows machine**.

*An ISO is a file containing a complete operating system. These files are copied to USB drives using special software to install an operating system on a computer.*

1. Scroll down to **Download Windows 11 Disk Image (ISO) for x64 devices**.
2. Click on the **Select Download** dropdown and select **Windows 11 (multi-edition ISO for x64 devices)**.
3. Select **English (United States)** for the language.
4. Click **64-bit Download** to start the download.
5. Once the ISO has been downloaded, use the instructions under the **Verify your download** dropdown on the website to verify that the ISO downloaded correctly.

Image the larger USB drive using Rufus ([installation instructions here if not already installed](https://rufus.ie/en/)).

- Keep the defaults for **Drive Properties** and **Format Options**.
- After selecting **Start**, for **Windows User Experience** use the following options:
  - Remove Requirement for 4GB+ RAM, Secure Boot and TPM 2.0: **Yes**
  - Remove requirement for an online Microsoft account: **Yes**
  - Create a local account with username: **No**
  - Set regional options to the same values as this user's: **Yes**
  - Disable data collection (Skip privacy questions): **Yes**
  - Disable BitLocker automatic device encryption: **Yes**
  - Use 'Windows CA 2023' signed bootloaders (requires a compatible target PC): **No**

*Note: This may take a while.*

## Installation from USB

1. Shut down the computer.
2. Open the computer. There are two screws on the back side with all the ports, one near the top and one near the bottom. Once you unscrew them (you don't need a screwdriver) you can slide the cover off to access the inside. **Be careful, some internal parts are sharp**.
3. Windows 11 will be installed on the **M.2 SSD drive**, which is mounted behind the graphics card. If it's not too difficult, verify that it's still connected.
4. Disconnect the **SATA drive** mounted on the inside of the door to ensure Windows 11 isn't installed on it. There's a latch on the top of the door you can press on to open it. Disconnect both cables connected to the drive on the bottom half of the door.
5. Close the computer by sliding the cover back on and screwing in the two screws again.
6. Disconnect the computer's **Ethernet cable**. At the time of writing, this is a blue cable. This disable's Microsoft's requirement for an online account.
7. Plug in the Windows USB drive and turn on the computer.
8. Repeatedly press [F11] upon seeing the **Pro Series** logo and select **UEFI: USB, Partition 1**.
9. You will be greeted by the Windows 11 Installer.
    1. Language to install: **English (United States)**
    2. Time and currency format: **English (United States)**
    3. Keyboard or input method: **US**
    4. I would like to: **Install Windows 11**
    5. If prompted, enter your product key.
    6. Accept the terms and conditions.
    7. The partitioning menu will open up. See the [Partitioning Guide section](#partitioning-guide) for more details. For quick reference, if the only option is **Disk 0 Unallocated Space** you can select it, click **Create Partition** and then click **Apply** to partition your disk correctly.
    8. Click **Next** and then click **Install**.
10. Windows 11 is now installed, this begins the second phase of the setup.
    1. Make sure the computer doesn't have an internet connection.
    2. Select **I don't have internet** if the option appears.
    3. Name: `RiversideAG`
    4. Password: *Choose a 16+ character password and save it somewhere secure, like a password manager. You can ask one of the media booth staff if you need the current password.*
    5. Security questions: *Select 3 security questions and write answers to them. Save the answers somewhere secure. As long as the password is saved, you probably don't need to care about the security questions.*
11. Once you see the Windows desktop, the installation is complete. You can reconnect the Ethernet cable now.

Now that installation is complete, make sure to follow the Windows Debloating instructions. Also make sure to set the settings in Windows Settings and to install the software in Windows Software.

## Partitioning Guide

A partition is a region on a storage disk/drive which can be managed separately from all other partitions. An operating system usually needs one or two small, specialized partitions to function. If you partition it correctly, you can install multiple operating systems on a single disk.

For the most part, Windows handles partitioning for you, since it creates the partitions it needs automatically. The only thing you need to do is tell it where to create the partitions.

When you open the partition management section of the Windows installer, you will see a list of the partitions on the drives attached to your computer. If you're not sure which drive is the one you want to install to, **stop and figure it out**. A wrong move can delete data you care about. If possible, turn off the computer and physically disconnect any drives you don't want to install to. *Note that the USB drive you're using to install Windows 11 with will **not** show up in the list*.

After determining the drive to install to (and assuming you don't want to keep anything on the drive), delete any existing partitions on the disk. If you want to keep things on the disk, you need to know what you're doing more than this guide can tell you. Select the **Unallocated Space** partition and click **Create Partition**. Keep the default size and click **Apply**. Windows will create all the partitions it needs.
