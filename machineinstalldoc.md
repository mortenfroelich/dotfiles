# Boot installer
1) Select Language, Locale
2) Network settings
  a) (Desktop specific) Select second network interface (Gigabit network), first was not connected 
  b) Select hostname
  c) Select a Domain name
3) Set up users and passwords
  a) Don't setup a root user, rely on sudo
  b) Configure own user
4) Partition disks
  a) Select manual
    i) Select disk, partition it, select the partition, create one partition and have guided partioning create a swap space
    ii) Select finish and write changes to disk.
5) Configure package manager -> Select closest mirror ftp.dk.debian.org seems reasonable
6) Select software, Debian desktop, GNOME, print sever, standard utils
Done!
TODO: Automate theese steps, look at seeding, etc.

# Configure system
1) Download configuration

