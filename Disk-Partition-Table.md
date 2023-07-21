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
|├─sda2          | swap   |   9216 MiB | Linux swap                   |                                         |
|├─sda3          | btrfs  | 512000 MiB | Linux filesystem             |                                         |
|├─sda4          | vfat   |    512 MiB | EFI System                   | Garuda Linux i3wm                       |
|├─sda5          | swap   |   9011 MiB | Linux swap                   |                                         |
|└─sda6          | btrfs  | 422605 MiB | Linux filesystem             |                                         |
nvme0n1
```

New Disk Partition Table
========================
```
|NAME            | FSTYPE |        SIZE | TYPE                         | OS NAME                                 |
|----------------|--------|-------------|------------------------------|-----------------------------------------|
sda
|├─sda1          | vfat   |     512 MiB | EFI System                   | Arch Linux i3wm                         |
|├─sda2          | swap   |    9011 MiB | Linux swap                   |                                         |
|├─sda3          | btrfs  | 4137421 MiB | Linux filesystem             |                                         |
|├─sda4          | vfat   |     512 MiB | EFI System                   | Garuda Linux i3wm                       |
|├─sda5          | swap   |    9011 MiB | Linux swap                   |                                         |
|└─sda6          | btrfs  | 4137421 MiB | Linux filesystem             |                                         |
nvme0n1
|├─>nvme0n1p1    | vfat   |     100 MiB | EFI System                   | Windows 10 Single Language Home Edition |
|├─>nvme0n1p2    |        |      16 MiB | Microsoft reserved           |                                         |
|└─>nvme0n1p3    | ntfs   |  975667 MiB | Microsoft basic data         |                                         |
```
