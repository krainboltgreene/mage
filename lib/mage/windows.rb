module Mage::Windows
  extend Mage::Interface

  attr_accessor :data

  def initialize
    data = YAML.load prepared `systeminfo`
  end

  def prepared(profile)
    profile.chomp!
    profile.gsub!(/\nHotfix.*/,'')
    profile.gsub!(/\d Processor\(s\) Installed./,'')
    profile.gsub!(/\[\d+\]:/,'-')
  end
end

require_relative 'darwin/hardware'
require_relative 'darwin/software'

# Host Name:                 AYBABTU
# OS Name:                   Microsoftr Windows VistaT Home Premium
# OS Version:                6.0.6002 Service Pack 2 Build 6002
# OS Manufacturer:           Microsoft Corporation
# OS Configuration:          Standalone Workstation
# OS Build Type:             Multiprocessor Free
# Registered Owner:          Main Screen Turn On
# Registered Organization:   Hewlett-Packard Company
# Product ID:                89578-OEM-7332157-00061
# Original Install Date:     1/15/2008, 8:33:40 PM
# System Boot Time:          8/1/2011, 9:20:34 AM
# System Manufacturer:       HP-Pavilion
# System Model:              GX612AA-ABA m8330f
# System Type:               X86-based PC
# Processor(s):              1 Processor(s) Installed.
#                            [01]: x64 Family 16 Model 2 Stepping 2 AuthenticAMD ~2200 Mhz
# BIOS Version:              Phoenix Technologies, LTD  5.04, 12/12/2007
# Windows Directory:         C:\Windows
# System Directory:          C:\Windows\system32
# Boot Device:               \Device\HarddiskVolume1
# System Locale:             en-us;English (United States)
# Input Locale:              en-us;English (United States)
# Time Zone:                 (GMT-05:00) Eastern Time (US & Canada)
# Total Physical Memory:     3,070 MB
# Available Physical Memory: 855 MB
# Page File: Max Size:       6,354 MB
# Page File: Available:      2,536 MB
# Page File: In Use:         3,818 MB
# Page File Location(s):     C:\pagefile.sys
# Domain:                    WORKGROUP
# Logon Server:              \\AYBABTU
