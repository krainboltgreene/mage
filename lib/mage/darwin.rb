class Mage::Darwin
  attr_reader :hardware, :software

  def initialize
    @hardware_data = YAML.load(`system_profiler SPHardwareDataType`.chomp!)["Hardware"]["Hardware Overview"]
    @software_data = YAML.load(`system_profiler SPSoftwareDataType`.chomp!)["Software"]["System Software Overview"]
  end

  def os
    "#{system_version} (#{kernal_version}, #{kernel_bit})"
  end

  def cpu
    "#{processor_name} (#{processor_speed}, #{core_count} cores)"
  end

  def ram
    "#{total_memory}"
  end
end

# Hardware:

#     Hardware Overview:

#       Model Name: MacBook Pro
#       Model Identifier: MacBookPro7,1
#       Processor Name: Intel Core 2 Duo
#       Processor Speed: 2.66 GHz
#       Number Of Processors: 1
#       Total Number Of Cores: 2
#       L2 Cache: 3 MB
#       Memory: 4 GB
#       Bus Speed: 1.07 GHz
#       Boot ROM Version: MBP71.0039.B0B
#       SMC Version (system): 1.62f6
#       Serial Number (system): 7302305XATN
#       Hardware UUID: 8E8F78B0-0235-5F3E-A2EC-CCD81CD9B24E
#       Sudden Motion Sensor:
#           State: Enabled

# Network:

#     Bluetooth:

#       Type: PPP (PPPSerial)
#       Hardware: Modem
#       BSD Device Name: Bluetooth-Modem
#       Has IP Assigned: No
#       IPv4:
#           Configuration Method: PPP
#       IPv6:
#           Configuration Method: Automatic
#       Proxies:
#           FTP Passive Mode: Yes
#       Service Order: 4

#     Ethernet:

#       Type: Ethernet
#       Hardware: Ethernet
#       BSD Device Name: en0
#       Has IP Assigned: No
#       IPv4:
#           Configuration Method: DHCP
#       IPv6:
#           Configuration Method: Automatic
#       Ethernet:
#           MAC Address: 58:b0:35:ef:ca:38
#           Media Options:
#           Media Subtype: none
#       Proxies:
#           Exceptions List: *.local, 169.254/16
#           FTP Passive Mode: Yes
#       Service Order: 5

#     FireWire:

#       Type: FireWire
#       Hardware: FireWire
#       BSD Device Name: fw0
#       Has IP Assigned: No
#       IPv4:
#           Configuration Method: DHCP
#       IPv6:
#           Configuration Method: Automatic
#       Ethernet:
#           MAC Address: 40:d3:2d:ff:fe:03:46:aa
#           Media Options: Full Duplex
#           Media Subtype: Auto Select
#       Proxies:
#           Exceptions List: *.local, 169.254/16
#           FTP Passive Mode: Yes
#       Service Order: 7

#     AirPort:

#       Type: AirPort
#       Hardware: AirPort
#       BSD Device Name: en1
#       Has IP Assigned: No
#       IPv4:
#           Configuration Method: DHCP
#       IPv6:
#           Configuration Method: Automatic
#       Ethernet:
#           MAC Address: f8:1e:df:e6:76:9b
#           Media Options:
#           Media Subtype: Auto Select
#       Proxies:
#           Exceptions List: *.local, 169.254/16
#           FTP Passive Mode: Yes
#       Service Order: 8

#     Bluetooth PAN:

#       Type: Ethernet
#       Hardware: Ethernet
#       BSD Device Name: en3
#       Has IP Assigned: No
#       IPv4:
#           Configuration Method: DHCP
#       IPv6:
#           Configuration Method: Automatic
#       Ethernet:
#           MAC Address: 58:b0:35:8b:a2:d2
#           Media Options:
#           Media Subtype: Auto Select
#       Proxies:
#           Exceptions List: *.local, 169.254/16
#           FTP Passive Mode: Yes
#       Service Order: 9

# Software:

#     System Software Overview:

#       System Version: Mac OS X 10.6.8 (10K549)
#       Kernel Version: Darwin 10.8.0
#       Boot Volume: KEP
#       Boot Mode: Normal
#       Computer Name: Kurtis Rainbolt-Greene’s MacBook Pro
#       User Name: Kurtis Rainbolt-Greene2 (krainboltgreene)
#       Secure Virtual Memory: Enabled
#       64-bit Kernel and Extensions: No
#       Time since boot: 19:44

# Audio (Built In):

#     Intel High Definition Audio:

#       Audio ID: 13

#         Headphone:

#           Connection: Combination Output

#         Speaker:

#           Connection: Internal

#         Line Input:

#           Connection: Combination Input

#         Internal Microphone:

#           Connection: Internal

#         S/PDIF Optical Digital Audio Output:

#           Connection: Combination Output

#         External Microphone / iPhone Headset:

#           Connection: Combination Output

#         HDMI / DisplayPort Output:

#           Connection: Display

# Bluetooth:

#       Apple Bluetooth Software Version: 2.4.5f3
#       Hardware Settings:
#           Address: 58-B0-35-8B-A2-D2
#           Manufacturer: Broadcom
#           Firmware Version: v186 c396
#           Bluetooth Power: Off
#           Discoverable: Yes
#           Vendor ID: 0x5ac
#           Product ID: 0x8213
#           Requires Authentication: No
#       Services:
#           Bluetooth File Transfer:
#               Folder other devices can browse: ~/Public
#               Requires Authentication: Yes
#               State: Enabled
#           Bluetooth File Exchange:
#               Folder for accepted items: ~/Downloads
#               Requires Authentication: No
#               When other items are accepted: Ask
#               When PIM items are accepted: Ask
#               When receiving items: Prompt for each file
#               State: Enabled
#       Devices (Paired, Favorites, etc):
#           Device:
#               Name: Kurtis Rainbolt-Greene’s iPhone
#               Address: 28-cf-da-3d-f2-c9
#               Type: Smartphone
#               Firmware Version: 0x430
#               Services: PAN Network Access Profile, Handsfree Gateway, Audio Source, Wireless iAP, AVRCP Device, Phonebook
#               Paired: Yes
#               Favorite: Yes
#               Connected: No
#               Manufacturer: Broadcom (0x4, 0x8107)
#               Vendor ID: 0x5ac
#               Product ID: 0x1294
#           Device:
#               Name: MotorolaS305
#               Address: 00-0d-fd-36-51-b5
#               Type: Unknown
#               Services: Hands-Free unit
#               Paired: Yes
#               Favorite: No
#               Connected: No
#               Manufacturer: Cambridge Silicon Radio (0x4, 0x14f3)
#       Incoming Serial Ports:
#           Serial Port 1:
#               Name: Bluetooth-PDA-Sync
#               RFCOMM Channel: 3
#               Requires Authentication: No
#       Outgoing Serial Ports:
#           Serial Port 1:
#               Address:
#               Name: Bluetooth-Modem
#               RFCOMM Channel: 0
#               Requires Authentication: No
#           Serial Port 2:
#               Address: 28-CF-DA-3D-F2-C9
#               Name: KurtisRainbolt-Greenesi
#               RFCOMM Channel: 1
#               Requires Authentication: No

# Card Reader:

#     Built in SD Card Reader:

#       Vendor ID: 0x05ac
#       Product ID: 0x8403
#       Revision: 1.00
#       Serial Number: 000000009833

# Diagnostics:

#     Power On Self-Test:

#       Last Run: 10/9/11 12:19 PM
#       Result: Passed

# Disc Burning:

#     MATSHITA DVD-R   UJ-898:

#       Firmware Revision: HC10
#       Interconnect: ATAPI
#       Burn Support: Yes (Apple Shipping Drive)
#       Cache: 1024 KB
#       Reads DVD: Yes
#       CD-Write: -R, -RW
#       DVD-Write: -R, -R DL, -RW, +R, +R DL, +RW
#       Write Strategies: CD-TAO, CD-SAO, DVD-DAO
#       Media: To show the available burn speeds, insert a disc and choose View > Refresh

# Ethernet Cards:

#     Broadcom 5764-B0:

#       Name: ethernet
#       Type: Ethernet Controller
#       Bus: PCI
#       Vendor ID: 0x14e4
#       Device ID: 0x1684
#       Subsystem Vendor ID: 0x14e4
#       Subsystem ID: 0x1684
#       Revision ID: 0x0010
#       Link Width: x1
#       BSD name: en0
#       Kext name: AppleBCM5701Ethernet.kext
#       Firmware version: 5764m-v3.38, 0x56cdb6d5
#       Location: /System/Library/Extensions/IONetworkingFamily.kext/Contents/PlugIns/AppleBCM5701Ethernet.kext
#       Version: 3.0.5b8

# FireWire:

#     FireWire Bus:

#       Maximum Speed: Up to 800 Mb/sec

# Graphics/Displays:

#     NVIDIA GeForce 320M:

#       Chipset Model: NVIDIA GeForce 320M
#       Type: GPU
#       Bus: PCI
#       VRAM (Total): 256 MB
#       Vendor: NVIDIA (0x10de)
#       Device ID: 0x08a0
#       Revision ID: 0x00a2
#       ROM Revision: 3533
#       Displays:
#         Color LCD:
#           Resolution: 1280 x 800
#           Pixel Depth: 32-Bit Color (ARGB8888)
#           Main Display: Yes
#           Mirror: Off
#           Online: Yes
#           Built-In: Yes
#         Display Connector:
#           Status: No Display Connected

# Memory:

#     Memory Slots:

#       ECC: Disabled

#         BANK 0/DIMM0:

#           Size: 2 GB
#           Type: DDR3
#           Speed: 1067 MHz
#           Status: OK
#           Manufacturer: 0x80AD
#           Part Number: 0x484D54313235533654465238432D47372020
#           Serial Number: 0x0DB3E956

#         BANK 1/DIMM0:

#           Size: 2 GB
#           Type: DDR3
#           Speed: 1067 MHz
#           Status: OK
#           Manufacturer: 0x80AD
#           Part Number: 0x484D54313235533654465238432D47372020
#           Serial Number: 0x0D73E997

# Power:

#     Battery Information:

#       Model Information:
#           Serial Number: W00204EZ4D3LA
#           Manufacturer: SMP
#           Device name: bq20z451
#           Pack Lot Code: 0000
#           PCB Lot Code: 0000
#           Firmware Version: 0201
#           Hardware Revision: 000a
#           Cell Revision: 0165
#       Charge Information:
#           Charge remaining (mAh): 4743
#           Fully charged: No
#           Charging: No
#           Full charge capacity (mAh): 5192
#       Health Information:
#           Cycle count: 148
#           Condition: Normal
#       Battery Installed: Yes
#       Amperage (mA): -1070
#       Voltage (mV): 12025

#     System Power Settings:

#       AC Power:
#           System Sleep Timer (Minutes): 0
#           Disk Sleep Timer (Minutes): 0
#           Display Sleep Timer (Minutes): 10
#           Wake On AC Change: No
#           Wake On Clamshell Open: Yes
#           Wake On LAN: Yes
#           Display Sleep Uses Dim: Yes
#       Battery Power:
#           System Sleep Timer (Minutes): 10
#           Disk Sleep Timer (Minutes): 10
#           Display Sleep Timer (Minutes): 2
#           Wake On AC Change: No
#           Wake On Clamshell Open: Yes
#           Current Power Source: Yes
#           Display Sleep Uses Dim: Yes
#           Reduce Brightness: Yes

#     Hardware Configuration:

#       UPS Installed: No

#     AC Charger Information:

#       Connected: No
#       Charging: No

# Printers:

#     RICOH Aficio MP C2800 [E96649]:

#       Status: Idle
#       Print Server: Local
#       Driver Version: 10.4
#       Default: No
#       URI: dnssd://RICOH%20Aficio%20MP%20C2800%20%5BE96649%5D._pdl-datastream._tcp.local./?bidi
#       PPD: Generic PostScript Printer
#       PPD File Version: 1.4
#       PostScript Version: (2016.0) 0
#       CUPS Version: 1.4.7 (cups-218.31)
#       Fax support: No
#       Scanning support: No
#       Scanning app: -
#       Scanning app (bundleID path): -
#       Scanner UUID: -

# Serial-ATA:

#     NVidia MCP89 AHCI:

#       Vendor: NVidia
#       Product: MCP89 AHCI
#       Link Speed: 3 Gigabit
#       Negotiated Link Speed: 3 Gigabit
#       Description: AHCI Version 1.30 Supported

#         C300-CTFDDAC128MAG:

#           Capacity: 128.04 GB (128,035,676,160 bytes)
#           Model: C300-CTFDDAC128MAG
#           Revision: 0006
#           Serial Number: 00000000105103013705
#           Native Command Queuing: Yes
#           Queue Depth: 32
#           Removable Media: No
#           Detachable Drive: No
#           BSD Name: disk0
#           Medium Type: Solid State
#           TRIM Support: No
#           Partition Map Type: GPT (GUID Partition Table)
#           S.M.A.R.T. status: Verified
#           Volumes:
#               Capacity: 209.7 MB (209,715,200 bytes)
#               Writable: Yes
#               BSD Name: disk0s1
#             KEP:
#               Capacity: 127.69 GB (127,691,702,272 bytes)
#               Available: 71.57 GB (71,571,406,848 bytes)
#               Writable: Yes
#               File System: Journaled HFS+
#               BSD Name: disk0s2
#               Mount Point: /

#     NVidia MCP89 AHCI:

#       Vendor: NVidia
#       Product: MCP89 AHCI
#       Link Speed: 3 Gigabit
#       Negotiated Link Speed: 1.5 Gigabit
#       Description: AHCI Version 1.30 Supported

#         MATSHITADVD-R   UJ-898:

#           Model: MATSHITADVD-R   UJ-898
#           Revision: HC10
#           Serial Number:         UK30  14065S
#           Native Command Queuing: No
#           Detachable Drive: No
#           Power Off: Yes
#           Async Notification: No

# Thunderbolt:

#       Thunderbolt: No hardware was found.

# USB:

#     USB High-Speed Bus:

#       Host Controller Location: Built-in USB
#       Host Controller Driver: AppleUSBEHCI
#       PCI Device ID: 0x0d9d
#       PCI Revision ID: 0x00a2
#       PCI Vendor ID: 0x10de
#       Bus Number: 0x24

#         Built-in iSight:

#           Product ID: 0x8507
#           Vendor ID: 0x05ac  (Apple Inc.)
#           Version:  4.35
#           Serial Number: 8JA2H2D8YDCLNA00
#           Speed: Up to 480 Mb/sec
#           Manufacturer: Apple Inc.
#           Location ID: 0x24600000 / 2
#           Current Available (mA): 500
#           Current Required (mA): 500

#     USB High-Speed Bus:

#       Host Controller Location: Built-in USB
#       Host Controller Driver: AppleUSBEHCI
#       PCI Device ID: 0x0d9d
#       PCI Revision ID: 0x00a2
#       PCI Vendor ID: 0x10de
#       Bus Number: 0x26

#         Internal Memory Card Reader:

#           Product ID: 0x8403
#           Vendor ID: 0x05ac  (Apple Inc.)
#           Version: 98.33
#           Serial Number: 000000009833
#           Speed: Up to 480 Mb/sec
#           Manufacturer: Apple
#           Location ID: 0x26100000 / 2
#           Current Available (mA): 500
#           Current Required (mA): 500

#     USB Bus:

#       Host Controller Location: Built-in USB
#       Host Controller Driver: AppleUSBOHCI
#       PCI Device ID: 0x0d9c
#       PCI Revision ID: 0x00a1
#       PCI Vendor ID: 0x10de
#       Bus Number: 0x04

#     USB Bus:

#       Host Controller Location: Built-in USB
#       Host Controller Driver: AppleUSBOHCI
#       PCI Device ID: 0x0d9c
#       PCI Revision ID: 0x00a1
#       PCI Vendor ID: 0x10de
#       Bus Number: 0x06

#         BRCM2046 Hub:

#           Product ID: 0x4500
#           Vendor ID: 0x0a5c  (Broadcom Corp.)
#           Version:  1.00
#           Speed: Up to 12 Mb/sec
#           Manufacturer: Apple Inc.
#           Location ID: 0x06600000 / 4
#           Current Available (mA): 500
#           Current Required (mA): 0

#             Bluetooth USB Host Controller:

#               BSD Name: en3
#               Product ID: 0x8213
#               Vendor ID: 0x05ac  (Apple Inc.)
#               Version:  1.86
#               Serial Number: 58B0358BA2D2
#               Speed: Up to 12 Mb/sec
#               Manufacturer: Apple Inc.
#               Location ID: 0x06610000 / 5
#               Current Available (mA): 500
#               Current Required (mA): 0

#         IR Receiver:

#           Product ID: 0x8242
#           Vendor ID: 0x05ac  (Apple Inc.)
#           Version:  0.16
#           Speed: Up to 1.5 Mb/sec
#           Manufacturer: Apple Computer, Inc.
#           Location ID: 0x06500000 / 3
#           Current Available (mA): 500
#           Current Required (mA): 100

#         Apple Internal Keyboard / Trackpad:

#           Product ID: 0x0236
#           Vendor ID: 0x05ac  (Apple Inc.)
#           Version:  0.90
#           Speed: Up to 12 Mb/sec
#           Manufacturer: Apple Inc.
#           Location ID: 0x06300000 / 2
#           Current Available (mA): 500
#           Current Required (mA): 40

# AirPort:

#       Software Versions:
#           Menu Extra: 6.2.2 (622.2)
#           configd plug-in: 6.2.5 (625.6)
#           System Profiler: 6.0.1 (601.1)
#           Network Preference: 6.2.2 (622.2)
#           AirPort Utility: 5.5.3 (553.20)
#           IO80211 Family: 3.2 (320.1)
#       Interfaces:
#         en1:
#           Card Type: AirPort Extreme  (0x14E4, 0x8D)
#           Firmware Version: Broadcom BCM43xx 1.0 (5.10.131.42.4)
#           Locale: FCC
#           Country Code: US
#           Supported PHY Modes: 802.11 a/b/g/n
#           Supported Channels: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 36, 40, 44, 48, 52, 56, 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165
#           Wake On Wireless: Supported
#           Status: Not Associated

# Firewall:

#     Firewall Settings:

#       Mode: Allow all incoming connections
#       Firewall Logging: No
#       Stealth Mode: No

# Locations:

#     Automatic:

#       Active Location: Yes
#       Services:
#         Bluetooth DUN:
#           Type: PPP
#           IPv4:
#               Configuration Method: PPP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               FTP Passive Mode: Yes
#           PPP:
#               ACSP Enabled: No
#               Display Terminal Window: No
#               Redial Count: 1
#               Redial Enabled: Yes
#               Redial Interval: 5
#               Use Terminal Script: No
#               Dial on Demand: No
#               Disconnect on Fast User Switch: Yes
#               Disconnect on Idle: Yes
#               Disconnect on Idle Timer: 600
#               Disconnect on Logout: Yes
#               Disconnect on Sleep: Yes
#               Idle Reminder: No
#               Idle Reminder Time: 1800
#               IPCP Compression VJ: Yes
#               LCP Echo Enabled: No
#               LCP Echo Failure: 4
#               LCP Echo Interval: 10
#               Log File: /var/log/ppp.log
#               Verbose Logging: No
#         Ethernet:
#           Type: Ethernet
#           BSD Device Name: en0
#           Hardware (MAC) Address: 58:b0:35:ef:ca:38
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           AppleTalk:
#               Configuration Method: Node
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#         FireWire:
#           Type: FireWire
#           BSD Device Name: fw0
#           Hardware (MAC) Address: 40:d3:2d:ff:fe:03:46:aa
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#         AirPort:
#           Type: IEEE80211
#           BSD Device Name: en1
#           Hardware (MAC) Address: f8:1e:df:e6:76:9b
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#           IEEE80211:
#               Disconnect on Logout: Yes
#               Join Mode: Automatic
#               JoinModeFallback: DoNothing
#               PowerEnabled: 1
#               PreferredNetworks:
#                   SecurityType: Open
#                   SSID_STR: Mayor Capdeville
#                   Unique Network ID: 8007473C-A95F-4D4B-B6CC-E5789266165B
#                   SecurityType: WPA2 Personal
#                   SSID_STR: iseatz
#                   Unique Network ID: 03E3D45B-30D4-4676-9677-3BDBF1E32681
#                   Unique Password ID: 708C5291-B3DB-4903-9A5A-33CF4832B031
#                   SecurityType: WEP
#                   SSID_STR: 2WIRE836
#                   Unique Network ID: D27C3419-B16D-47C1-BCBE-38C4D5B9D135
#                   Unique Password ID: 109FED03-5FCE-4CE3-948D-1316874E36B3
#                   SecurityType: Open
#                   SSID_STR: mojo
#                   Unique Network ID: D7C30698-0F47-4C7C-B452-4D0887F9C10D
#                   SecurityType: WPA2 Personal
#                   SSID_STR: Launch Pad First Floor
#                   Unique Network ID: B64A503F-85EF-4370-818D-0D91EE0E0898
#                   Unique Password ID: 4FD278B8-ED61-421A-B1C2-B6AC90859177
#                   SecurityType: Open
#                   SSID_STR: CCs Coffeehouse
#                   Unique Network ID: 65E7C557-074E-4522-9D64-95498CC19CA0
#                   SecurityType: WPA2 Personal
#                   SSID_STR: Kurtis & Angela
#                   Unique Network ID: 67114F89-4FB7-4716-985A-F3A49B312A5F
#                   Unique Password ID: 14A899AE-75AB-4879-B2F4-75D8A22B7069
#                   SecurityType: Open
#                   SSID_STR: Astor_Crowne_Meeting
#                   Unique Network ID: 7E3E6429-948F-4F67-8D9D-8A3CD4A87FCE
#                   SecurityType: Open
#                   SSID_STR: Mayan
#                   Unique Network ID: 27A182CE-F9D2-49D7-A270-44A36629A0EF
#                   SecurityType: WPA2 Personal
#                   SSID_STR: Launch Pad First Floor (5Ghz)
#                   Unique Network ID: C1013E49-1849-4507-868F-6E6AFA173B4E
#                   Unique Password ID: A8541FAF-ED60-4E8C-9600-008E291BCEE9
#                   SecurityType: Open
#                   SSID_STR: 5126 0230
#                   Unique Network ID: ED662B5A-92C5-45CF-9425-B1A7A61408A5
#                   SecurityType: Open
#                   SSID_STR: attwifi
#                   Unique Network ID: 5D5E9965-A72B-4BD2-BD9A-DE935F93CE25
#                   SecurityType: Open
#                   SSID_STR: rue
#                   Unique Network ID: 8930BFF0-BF98-4158-A263-5DAF217C46E6
#               RememberRecentNetworks: 1
#               RequireAdminIBSS: 1
#               RequireAdminNetworkChange: 1
#               RequireAdminPowerToggle: 1
#         Bluetooth PAN:
#           Type: Ethernet
#           BSD Device Name: en3
#           Hardware (MAC) Address: 58:b0:35:8b:a2:d2
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes

#     Location (9/5/08 10:21 AM):

#       Active Location: No
#       Services:
#         Ethernet:
#           Type: Ethernet
#           BSD Device Name: en0
#           Hardware (MAC) Address: 58:b0:35:ef:ca:38
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#         FireWire:
#           Type: FireWire
#           BSD Device Name: fw0
#           Hardware (MAC) Address: 40:d3:2d:ff:fe:03:46:aa
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#         AirPort:
#           Type: IEEE80211
#           BSD Device Name: en1
#           Hardware (MAC) Address: f8:1e:df:e6:76:9b
#           IPv4:
#               Configuration Method: DHCP
#           IPv6:
#               Configuration Method: Automatic
#           AppleTalk:
#               Configuration Method: Node
#           Proxies:
#               Exceptions List: *.local, 169.254/16
#               FTP Passive Mode: Yes
#           IEEE80211:
#               Disconnect on Logout: No
#               Join Mode: Automatic
#               JoinModeFallback: Prompt
#               PowerEnabled: 1
#               PreferredNetworks:
#                   SecurityType: WPA Personal
#                   SSID_STR: Iseatz2
#                   Unique Network ID: 5B09A95D-533A-4B02-9EF9-9AEAD9EDB8A7
#                   Unique Password ID: 29A507C8-79B1-4829-A48D-7BAE1F2CAE25
#                   SecurityType: WPA2 Personal
#                   SSID_STR: Yes MAM
#                   Unique Network ID: 84FDA856-3FAA-4EBF-BADD-08ADCCEE61C1
#                   Unique Password ID: DF3A7B51-D8A9-4819-A767-AB779D284575
#                   SecurityType: WEP
#                   SSID_STR: stack
#                   Unique Network ID: 0FEBD171-EACD-4AB5-BDC7-681C2BFE542F
#                   Unique Password ID: CD032021-79BB-4842-AA37-098394178716
#                   SecurityType: WPA Personal
#                   SSID_STR: Darnello
#                   Unique Network ID: EBA6015A-5366-4E34-8B14-C4623C272C60
#                   Unique Password ID: 87C05F9A-E5A5-4D37-882A-01F45D04B440
#                   SecurityType: WPA2 Personal
#                   SSID_STR: Allen
#                   Unique Network ID: BA8B3688-BC16-45DC-9530-E25BA012B0B9
#                   Unique Password ID: 55912CD3-2E11-4F2D-8D0B-8E2796C256D3
#                   SecurityType: Open
#                   SSID_STR: pjscoffee&tea
#                   Unique Network ID: 4F8F4B6D-9BC6-4F4F-9E1D-F061C1C6126B
#                   SecurityType: WEP
#                   SSID_STR: stack 1
#                   Unique Network ID: 47ED1DC9-EF0C-48E4-92A5-E5B21FD262BD
#                   Unique Password ID: 72CE16FA-028C-4C53-A849-1264805A2FC4
#                   SecurityType: WPA Personal
#                   SSID_STR: Iseatz
#                   Unique Network ID: E82922B6-C112-41C5-85B2-16AA0662C377
#                   Unique Password ID: FD37F4AE-9C08-428A-9902-01A45403A800
#                   SecurityType: Open
#                   SSID_STR: hhonors
#                   Unique Network ID: F69807E0-D8F8-4BCC-825E-1ABD98526BB9
#                   SecurityType: Open
#                   SSID_STR: CCs CoffeeHouse
#                   Unique Network ID: E38D20B5-B262-48E6-9948-8F8AA2F53CA8
#                   SecurityType: Open
#                   SSID_STR: gogoinflight
#                   Unique Network ID: F72DEC29-5BD4-4369-8A57-2ADBD9274E4B
#                   SecurityType: Open
#                   SSID_STR: aloft wifi
#                   Unique Network ID: 5FC16EBB-17D1-48F7-BCA7-BFC2478123B3
#               RememberRecentNetworks: 1
#               RequireAdmin: 0

# Volumes:

#     net:

#       Type: autofs
#       Mount Point: /net
#       Mounted From: map -hosts
#       Automounted: Yes

#     home:

#       Type: autofs
#       Mount Point: /home
#       Mounted From: map auto_home
#       Automounted: Yes

# Universal Access:

#     Universal Access Information:

#       Cursor Magnification: Off
#       Display: Black on White
#       Flash Screen: Off
#       Mouse Keys: Off
#       Slow Keys: Off
#       Sticky Keys: Off
#       VoiceOver: Off
#       Zoom: Off
