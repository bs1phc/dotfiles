#!/bin/bash
platform=$1
i3-msg move container to workspace 10

case $platform in
	thm ) exec openvpn ~/vpnfiles/thm.ovpn & ;;
	htb ) exec openvpn ~/vpnfiles/htb.ovpn & ;;
	htbvip ) exec openvpn ~/vpnfiles/viphtb.ovpn & ;;
esac

#i3-msg move container to workspace 10