package com.cndatacom.topology;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RouterDiscover extends com.cndatacom.sdk.portal.work.WorkerInfo {
    private android.content.Context mContext;
    private com.cndatacom.sdk.portal.entity.NetInfo mNetInfo;
    private com.cndatacom.topology.entity.RouterConInfo mRouterConInfo;
    private com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent mRouterDiscoverEvent;
    private com.cndatacom.topology.entity.SnmpConInfo mSnmpConInfo;
    private com.cndatacom.topology.SnmpManager mSnmpManager;
    private final byte TTL = 1;
    private final byte IP_OPTION = 2;
    private final java.lang.String DISCOVER_INTERVAL_KEY = "Discover_Router_Interval_Key";
    private final int INTERVAL_DEF = 30000;
    private final java.lang.String DISCOVER_GROUP_KEY = "Discover_Router_Group_Key";
    private java.util.Vector<java.lang.String> mDiscoveredGroups = new java.util.Vector<>();
    private final java.lang.String DISCOVER_GROUP_RESULT_KEY = "Discover_Router_Group_Result_Key";
    private s2.g mRouterDiscoverGroupResult = new s2.g();
    private final java.lang.String DISCOVER_LIST_RESULT_KEY = "Discover_Router_List_Result_Key";
    private s2.l mRouterDiscoverListResult = new s2.l();
    private java.util.Vector<com.cndatacom.topology.entity.RouterInfo> mDiscoveredRouterInfos = new java.util.Vector<>();
    private java.lang.String mClientid = "";
    private java.lang.String mSchoolid = "";
    private java.lang.String mBrasip = "";
    private java.lang.String mChecktime = "";

    public interface RouterDiscoverEvent {
        void sendRouterTeamWorkMsg(byte b5, java.lang.String str);
    }

    public RouterDiscover(android.content.Context context, com.cndatacom.sdk.portal.entity.NetInfo netInfo, com.cndatacom.topology.entity.RouterConInfo routerConInfo) {
        this.mNetInfo = netInfo;
        this.mRouterConInfo = routerConInfo;
        this.mContext = context;
        loadDiscoveredGroupData();
        loadDiscoverResultData();
        loadDiscoveredListData();
        com.cndatacom.topology.entity.SnmpConInfo snmpConInfo = this.mRouterConInfo.getSnmpConInfo();
        this.mSnmpConInfo = snmpConInfo;
        if (snmpConInfo == null || !snmpConInfo.isOpen()) {
            return;
        }
        try {
            this.mSnmpManager = new com.cndatacom.topology.SnmpManager();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void appendCurDiscoverResult(long j5, java.lang.String str) {
        try {
            java.lang.String userId = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().getUserId();
            s2.l lVar = new s2.l();
            lVar.l("account", userId);
            lVar.l("clientid", this.mClientid);
            lVar.l("schoolid", this.mSchoolid);
            lVar.l("ostype", "4");
            lVar.k("version", java.lang.Integer.valueOf(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(this.mContext)));
            lVar.l("model", android.os.Build.MODEL);
            lVar.l("brasip", this.mBrasip);
            lVar.l("ipv4", this.mNetInfo.getIpv4());
            lVar.l("ipv6", this.mNetInfo.getIpv6());
            lVar.l("gateway", this.mNetInfo.getGateway());
            lVar.l("mask", this.mNetInfo.getMask());
            lVar.l("mac", this.mNetInfo.getMac());
            lVar.l("publicIp", this.mRouterConInfo.getPublicIp());
            lVar.l("dns", "");
            lVar.l("iswireless", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
            lVar.k("datatype", 2);
            lVar.l("checktime", str);
            lVar.l("routetable", com.cndatacom.sdk.portal.util.CommandUtil.exec("ip route show"));
            this.mRouterDiscoverGroupResult.k(lVar);
            saveDiscoverGroupResult();
            com.cndatacom.sdk.portal.util.PreferencesUtil.putLong(this.mContext, "Discover_Router_Interval_Key", j5);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void clearDiscoverResult() {
        this.mRouterDiscoverGroupResult = new s2.g();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_Group_Result_Key", "");
        this.mRouterDiscoverListResult = new s2.l();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_List_Result_Key", "");
    }

    private void clearDiscoveredGroupData() {
        this.mDiscoveredGroups.clear();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_Group_Key", "");
    }

    private void handleIpOptionTask() throws java.lang.Throwable {
        java.lang.String publicIp = this.mRouterConInfo.getPublicIp();
        java.lang.String strExec = com.cndatacom.sdk.portal.util.CommandUtil.exec(java.lang.String.format("ping -c %d -i %d -R  %s", java.lang.Integer.valueOf(this.mRouterConInfo.getRetryCount()), java.lang.Integer.valueOf(this.mRouterConInfo.getRetryInterval()), publicIp));
        java.util.Vector vector = new java.util.Vector();
        boolean z4 = false;
        for (java.lang.String str : strExec.split("\n")) {
            java.lang.String strTrim = str.trim();
            if (!android.text.TextUtils.isEmpty(strTrim)) {
                java.util.Locale locale = java.util.Locale.US;
                if (!strTrim.toUpperCase(locale).contains("PING")) {
                    if (strTrim.toUpperCase(locale).contains("RR")) {
                        if (z4) {
                            break;
                        } else {
                            z4 = true;
                        }
                    }
                    if (z4 && strTrim.toUpperCase(locale).contains("TTL")) {
                        break;
                    }
                    if (z4) {
                        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})").matcher(strTrim);
                        if (matcher.find()) {
                            java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(matcher.group());
                            if (matcher2.find()) {
                                java.lang.String strTrim2 = matcher2.group().trim();
                                if (!vector.contains(strTrim2)) {
                                    vector.add(strTrim2);
                                }
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        for (int size = vector.size() - 1; size >= 0; size--) {
            java.lang.String str2 = (java.lang.String) vector.get(size);
            if (!this.mNetInfo.getIpv4().equals(str2)) {
                com.cndatacom.topology.entity.RouterInfo routerInfo = new com.cndatacom.topology.entity.RouterInfo();
                routerInfo.setIp(str2);
                this.mDiscoveredRouterInfos.add(routerInfo);
                if (str2.equals(publicIp)) {
                    break;
                }
            }
        }
        handleRouterIps();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void handleRouterIps() {
        if (this.mSnmpConInfo != null && this.mSnmpManager != null) {
            sendSnmpMsg();
        }
        java.lang.String gateway = this.mNetInfo.getGateway();
        java.lang.String mask = this.mNetInfo.getMask();
        java.lang.String ipv4 = this.mNetInfo.getIpv4();
        this.mNetInfo.getIpv6();
        java.lang.String strCreateRouterKey = com.cndatacom.topology.util.TopologyKeyUtil.createRouterKey(gateway, mask, ipv4, this.mRouterConInfo.getPublicIp(), this.mChecktime);
        s2.g gVar = new s2.g();
        for (int size = this.mDiscoveredRouterInfos.size() - 1; size >= 0; size--) {
            com.cndatacom.topology.entity.RouterInfo routerInfo = this.mDiscoveredRouterInfos.get(size);
            s2.l lVar = new s2.l();
            lVar.l("ip", routerInfo.getIp());
            lVar.l("model", routerInfo.getModel());
            lVar.l("os", routerInfo.getOs());
            lVar.l("ttl", routerInfo.getTtl());
            gVar.k(lVar);
        }
        this.mRouterDiscoverListResult.j(strCreateRouterKey, gVar);
        saveDiscoveredListResult();
        saveDiscoveredGroupData();
        uploadDiscoverResult();
    }

    private void handleRouterTask(byte b5) throws java.lang.Throwable {
        if (b5 == 1) {
            handleTTLRouterTask();
        } else {
            if (b5 != 2) {
                return;
            }
            handleIpOptionTask();
        }
    }

    private void handleTTLRouterTask() {
        boolean z4;
        java.lang.String publicIp = this.mRouterConInfo.getPublicIp();
        int maxTTL = this.mRouterConInfo.getMaxTTL();
        int retryCount = this.mRouterConInfo.getRetryCount();
        int retryInterval = this.mRouterConInfo.getRetryInterval();
        for (int i5 = 1; i5 <= maxTTL; i5++) {
            boolean z5 = false;
            java.lang.String[] strArrSplit = com.cndatacom.sdk.portal.util.CommandUtil.exec(java.lang.String.format("ping -c %d -i %d -t %d  %s", java.lang.Integer.valueOf(retryCount), java.lang.Integer.valueOf(retryInterval), java.lang.Integer.valueOf(i5), publicIp)).split("\n");
            int i6 = 0;
            while (true) {
                if (i6 >= strArrSplit.length) {
                    z4 = false;
                    break;
                }
                java.lang.String strTrim = strArrSplit[i6].trim();
                if (!android.text.TextUtils.isEmpty(strTrim)) {
                    java.util.Locale locale = java.util.Locale.US;
                    if (strTrim.toUpperCase(locale).contains("PING")) {
                        continue;
                    } else {
                        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})").matcher(strTrim);
                        if (matcher.find()) {
                            java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(matcher.group());
                            if (matcher2.find()) {
                                java.lang.String strTrim2 = matcher2.group().trim();
                                com.cndatacom.topology.entity.RouterInfo routerInfo = new com.cndatacom.topology.entity.RouterInfo();
                                routerInfo.setIp(strTrim2);
                                routerInfo.setTtl(i5 + "");
                                this.mDiscoveredRouterInfos.add(routerInfo);
                                if (strTrim.toUpperCase(locale).contains("TTL")) {
                                    z4 = true;
                                    z5 = true;
                                    break;
                                } else {
                                    z4 = false;
                                    z5 = true;
                                    break;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
                i6++;
            }
            if (!z5) {
                com.cndatacom.topology.entity.RouterInfo routerInfo2 = new com.cndatacom.topology.entity.RouterInfo();
                routerInfo2.setIp("");
                routerInfo2.setTtl(i5 + "");
                this.mDiscoveredRouterInfos.add(routerInfo2);
            }
            if (z4) {
                break;
            }
        }
        handleRouterIps();
    }

    private void initResultData(boolean z4, long j5, long j6) {
        java.lang.String dateToYMDHMSString = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(j5);
        java.lang.String dateToYMDHMSString2 = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(j6);
        s2.g gVar = this.mRouterDiscoverGroupResult;
        if (gVar == null || gVar.size() == 0 || z4) {
            this.mChecktime = dateToYMDHMSString;
            appendCurDiscoverResult(j5, dateToYMDHMSString);
            return;
        }
        java.lang.String gateway = this.mNetInfo.getGateway();
        java.lang.String mask = this.mNetInfo.getMask();
        java.lang.String ipv4 = this.mNetInfo.getIpv4();
        this.mNetInfo.getIpv6();
        java.lang.String strCreateRouterKey = com.cndatacom.topology.util.TopologyKeyUtil.createRouterKey(gateway, mask, ipv4, this.mRouterConInfo.getPublicIp(), dateToYMDHMSString2);
        boolean z5 = false;
        for (int i5 = 0; i5 < this.mRouterDiscoverGroupResult.size(); i5++) {
            s2.l lVarC = this.mRouterDiscoverGroupResult.l(i5).c();
            java.lang.String strE = lVarC.o("gateway").e();
            java.lang.String strE2 = lVarC.o("mask").e();
            java.lang.String strE3 = lVarC.o("ipv4").e();
            lVarC.o("ipv6").e();
            if (strCreateRouterKey.equals(com.cndatacom.topology.util.TopologyKeyUtil.createRouterKey(strE, strE2, strE3, lVarC.o("publicIp").e(), lVarC.o("checktime").e()))) {
                z5 = true;
                break;
            }
        }
        if (z5) {
            this.mChecktime = dateToYMDHMSString2;
            return;
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover RouterDiscover initResultData router ip not same");
        this.mChecktime = dateToYMDHMSString;
        clearDiscoverResult();
        clearDiscoveredGroupData();
        appendCurDiscoverResult(j5, dateToYMDHMSString);
    }

    private void loadDiscoverResultData() {
        try {
            java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Discover_Router_Group_Result_Key", "");
            if (android.text.TextUtils.isEmpty(string)) {
                this.mRouterDiscoverGroupResult = new s2.g();
            } else {
                this.mRouterDiscoverGroupResult = new s2.n().b(string).b();
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void loadDiscoveredGroupData() {
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Discover_Router_Group_Key", "");
        if (android.text.TextUtils.isEmpty(string)) {
            return;
        }
        try {
            s2.g gVarB = new s2.n().b(string).b();
            for (int i5 = 0; i5 < gVarB.size(); i5++) {
                this.mDiscoveredGroups.add(gVarB.l(i5).e());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void loadDiscoveredListData() {
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Discover_Router_List_Result_Key", "");
        if (android.text.TextUtils.isEmpty(string)) {
            return;
        }
        try {
            for (java.util.Map.Entry<java.lang.String, s2.i> entry : new s2.n().b(string).c().n()) {
                this.mRouterDiscoverListResult.j(entry.getKey(), entry.getValue());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void saveDiscoverGroupResult() {
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_Group_Result_Key", this.mRouterDiscoverGroupResult.toString());
    }

    private void saveDiscoveredGroupData() {
        if (this.mDiscoveredGroups.isEmpty()) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_Group_Key", "");
            return;
        }
        s2.g gVar = new s2.g();
        java.util.Iterator<java.lang.String> it = this.mDiscoveredGroups.iterator();
        while (it.hasNext()) {
            gVar.j(it.next());
        }
        if (gVar.size() > 0) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_Group_Key", gVar.toString());
        }
    }

    private void saveDiscoveredListResult() {
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Router_List_Result_Key", this.mRouterDiscoverListResult.toString());
    }

    private void sendSnmpMsg() {
        if (this.mSnmpManager == null) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(new r4.v(new r4.j("1.3.6.1.2.1.1.5.0")));
        arrayList.add(new r4.v(new r4.j("1.3.6.1.2.1.1.1.0")));
        java.lang.String[] strArrSplit = this.mSnmpConInfo.getName().split(",");
        for (int size = this.mDiscoveredRouterInfos.size() - 1; size >= 0; size--) {
            com.cndatacom.topology.entity.RouterInfo routerInfo = this.mDiscoveredRouterInfos.get(size);
            try {
                com.cndatacom.topology.SnmpManager snmpManager = this.mSnmpManager;
                if (snmpManager == null) {
                    return;
                }
                java.util.Vector<? extends r4.v> vectorSendMsg = snmpManager.sendMsg(routerInfo.getIp(), com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT, this.mSnmpConInfo.getRetryCount(), this.mSnmpConInfo.getTimeout(), arrayList, strArrSplit);
                if (vectorSendMsg != null) {
                    for (int i5 = 0; i5 < vectorSendMsg.size(); i5++) {
                        r4.v vVarElementAt = vectorSendMsg.elementAt(i5);
                        r4.u uVarX = vVarElementAt.x();
                        java.lang.String string = vVarElementAt.u().toString();
                        java.lang.String string2 = uVarX.toString();
                        if (!android.text.TextUtils.isEmpty(string2) && !"Null".equals(string2) && !uVarX.q() && !"noSuchObject".equals(string2) && !"noSuchInstance".equals(string2)) {
                            if ("1.3.6.1.2.1.1.5.0".equals(string)) {
                                routerInfo.setModel(string2);
                            } else if ("1.3.6.1.2.1.1.1.0".equals(string)) {
                                routerInfo.setOs(string2);
                            }
                        }
                    }
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a9  */
    private void startTask() {
        boolean z4;
        byte b5;
        com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent routerDiscoverEvent;
        com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover RouterDiscover->startTask");
        this.mDiscoveredRouterInfos.clear();
        long time = new java.util.Date().getTime();
        long j5 = com.cndatacom.sdk.portal.util.PreferencesUtil.getLong(this.mContext, "Discover_Router_Interval_Key", -1L);
        long j6 = j5 < 0 ? time : j5;
        long j7 = time - j6;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover startTask time->" + j7 + " interval->" + this.mRouterConInfo.getInterval());
        if (j7 <= this.mRouterConInfo.getInterval() * 2) {
            if (this.mRouterConInfo.getInterval() <= j7) {
                uploadDiscoverResult();
                clearDiscoverResult();
                clearDiscoveredGroupData();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover startTask upload last data");
            } else {
                z4 = false;
            }
            initResultData(z4, time, j6);
            b5 = new java.util.Random().nextInt(200) % 2 != 0 ? (byte) 2 : (byte) 1;
            routerDiscoverEvent = this.mRouterDiscoverEvent;
            if (routerDiscoverEvent != null) {
                routerDiscoverEvent.sendRouterTeamWorkMsg(b5, this.mRouterConInfo.getPublicIp());
            }
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this, this.mRouterConInfo.getInterval());
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover startTask clear last data");
        clearDiscoveredGroupData();
        clearDiscoverResult();
        z4 = true;
        initResultData(z4, time, j6);
        if (new java.util.Random().nextInt(200) % 2 != 0) {
        }
        routerDiscoverEvent = this.mRouterDiscoverEvent;
        if (routerDiscoverEvent != null) {
            routerDiscoverEvent.sendRouterTeamWorkMsg(b5, this.mRouterConInfo.getPublicIp());
        }
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this, this.mRouterConInfo.getInterval());
    }

    private void uploadDiscoverResult() {
        try {
            java.lang.String url = this.mRouterConInfo.getUrl();
            if (android.text.TextUtils.isEmpty(url)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover uploadDiscoverResult url is null");
                return;
            }
            s2.g gVar = new s2.g();
            for (int i5 = 0; i5 < this.mRouterDiscoverGroupResult.size(); i5++) {
                s2.l lVarC = this.mRouterDiscoverGroupResult.l(i5).c();
                lVarC.o("brasip").e();
                java.lang.String strE = lVarC.o("gateway").e();
                java.lang.String strE2 = lVarC.o("mask").e();
                java.lang.String strE3 = lVarC.o("ipv4").e();
                lVarC.o("ipv6").e();
                java.lang.String strCreateRouterKey = com.cndatacom.topology.util.TopologyKeyUtil.createRouterKey(strE, strE2, strE3, lVarC.o("publicIp").e(), lVarC.o("checktime").e());
                s2.l lVarC2 = new s2.n().b(lVarC.toString()).c();
                s2.g gVarP = this.mRouterDiscoverListResult.p(strCreateRouterKey);
                if (gVarP == null) {
                    gVarP = new s2.g();
                }
                if (gVarP.size() > 0) {
                    lVarC2.j("datainfo", gVarP);
                    gVar.k(lVarC2);
                }
            }
            if (gVar.size() <= 0) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover uploadDiscoverResult data is null->");
                return;
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover RouterDiscover upload data  ->" + gVar.toString());
            java.lang.String strByteArrayToHex = com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), gVar.toString().getBytes("utf-8")));
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "text/plain;charset=utf-8");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(url, arrayMap, strByteArrayToHex.getBytes("utf-8"));
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover RouterDiscover uploadDiscoverResult e->" + resultPost.getDataString());
                com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover RouterDiscover uploadDiscoverResult httpcode ->" + resultPost.getHttpCode());
                return;
            }
            java.lang.String dataString = resultPost.getDataString();
            if (new s2.n().b(dataString).c().o("code").a() == 0) {
                clearDiscoverResult();
                com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover RouterDiscover uploadDiscoverResult ->" + dataString);
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover uploadDiscoverResult httpcode ->" + resultPost.getHttpCode());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void appendToDiscovered(java.lang.String str) {
        if (this.mDiscoveredGroups.contains(str)) {
            return;
        }
        this.mDiscoveredGroups.add(str);
    }

    public void doRouterTask(byte b5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) throws java.lang.Throwable {
        if (str.equals(this.mNetInfo.getMask()) && str2.equals(this.mNetInfo.getGateway()) && str3.equals(this.mNetInfo.getIpv4()) && this.mDiscoveredGroups.contains(str4)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover RouterDiscover-> doRouterTask method:" + ((int) b5));
            handleRouterTask(b5);
        }
    }

    public boolean isDiscovered(java.lang.String str) {
        return this.mDiscoveredGroups.contains(str);
    }

    public void release(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(getTaskId());
        com.cndatacom.topology.SnmpManager snmpManager = this.mSnmpManager;
        if (snmpManager != null) {
            snmpManager.release();
        }
    }

    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
    public void runTask() {
        startTask();
    }

    public void setRouterDiscoverEvent(com.cndatacom.topology.RouterDiscover.RouterDiscoverEvent routerDiscoverEvent) {
        this.mRouterDiscoverEvent = routerDiscoverEvent;
    }

    public void start(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        this.mClientid = configInfo.getClientId();
        this.mSchoolid = configInfo.getSchoolId("");
        this.mBrasip = configInfo.getWlanacip();
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this, 30000L);
    }
}
