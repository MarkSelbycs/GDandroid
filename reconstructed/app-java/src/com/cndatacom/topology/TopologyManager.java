package com.cndatacom.topology;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TopologyManager {
    private static com.cndatacom.topology.TopologyManager _TopologyManager;
    private com.cndatacom.topology.NeighbourDiscover mNeighbourDiscover;
    private com.cndatacom.topology.RouterDiscover mRouterDiscover;
    private com.cndatacom.topology.TeamWorkDiscover mTeamWorkDiscover;
    private boolean mIsOpen = false;
    private com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent mTeamWorkDiscoverEvent = new com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent() { // from class: com.cndatacom.topology.TopologyManager.1
        @Override // com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent
        public void doNeighbourTask(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
            if (com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover != null) {
                com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover.doNeighbourTask(i5, str, str2, str3, str4);
            }
        }

        @Override // com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent
        public void doRouterTask(byte b5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) throws java.lang.Throwable {
            if (com.cndatacom.topology.TopologyManager.this.mRouterDiscover != null) {
                com.cndatacom.topology.TopologyManager.this.mRouterDiscover.doRouterTask(b5, str, str2, str3, str4);
            }
        }

        @Override // com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent
        public void giveup(int i5) {
            if (i5 != 1 || com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover == null) {
                return;
            }
            com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover.doNextDiscover();
        }

        @Override // com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent
        public boolean isDiscovered(int i5, java.lang.String str) {
            if (i5 == 1) {
                if (com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover != null) {
                    return com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover.isDiscovered(str);
                }
                return false;
            }
            if (i5 != 2 || com.cndatacom.topology.TopologyManager.this.mRouterDiscover == null) {
                return false;
            }
            return com.cndatacom.topology.TopologyManager.this.mRouterDiscover.isDiscovered(str);
        }

        @Override // com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent
        public void sendTeamWorkMsgFinished(int i5, java.lang.String str) {
            if (i5 == 1) {
                if (com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover != null) {
                    com.cndatacom.topology.TopologyManager.this.mNeighbourDiscover.appendToDiscovered(str);
                }
            } else {
                if (i5 != 2 || com.cndatacom.topology.TopologyManager.this.mRouterDiscover == null) {
                    return;
                }
                com.cndatacom.topology.TopologyManager.this.mRouterDiscover.appendToDiscovered(str);
            }
        }
    };
    private com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent mNeighbourDiscoverEvent = new com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent() { // from class: com.cndatacom.topology.TopologyManager.2
        @Override // com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent
        public void sendNeighbourTeamWorkMsg(int i5, java.lang.String str) {
            if (com.cndatacom.topology.TopologyManager.this.mTeamWorkDiscover != null) {
                com.cndatacom.topology.TopologyManager.this.mTeamWorkDiscover.sendNeighbourTeamWorkMsg(i5, str);
            }
        }
    };
    private com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent mRouterDiscoverEvent = new com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent() { // from class: com.cndatacom.topology.TopologyManager.3
        @Override // com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent
        public void sendRouterTeamWorkMsg(byte b5, java.lang.String str) {
            if (com.cndatacom.topology.TopologyManager.this.mTeamWorkDiscover != null) {
                com.cndatacom.topology.TopologyManager.this.mTeamWorkDiscover.sendRouterTeamWorkMsg(b5, str);
            }
        }
    };

    private TopologyManager() {
    }

    public static com.cndatacom.topology.TopologyManager getInstance() {
        if (_TopologyManager == null) {
            _TopologyManager = new com.cndatacom.topology.TopologyManager();
        }
        return _TopologyManager;
    }

    private void initData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        boolean z4;
        org.json.JSONObject jSONObject;
        org.json.JSONObject jSONObject2;
        org.json.JSONObject jSONObject3;
        org.json.JSONObject jSONObject4;
        org.json.JSONObject jSONObject5;
        try {
            java.lang.String config = configInfo.getConfig("check-args", "");
            if (android.text.TextUtils.isEmpty(config)) {
                return;
            }
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
            org.json.JSONObject jSONObject6 = new org.json.JSONObject(config);
            if (!jSONObject6.has("router") || (jSONObject4 = jSONObject6.getJSONObject("router")) == null) {
                z4 = true;
            } else {
                com.cndatacom.topology.entity.RouterConInfo routerConInfo = new com.cndatacom.topology.entity.RouterConInfo();
                routerConInfo.setInterval(jSONObject4.optInt("interval", com.cndatacom.sdk.portal.entity.ConfigInfo.KEEP_INTERVAL_DEF) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
                routerConInfo.setMaxTTL(jSONObject4.optInt("maxttl", 10));
                routerConInfo.setRetryCount(jSONObject4.optInt("retryCount", 2));
                routerConInfo.setRetryInterval(jSONObject4.optInt("retryInterval", 1));
                routerConInfo.setPublicIp(jSONObject4.optString("publicIp", ""));
                routerConInfo.setUrl(jSONObject4.optString("url", ""));
                if (!jSONObject6.has("snmp") || (jSONObject5 = jSONObject6.getJSONObject("snmp")) == null) {
                    z4 = true;
                } else {
                    com.cndatacom.topology.entity.SnmpConInfo snmpConInfo = new com.cndatacom.topology.entity.SnmpConInfo();
                    snmpConInfo.setName(jSONObject5.optString("name", ""));
                    snmpConInfo.setOpen(jSONObject5.optInt("enable", 0) == 1);
                    snmpConInfo.setRetryCount(jSONObject5.optInt("retryCount", 2));
                    z4 = true;
                    snmpConInfo.setTimeout(jSONObject5.optInt("timeout", 1) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
                    routerConInfo.setSnmpConInfo(snmpConInfo);
                }
                com.cndatacom.topology.RouterDiscover routerDiscover = new com.cndatacom.topology.RouterDiscover(context, netInfo, routerConInfo);
                this.mRouterDiscover = routerDiscover;
                routerDiscover.setRouterDiscoverEvent(this.mRouterDiscoverEvent);
            }
            if (jSONObject6.has("teamwork") && (jSONObject3 = jSONObject6.getJSONObject("teamwork")) != null) {
                com.cndatacom.topology.entity.TeamWorkConInfo teamWorkConInfo = new com.cndatacom.topology.entity.TeamWorkConInfo();
                teamWorkConInfo.setCastads(jSONObject3.optString("castads", ""));
                teamWorkConInfo.setTimeout(jSONObject3.optInt("timeout", 120) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
                com.cndatacom.topology.TeamWorkDiscover teamWorkDiscover = new com.cndatacom.topology.TeamWorkDiscover(netInfo, teamWorkConInfo);
                this.mTeamWorkDiscover = teamWorkDiscover;
                teamWorkDiscover.setTeamWorkDiscoverEvent(this.mTeamWorkDiscoverEvent);
            }
            if (jSONObject6.has("neighbour") && (jSONObject2 = jSONObject6.getJSONObject("neighbour")) != null) {
                com.cndatacom.topology.entity.NeighbourConInfo neighbourConInfo = new com.cndatacom.topology.entity.NeighbourConInfo();
                neighbourConInfo.setInterval(jSONObject2.optInt("interval", 120) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
                neighbourConInfo.setTotal(jSONObject2.optInt("total", com.cndatacom.sdk.portal.entity.ConfigInfo.KEEP_INTERVAL_DEF) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
                neighbourConInfo.setUrl(jSONObject2.optString("url", ""));
                com.cndatacom.topology.NeighbourDiscover neighbourDiscover = new com.cndatacom.topology.NeighbourDiscover(context, netInfo, neighbourConInfo);
                this.mNeighbourDiscover = neighbourDiscover;
                neighbourDiscover.setNeighbourDiscoverEvent(this.mNeighbourDiscoverEvent);
            }
            if (!jSONObject6.has("enable") || (jSONObject = jSONObject6.getJSONObject("enable")) == null) {
                return;
            }
            this.mIsOpen = jSONObject.optString("value", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals("1") ? z4 : false;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void release(android.content.Context context) {
        this.mIsOpen = false;
        com.cndatacom.topology.TeamWorkDiscover teamWorkDiscover = this.mTeamWorkDiscover;
        if (teamWorkDiscover != null) {
            teamWorkDiscover.release();
        }
        com.cndatacom.topology.RouterDiscover routerDiscover = this.mRouterDiscover;
        if (routerDiscover != null) {
            routerDiscover.release(context);
        }
        com.cndatacom.topology.NeighbourDiscover neighbourDiscover = this.mNeighbourDiscover;
        if (neighbourDiscover != null) {
            neighbourDiscover.release(context);
        }
        _TopologyManager = null;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TopologyHelper release->");
    }

    public void start(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        initData(context, configInfo);
        if (this.mIsOpen) {
            com.cndatacom.topology.TeamWorkDiscover teamWorkDiscover = this.mTeamWorkDiscover;
            if (teamWorkDiscover != null) {
                teamWorkDiscover.start();
            }
            com.cndatacom.topology.RouterDiscover routerDiscover = this.mRouterDiscover;
            if (routerDiscover != null) {
                routerDiscover.start(configInfo);
            }
            com.cndatacom.topology.NeighbourDiscover neighbourDiscover = this.mNeighbourDiscover;
            if (neighbourDiscover != null) {
                neighbourDiscover.start(configInfo);
            }
        }
    }
}
