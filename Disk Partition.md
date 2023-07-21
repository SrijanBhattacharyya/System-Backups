> **COMMAND:**
<br> `fdisk -l`
<br> `lsblk -f`

Previous Disk Partition Table
=============================
```
|NAME            | FSTYPE | LABEL |       Size | Type                         |
|----------------|--------|-------|------------|------------------------------|
sda
|├─sda1          | vfat   |       |    512 MiB |                              |
|├─sda2          | swap   |       |      9 GiB |                              |
|├─sda3          | btrfs  |       |    500 GiB |                              |
|├─sda4          | vfat   |       |    512 MiB |                              |
|├─sda5          | swap   |       |    8.8 GiB |                              |
|└─sda6          | btrfs  |       |  412.7 GiB |                              |
nvme0n1
|├─>nvme0n1p1    | vfat   |       |    100 MiB | EFI System                   |
|├─>nvme0n1p2    |        |       |     16 MiB | Microsoft reserved           |
|└─>nvme0n1p3    | ntfs   |       |  119.1 GiB | Microsoft basic data         |
```

New Disk Partition Table
========================

```
DEV | NAME        | FSTYPE | FSVER | LABEL | UUID                                 | FSAVAIL | FSUSE% | MOUNTPOINTS |   Size | Type                         |
------------------------------------------------------------------------------------------------------------------------------------------------------------
sda
  ├─> sda1        |        |       |       |                                      |         |        |             |   512M | EFI System                   |
  ├─> sda2        |        |       |       |                                      |         |        |             |     9G | Linux swap                   |
  └─> sda3        |        |       |       |                                      |         |        |             |   500G | Linux filesystem             |

nvme0n1
  ├─> nvme0n1p1   | vfat   | FAT32 |       | 1CD3-11CD                            |         |        |             |   100M | EFI System                   |
  ├─> nvme0n1p2   |        |       |       |                                      |         |        |             |    16M | Microsoft reserved           |
  └─> nvme0n1p3   | ntfs   |       |       | 84D8D5F6D8D5E688                     |         |        |             | 119.1G | Microsoft basic data         |
```
