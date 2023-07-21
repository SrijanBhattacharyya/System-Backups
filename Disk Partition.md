> **COMMAND:**
<br> `fdisk -l`
<br> `lsblk -f`

Present Disk Partition Table
============================
```
|NAME            | FSTYPE |       SIZE | TYPE                         | OS NAME                                 |
|----------------|--------|------------|------------------------------|-----------------------------------------|
sda
|├─sda1          | vfat   |    512 MiB | EFI System                   | Arch Linux i3wm                         |
|├─sda2          | swap   |      9 GiB | Linux swap                   |                                         |
|├─sda3          | btrfs  |    500 GiB | Linux filesystem             |                                         |
|├─sda4          | vfat   |    512 MiB | EFI System                   | Garuda Linux i3wm                       |
|├─sda5          | swap   |    8.8 GiB | Linux swap                   |                                         |
|└─sda6          | btrfs  |  412.7 GiB | Linux filesystem             |                                         |
nvme0n1
```

New Disk Partition Table
========================
```
|NAME            | FSTYPE |       SIZE | TYPE                         | OS NAME                                 |
|----------------|--------|------------|------------------------------|-----------------------------------------|
sda
|├─sda1          | vfat   |    512 MiB | EFI System                   | Arch Linux i3wm                         |
|├─sda2          | swap   |      9 GiB | Linux swap                   |                                         |
|├─sda3          | btrfs  |    500 GiB | Linux filesystem             |                                         |
|├─sda4          | vfat   |    512 MiB | EFI System                   | Garuda Linux i3wm                       |
|├─sda5          | swap   |    8.8 GiB | Linux swap                   |                                         |
|└─sda6          | btrfs  |  412.7 GiB | Linux filesystem             |                                         |
nvme0n1
|├─>nvme0n1p1    | vfat   |    100 MiB | EFI System                   | Windows 10 Single Language Home Edition |
|├─>nvme0n1p2    |        |     16 MiB | Microsoft reserved           |                                         |
|└─>nvme0n1p3    | ntfs   |  119.1 GiB | Microsoft basic data         |                                         |
```
