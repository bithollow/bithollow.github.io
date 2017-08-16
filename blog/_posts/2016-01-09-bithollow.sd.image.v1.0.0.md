---
title: BH Pilot SD Card image v1.0.0
---

![start](/blog/2016/01/09/bithollow.sd.image.v1.0.0/rpi2_bh0.2.jpg){: .center-image .img-thumbnail}

**Raspberry Pi 3 SD card image**

- kernel 4.6.5
- preempt-4.6.5-rt9
- debian 8.6 jessie armv7a hf
- raspap-webgui 1.2
- ardupilot copter 3.4-dev
- ds1339 rtc enabled
- bcm43430 bluetooth enabled
- bcm43430 sdio wifi enabled

<!--more-->

---

- This image enabled hotspot AP by default, on your ground control station, search ssid `bithollow-bh`, default password is `bithollow`. Its dhcp server have only one available client ip in the pool: `10.0.0.2`, lease time 1 day.

   If you try to connect more than one client, only the first one can get the ip. Even you disconnected the first client, before the lease time expired, other clients wouldn't be able to acquire the ip address as well. If that's the case, try set static ip `10.0.0.2`, netmask `255.255.255.0` to your client computer.

- To config the hotspot AP, access `10.0.0.1` in your web broswer, user: `bit`, password: `hollow`

- While trying to connect uart on Raspberry Pi, turn off GPS power by the DIP switch on BH board. GPS occupied this uart, if it is power on, you will see garble in the uart terminal. (more information about the DIP switch is in user documents)

---

[Go to download page]({{site.baseurl}}/downloads/rpi-sd-image/2016/01/09/sd.image_v1.0.0)
