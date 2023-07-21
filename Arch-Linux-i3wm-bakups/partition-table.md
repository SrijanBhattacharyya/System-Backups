> **COMMAND:** `fdisk -l`

Previous Disk Partition
=======================

```
DEV | NAME        | FSTYPE | FSVER | LABEL | UUID                                 | FSAVAIL | FSUSE% | MOUNTPOINTS |   Size | Type                         |
------------------------------------------------------------------------------------------------------------------------------------------------------------
sda
  ├─> sda1        | vfat   | FAT32 |       | 8A45-A2A4                            |         |        |             |   513M | EFI System                   |
  ├─> sda2        | swap   | 1     |       | aa12e601-140f-4dfb-b6d0-f1c7f9f62052 |         |        |             |     9M | Linux swap                   |
  ├─> sda3        | ext4   | 1.0   |       | 8b38863a-af1e-4f1e-8eef-2810e034b097 |         |        |             |  14.6G | Linux filesystem             |
  ├─> sda4        | ntfs   |       | Rohit | C630575330574A17                     |         |        |             |   256G | Microsoft basic data         |
  ├─> sda5        | vfat   | FAT32 |       | 6E6A-27BE                            |         |        |             |   512M | EFI System                   |
  ├─> sda6        | ntfs   |       |       | F49C3A789C3A3588                     |         |        |             |   509M | Windows recovery environment |
  ├─> sda7        | swap   | 1     |       | 4bfc6c6b-b7e6-44a8-89c6-1fdb1154e2cb |         |        | [SWAP]      |     9G | Linux swap                   |
  ├─> sda8        | btrfs  |       |       | 5dbdc688-bfc6-4d58-b785-e5fa5513d4ef |  328.1G |    14% | /           | 383.5G | Linux filesystem             |
  └─> sda9        | btrfs  |       |       | af6d42c0-8da4-4666-b2ac-2d8ab8e69a64 |         |        |             | 162.1G | Linux filesystem             |

nvme0n1
  ├─>nvme0n1p1    | vfat   | FAT32 |       | 1CD3-11CD                            |         |        |             |   100M | EFI System                   |
  ├─>nvme0n1p2    |        |       |       |                                      |         |        |             |    16M | Microsoft reserved           |
  └─>nvme0n1p3    | ntfs   |       |       | 84D8D5F6D8D5E688                     |         |        |             | 119.1G | Microsoft basic data         |
```

Present Disk Partition
======================

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
