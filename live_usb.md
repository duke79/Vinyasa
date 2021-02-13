[Guide](https://devanswers.co/guide-kali-linux-2018-live-usb-persistence-windows)
 * Use `Rufus` instead, otherwise there were issues on PC (worked on a laptop though)
 * The persistent partition is already handled by rufus, there's a slider to choose the size
 * Next do the mounting!

<details>

<summary>Mount Persistence Partition</summary

Once Kali has booted, we will use fdisk to view the disk devices and partitions.

Open a new terminal window and run:

```
sudo fdisk -l
```

You will see several entries for partitions and devices listed. Look for your USB drive. It will have two partitions: A 4GB partition and a persistence partition you created earlier. The persistence partition should appear as Linux under the Type column.

```
Device     Boot    Start       End   Sectors   Size Id Type
/dev/sdb1           2048   8390655   8388608     4G  c W95 FAT32 (LBA)
/dev/sdb2        8390656  30463999  22073344  10.5G 83 Linux
```

In the above example, we can see the USB drive with a 4GB partition and a larger persistence partition with the device name sdb2. This device name may be different on your setup. Make sure you have the right one before continuing.

Assuming your persistence partition device name is sdb2, run the following commands.

**IMPORTANT:** You must enter these commands exactly and ensure you choose the correct device (yours may not be sdb2), otherwise persistence will not work.

Create a new mount point called my_usb.

```sudo mkdir -p /mnt/my_usb```
Mount your USB persistence partition to my_usb. Reminder: Your persistence partition may not be sdb2, please ensure you mount the right one.

```sudo mount /dev/sdb2 /mnt/my_usb```
Create a new file called persistence.conf using the nano text editor.

```sudo nano /mnt/my_usb/persistence.conf```
In this file, type / union.

`/mnt/my_usb/persistence.conf`

```
/ union
```

Save the file and exit. (Press CTRL + X, press Y, then press ENTER).

Now unmount your persistence partition. Reminder: Your persistence partition may not be sdb2, please ensure you unmount the right one.

```sudo umount /dev/sdb2```
We’re done!

</details>

* [Packages to install](kali_packages.sh)
* [Backup USB](https://www.cyberciti.biz/faq/linux-copy-clone-usb-stick-including-partitions/)
* [usb-image-tool](https://www.intowindows.com/how-to-backup-bootable-usb-drive)
