package com.cndatacom.sdk.portal.interfaces;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface PortalEvent {
    void handleConnectFailMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handleConnectedMsg(boolean z4, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handleConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handleDisConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handleDisconnectedMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handleNetworkInfoMsg(com.cndatacom.sdk.portal.entity.NetInfo netInfo);

    void handlePreConnectFailMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handlePreConnectedMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    void handlePreConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);
}
