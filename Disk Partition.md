> **COMMAND:**
<br> `fdisk -l`
<br> `lsblk -f`

Previous Disk Partition Table
=============================

```
NAME   | FSTYPE | FSVER | LABEL | UUID                                 FSAVAIL FSUSE% MOUNTPOINTS|   Size | Type                         |
-------|--------|-------|-------|---------------------------------------------------------------------------------------------------------------------------
sda
├─sda1 | vfat   | FAT32       E178-2DB1                             510.7M     0% /boot/efi
├─sda2 | swap   | 1           147d9e45-c047-4fe4-9097-0ae260d715da                [SWAP]
├─sda3 | btrfs  |             64435ead-e41c-4b3c-8a2e-ed8040a5012f  435.9G    13% /
├─sda4 | vfat   | FAT32       9923-8EBD
├─sda5 | swap   | 1           045ef05f-27c9-413f-8e04-455fac355887
└─sda6 | btrfs  |             54d5323c-2eaa-4c7d-936f-def3e8633608

nvme0n1
  ├─>nvme0n1p1    | vfat   | FAT32 |       | 1CD3-11CD                            |         |        |             |   100M | EFI System                   |
  ├─>nvme0n1p2    |        |       |       |                                      |         |        |             |    16M | Microsoft reserved           |
  └─>nvme0n1p3    | ntfs   |       |       | 84D8D5F6D8D5E688                     |         |        |             | 119.1G | Microsoft basic data         |
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
