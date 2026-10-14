package com.cndatacom.topology;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NeighbourDiscover {
    private android.content.Context mContext;
    private com.cndatacom.topology.entity.NeighbourConInfo mNeighbourConInfo;
    private com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent mNeighbourDiscoverEvent;
    private s2.g mNeighbourDiscoverGroupResult;
    private s2.g mNeighbourDiscoverResult;
    private com.cndatacom.sdk.portal.entity.NetInfo mNetInfo;
    private int[] mRandomDiscoverGroupIndexs;
    private final java.lang.String DISCOVER_INTERVAL_KEY = "Discover_Neighbour_Interval_Key";
    private final java.lang.String DISCOVER_GROUP_INDEX_KEY = "Discover_Group_Index_Key";
    private final java.lang.String NEIGHBOUR_DISCOVER_RESULT_KEY = "Neighbour_Discover_Result_Key";
    private final java.lang.String NEIGHBOUR_DISCOVER_GROUP_RESULT_KEY = "Neighbour_Discover_Group_Result_Key";
    private java.util.Vector<java.lang.String> mAllDiscoverIps = new java.util.Vector<>();
    private final int GROUP_SIZE = 8;
    private java.util.Vector<java.lang.String> mDiscoveredGroupIndexs = new java.util.Vector<>();
    private java.util.Random mRandom = new java.util.Random();
    private int mGiveupCount = 0;
    private com.cndatacom.sdk.portal.work.WorkerInfo mTWorker = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.topology.NeighbourDiscover.1
        @Override // com.cndatacom.sdk.portal.work.WorkerInfo
        public void runTask() {
            com.cndatacom.topology.NeighbourDiscover.this.startTTask();
        }
    };
    private com.cndatacom.sdk.portal.work.WorkerInfo mSingleWorker = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.topology.NeighbourDiscover.2
        @Override // com.cndatacom.sdk.portal.work.WorkerInfo
        public void runTask() {
            com.cndatacom.topology.NeighbourDiscover.this.startSingleTask();
        }
    };
    private final int INTERVAL_DEF = 30000;
    private java.lang.String mClientid = "";
    private java.lang.String mSchoolid = "";
    private java.lang.String mBrasip = "";
    private java.lang.String mChecktime = "";

    public interface NeighbourDiscoverEvent {
        void sendNeighbourTeamWorkMsg(int i5, java.lang.String str);
    }

    public NeighbourDiscover(android.content.Context context, com.cndatacom.sdk.portal.entity.NetInfo netInfo, com.cndatacom.topology.entity.NeighbourConInfo neighbourConInfo) {
        this.mContext = context;
        this.mNetInfo = netInfo;
        this.mNeighbourConInfo = neighbourConInfo;
        loadInitData();
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
            lVar.l("dns", "");
            lVar.l("iswireless", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
            lVar.k("datatype", 1);
            lVar.l("checktime", str);
            lVar.l("routetable", com.cndatacom.sdk.portal.util.CommandUtil.exec("ip route show"));
            this.mNeighbourDiscoverResult.k(lVar);
            com.cndatacom.sdk.portal.util.PreferencesUtil.putLong(this.mContext, "Discover_Neighbour_Interval_Key", j5);
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Neighbour_Discover_Result_Key", this.mNeighbourDiscoverResult.toString());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void clearDiscoverResult() {
        this.mNeighbourDiscoverResult = new s2.g();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Neighbour_Discover_Result_Key", "");
        this.mNeighbourDiscoverGroupResult = new s2.g();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Neighbour_Discover_Group_Result_Key", "");
    }

    private void clearDiscoveredGroupIndexData() {
        this.mDiscoveredGroupIndexs.clear();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Group_Index_Key", "");
    }

    private void createGroupIpData() {
        int maskPrefixLength = this.mNetInfo.getMaskPrefixLength();
        if (maskPrefixLength < 24) {
            maskPrefixLength = 24;
        }
        java.lang.String ipv4 = this.mNetInfo.getIpv4();
        this.mAllDiscoverIps.addAll(com.cndatacom.topology.util.IpUtil.parseAllIpMaskRange(ipv4, maskPrefixLength + ""));
        com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover createGroupIpData AllDiscoverIps->" + new s2.e().k(this.mAllDiscoverIps));
    }

    private void createRandomIndexData() {
        int iCeil = (int) java.lang.Math.ceil(this.mAllDiscoverIps.size() / 8.0f);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover createRandomIndexData page->" + iCeil);
        this.mRandomDiscoverGroupIndexs = new int[iCeil];
        for (int i5 = 0; i5 < iCeil; i5++) {
            this.mRandomDiscoverGroupIndexs[i5] = i5;
        }
    }

    private int getRandomGroupIndex() {
        int randomGroupIndexValidLength = getRandomGroupIndexValidLength();
        if (randomGroupIndexValidLength == 0) {
            return -1;
        }
        int iNextInt = this.mRandom.nextInt(randomGroupIndexValidLength * 100) % randomGroupIndexValidLength;
        int i5 = this.mRandomDiscoverGroupIndexs[iNextInt];
        if (!this.mDiscoveredGroupIndexs.contains(com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourDiscoverKey(i5, this.mNetInfo.getGateway(), this.mNetInfo.getMask(), com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourTargetIp(i5, this.mNetInfo.getIpv4())))) {
            return i5;
        }
        int[] iArr = this.mRandomDiscoverGroupIndexs;
        int i6 = randomGroupIndexValidLength - 1;
        iArr[iNextInt] = iArr[i6];
        iArr[i6] = -1;
        return getRandomGroupIndex();
    }

    private int getRandomGroupIndexValidLength() {
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.mRandomDiscoverGroupIndexs;
            if (i5 >= iArr.length || iArr[i5] == -1) {
                break;
            }
            i6++;
            i5++;
        }
        return i6;
    }

    private java.lang.String getValueByRegex(java.lang.String str, java.lang.String str2) {
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(" + str2 + ")").matcher(str);
        if (!matcher.find()) {
            return "";
        }
        java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile(str2).matcher(matcher.group());
        return matcher2.find() ? matcher2.group().trim() : "";
    }

    private void handleNeighbourTask(java.util.Vector<java.lang.String> vector, java.lang.String str, java.lang.String str2) {
        boolean z4;
        java.util.Vector<com.cndatacom.topology.entity.ArpInfo> arp = readArp();
        java.util.Vector<com.cndatacom.topology.entity.ArpInfo> vector2 = new java.util.Vector<>();
        final java.util.Vector<java.lang.String> vector3 = new java.util.Vector<>();
        for (int i5 = 0; i5 < vector.size(); i5++) {
            java.lang.String str3 = vector.get(i5);
            if (!str.equals(str3) && !str2.equals(str3) && !str3.endsWith(".0") && !str3.endsWith(".255")) {
                int i6 = 0;
                while (true) {
                    if (i6 >= arp.size()) {
                        z4 = false;
                        break;
                    }
                    com.cndatacom.topology.entity.ArpInfo arpInfo = arp.get(i6);
                    if (arpInfo.getIp().equals(str3)) {
                        if (arpInfo.isValid()) {
                            vector2.add(arpInfo);
                        }
                        z4 = true;
                        break;
                    }
                    i6++;
                }
                if (!z4) {
                    vector3.add(str3);
                }
            }
        }
        saveArpInfo(vector2);
        sendMsg(vector3);
        new android.os.AsyncTask<java.lang.String, java.lang.Integer, java.lang.String>() { // from class: com.cndatacom.topology.NeighbourDiscover.3
            @Override // android.os.AsyncTask
            public java.lang.String doInBackground(java.lang.String... strArr) {
                try {
                    java.lang.Thread.sleep(250L);
                } catch (java.lang.InterruptedException e5) {
                    e5.printStackTrace();
                }
                com.cndatacom.topology.NeighbourDiscover.this.readLocArpAndSaveData(vector3);
                return null;
            }
        }.executeOnExecutor(com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance(), new java.lang.String[0]);
    }

    private boolean initResultData(boolean z4, long j5, long j6) {
        java.lang.String dateToYMDHMSString = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(j5);
        java.lang.String dateToYMDHMSString2 = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(j6);
        s2.g gVar = this.mNeighbourDiscoverResult;
        if (gVar == null || gVar.size() == 0 || z4) {
            this.mChecktime = dateToYMDHMSString;
            appendCurDiscoverResult(j5, dateToYMDHMSString);
            return true;
        }
        java.lang.String gateway = this.mNetInfo.getGateway();
        java.lang.String mask = this.mNetInfo.getMask();
        java.lang.String ipv4 = this.mNetInfo.getIpv4();
        this.mNetInfo.getIpv6();
        java.lang.String strCreateNeighbourKey = com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(gateway, mask, ipv4, dateToYMDHMSString2);
        boolean z5 = false;
        for (int i5 = 0; i5 < this.mNeighbourDiscoverResult.size(); i5++) {
            s2.l lVarC = this.mNeighbourDiscoverResult.l(i5).c();
            java.lang.String strE = lVarC.o("gateway").e();
            java.lang.String strE2 = lVarC.o("mask").e();
            java.lang.String strE3 = lVarC.o("ipv4").e();
            lVarC.o("ipv6").e();
            if (strCreateNeighbourKey.equals(com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(strE, strE2, strE3, lVarC.o("checktime").e()))) {
                z5 = true;
                break;
            }
        }
        if (z5) {
            this.mChecktime = dateToYMDHMSString2;
        } else {
            this.mChecktime = dateToYMDHMSString;
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover initResultData router ip not same");
            clearDiscoverResult();
            clearDiscoveredGroupIndexData();
            appendCurDiscoverResult(j5, dateToYMDHMSString);
        }
        return !z5;
    }

    private void loadDiscoverResultData() {
        try {
            java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Neighbour_Discover_Result_Key", "");
            if (android.text.TextUtils.isEmpty(string)) {
                this.mNeighbourDiscoverResult = new s2.g();
            } else {
                this.mNeighbourDiscoverResult = new s2.n().b(string).b();
            }
            java.lang.String string2 = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Neighbour_Discover_Group_Result_Key", "");
            if (android.text.TextUtils.isEmpty(string2)) {
                this.mNeighbourDiscoverGroupResult = new s2.g();
            } else {
                this.mNeighbourDiscoverGroupResult = new s2.n().b(string2).b();
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void loadDiscoveredGroupIndexData() {
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(this.mContext, "Discover_Group_Index_Key", "");
        if (android.text.TextUtils.isEmpty(string)) {
            return;
        }
        try {
            s2.g gVarB = new s2.n().b(string).b();
            for (int i5 = 0; i5 < gVarB.size(); i5++) {
                this.mDiscoveredGroupIndexs.add(gVarB.l(i5).e());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private void loadInitData() {
        loadDiscoverResultData();
        loadDiscoveredGroupIndexData();
        createGroupIpData();
        createRandomIndexData();
    }

    private java.util.Vector<com.cndatacom.topology.entity.ArpInfo> readArp() {
        java.util.Vector<com.cndatacom.topology.entity.ArpInfo> vector = new java.util.Vector<>();
        int i5 = 0;
        if (android.os.Build.VERSION.SDK_INT <= 28) {
            try {
                java.lang.String[] strArrSplit = com.cndatacom.sdk.portal.util.CommandUtil.exec("cat /proc/net/arp").split("\n");
                while (i5 < strArrSplit.length) {
                    java.lang.String strTrim = strArrSplit[i5].trim();
                    if (!android.text.TextUtils.isEmpty(strTrim) && !strTrim.toUpperCase(java.util.Locale.US).contains("IP")) {
                        java.lang.String valueByRegex = getValueByRegex(strTrim, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");
                        java.lang.String valueByRegex2 = getValueByRegex(strTrim, "([0-9a-fA-F]{2})(([/\\s:-][0-9a-fA-F]{2}){5})");
                        if (!android.text.TextUtils.isEmpty(valueByRegex) && !android.text.TextUtils.isEmpty(valueByRegex2)) {
                            com.cndatacom.topology.entity.ArpInfo arpInfo = new com.cndatacom.topology.entity.ArpInfo();
                            arpInfo.setMac(valueByRegex2);
                            arpInfo.setIp(valueByRegex);
                            vector.add(arpInfo);
                        }
                    }
                    i5++;
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        } else {
            try {
                java.lang.String[] strArrSplit2 = com.cndatacom.sdk.portal.util.CommandUtil.exec("ip neighbour").split("\n");
                while (i5 < strArrSplit2.length) {
                    java.lang.String strTrim2 = strArrSplit2[i5].trim();
                    if (!android.text.TextUtils.isEmpty(strTrim2)) {
                        java.lang.String valueByRegex3 = getValueByRegex(strTrim2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");
                        java.lang.String valueByRegex4 = getValueByRegex(strTrim2, "([0-9a-fA-F]{2})(([/\\s:-][0-9a-fA-F]{2}){5})");
                        if (!android.text.TextUtils.isEmpty(valueByRegex3) && !android.text.TextUtils.isEmpty(valueByRegex4)) {
                            com.cndatacom.topology.entity.ArpInfo arpInfo2 = new com.cndatacom.topology.entity.ArpInfo();
                            arpInfo2.setMac(valueByRegex4);
                            arpInfo2.setIp(valueByRegex3);
                            vector.add(arpInfo2);
                        }
                    }
                    i5++;
                }
            } catch (java.lang.Exception e6) {
                e6.printStackTrace();
            }
        }
        return vector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readLocArpAndSaveData(java.util.Vector<java.lang.String> vector) {
        java.util.Vector<com.cndatacom.topology.entity.ArpInfo> vector2 = new java.util.Vector<>();
        java.util.Vector<com.cndatacom.topology.entity.ArpInfo> arp = readArp();
        for (int i5 = 0; i5 < vector.size(); i5++) {
            java.lang.String str = vector.get(i5);
            for (int i6 = 0; i6 < arp.size(); i6++) {
                com.cndatacom.topology.entity.ArpInfo arpInfo = arp.get(i6);
                if (arpInfo.getIp().equals(str)) {
                    if (!arpInfo.isValid()) {
                        break;
                    }
                    vector2.add(arpInfo);
                    break;
                }
            }
        }
        saveArpInfo(vector2);
        saveDiscoveredGroupIndexData();
    }

    private void saveArpInfo(java.util.Vector<com.cndatacom.topology.entity.ArpInfo> vector) {
        boolean z4;
        for (int i5 = 0; i5 < vector.size(); i5++) {
            try {
                com.cndatacom.topology.entity.ArpInfo arpInfo = vector.get(i5);
                java.lang.String gateway = this.mNetInfo.getGateway();
                java.lang.String mask = this.mNetInfo.getMask();
                java.lang.String ip = arpInfo.getIp();
                s2.l lVar = new s2.l();
                lVar.l("gateway", gateway);
                lVar.l("ipv4", arpInfo.getIp());
                lVar.l("ipv6", "");
                lVar.l("mask", mask);
                lVar.l("mac", arpInfo.getMac());
                lVar.l("checktime", this.mChecktime);
                lVar.l("key", com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(gateway, mask, this.mNetInfo.getIpv4(), this.mChecktime));
                java.lang.String strCreateNeighbourKey = com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(gateway, mask, ip, this.mChecktime);
                int i6 = 0;
                while (true) {
                    if (i6 >= this.mNeighbourDiscoverGroupResult.size()) {
                        z4 = false;
                        break;
                    }
                    s2.l lVarC = this.mNeighbourDiscoverGroupResult.l(i6).c();
                    java.lang.String strE = lVarC.o("gateway").e();
                    java.lang.String strE2 = lVarC.o("mask").e();
                    java.lang.String strE3 = lVarC.o("ipv4").e();
                    lVarC.o("ipv6").e();
                    if (strCreateNeighbourKey.equals(com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(strE, strE2, strE3, lVarC.o("checktime").e()))) {
                        z4 = true;
                        break;
                    }
                    i6++;
                }
                if (!z4) {
                    this.mNeighbourDiscoverGroupResult.k(lVar);
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                return;
            }
        }
        saveDiscoverGroupResult();
    }

    private void saveDiscoverGroupResult() {
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Neighbour_Discover_Group_Result_Key", this.mNeighbourDiscoverGroupResult.toString());
    }

    private void saveDiscoveredGroupIndexData() {
        if (this.mDiscoveredGroupIndexs.isEmpty()) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Group_Index_Key", "");
            return;
        }
        s2.g gVar = new s2.g();
        java.util.Iterator<java.lang.String> it = this.mDiscoveredGroupIndexs.iterator();
        while (it.hasNext()) {
            gVar.j(it.next());
        }
        if (gVar.size() > 0) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(this.mContext, "Discover_Group_Index_Key", gVar.toString());
        }
    }

    private void sendMsg(java.util.Vector<java.lang.String> vector) {
        if (vector.size() > 0) {
            try {
                int iNextInt = new java.util.Random().nextInt(10000) + 10000;
                java.net.DatagramSocket datagramSocket = new java.net.DatagramSocket(iNextInt);
                datagramSocket.setSoTimeout(200);
                byte[] bytes = "data".getBytes();
                for (int i5 = 0; i5 < vector.size(); i5++) {
                    java.net.InetAddress byName = java.net.InetAddress.getByName(vector.get(i5));
                    if (byName.isMulticastAddress()) {
                        return;
                    }
                    datagramSocket.send(new java.net.DatagramPacket(bytes, bytes.length, byName, iNextInt));
                }
                datagramSocket.close();
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSingleTask() {
        if (this.mGiveupCount >= 3) {
            this.mGiveupCount = 0;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover-> startSingleTask GiveupCount = 3");
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this.mSingleWorker, this.mNeighbourConInfo.getInterval());
            return;
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover-> startSingleTask");
        int randomGroupIndex = getRandomGroupIndex();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover-> startSingleTask groupIndex:" + randomGroupIndex);
        if (randomGroupIndex == -1) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover-> startSingleTask upload");
            uploadDiscoverResult();
        } else {
            com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent neighbourDiscoverEvent = this.mNeighbourDiscoverEvent;
            if (neighbourDiscoverEvent != null) {
                neighbourDiscoverEvent.sendNeighbourTeamWorkMsg(randomGroupIndex, com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourTargetIp(randomGroupIndex, this.mNetInfo.getIpv4()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTTask() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover->startTTask");
        long time = new java.util.Date().getTime();
        long j5 = com.cndatacom.sdk.portal.util.PreferencesUtil.getLong(this.mContext, "Discover_Neighbour_Interval_Key", -1L);
        long j6 = j5 < 0 ? time : j5;
        long j7 = time - j6;
        boolean z4 = true;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover startTTask time->" + j7 + " total->" + this.mNeighbourConInfo.getTotal());
        if (j7 > this.mNeighbourConInfo.getTotal() * 2) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover startTTask clear last data");
            clearDiscoveredGroupIndexData();
            clearDiscoverResult();
        } else if (this.mNeighbourConInfo.getTotal() <= j7) {
            uploadDiscoverResult();
            clearDiscoverResult();
            clearDiscoveredGroupIndexData();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover startTTask upload last data");
        } else {
            z4 = false;
        }
        if (initResultData(z4, time, j6)) {
            this.mGiveupCount = 0;
            createRandomIndexData();
        }
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this.mTWorker, this.mNeighbourConInfo.getTotal());
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this.mSingleWorker, 30000L);
    }

    private void uploadDiscoverResult() {
        try {
            java.lang.String url = this.mNeighbourConInfo.getUrl();
            if (android.text.TextUtils.isEmpty(url)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover uploadDiscoverResult url is null");
                return;
            }
            s2.g gVar = new s2.g();
            for (int i5 = 0; i5 < this.mNeighbourDiscoverResult.size(); i5++) {
                s2.l lVarC = this.mNeighbourDiscoverResult.l(i5).c();
                lVarC.o("brasip").e();
                java.lang.String strE = lVarC.o("gateway").e();
                java.lang.String strE2 = lVarC.o("mask").e();
                java.lang.String strE3 = lVarC.o("ipv4").e();
                lVarC.o("ipv6").e();
                java.lang.String strCreateNeighbourKey = com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourKey(strE, strE2, strE3, lVarC.o("checktime").e());
                s2.l lVarC2 = new s2.n().b(lVarC.toString()).c();
                s2.g gVar2 = new s2.g();
                for (int i6 = 0; i6 < this.mNeighbourDiscoverGroupResult.size(); i6++) {
                    s2.l lVarC3 = this.mNeighbourDiscoverGroupResult.l(i6).c();
                    if (strCreateNeighbourKey.equals(lVarC3.o("key").e())) {
                        java.lang.String strE4 = lVarC3.o("ipv4").e();
                        java.lang.String strE5 = lVarC3.o("ipv6").e();
                        java.lang.String strE6 = lVarC3.o("mac").e();
                        s2.l lVar = new s2.l();
                        lVar.l("ipv4", strE4);
                        lVar.l("ipv6", strE5);
                        lVar.l("mac", strE6);
                        gVar2.k(lVar);
                    }
                }
                if (gVar2.size() > 0) {
                    lVarC2.j("datainfo", gVar2);
                    gVar.k(lVarC2);
                }
            }
            if (gVar.size() <= 0) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover uploadDiscoverResult data is null->");
                return;
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover upload data  ->" + gVar.toString());
            java.lang.String strByteArrayToHex = com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), gVar.toString().getBytes("utf-8")));
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "text/plain;charset=utf-8");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(url, arrayMap, strByteArrayToHex.getBytes("utf-8"));
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover uploadDiscoverResult e->" + resultPost.getDataString());
                com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover NeighbourDiscover uploadDiscoverResult httpcode ->" + resultPost.getHttpCode());
                return;
            }
            java.lang.String dataString = resultPost.getDataString();
            if (new s2.n().b(dataString).c().o("code").a() == 0) {
                clearDiscoverResult();
                com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover NeighbourDiscover uploadDiscoverResult ->" + dataString);
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover uploadDiscoverResult httpcode ->" + resultPost.getHttpCode());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void appendToDiscovered(java.lang.String str) {
        if (this.mDiscoveredGroupIndexs.contains(str)) {
            return;
        }
        this.mDiscoveredGroupIndexs.add(str);
    }

    public void doNeighbourTask(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        if (str.equals(this.mNetInfo.getMask()) && str2.equals(this.mNetInfo.getGateway()) && str3.equals(this.mNetInfo.getIpv4())) {
            this.mGiveupCount = 0;
            if (this.mDiscoveredGroupIndexs.contains(str4)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover NeighbourDiscover-> doNeighbourTask groupindex:" + i5);
                java.util.Vector<java.lang.String> vector = new java.util.Vector<>();
                int i6 = i5 * 8;
                int size = i6 + 8;
                if (size > this.mAllDiscoverIps.size()) {
                    size = this.mAllDiscoverIps.size();
                }
                vector.addAll(this.mAllDiscoverIps.subList(i6, size - 1));
                handleNeighbourTask(vector, str3, str);
            }
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this.mSingleWorker, this.mNeighbourConInfo.getInterval());
        }
    }

    public void doNextDiscover() {
        this.mGiveupCount++;
        startSingleTask();
    }

    public boolean isDiscovered(java.lang.String str) {
        return this.mDiscoveredGroupIndexs.contains(str);
    }

    public void release(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mTWorker.getTaskId());
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mSingleWorker.getTaskId());
    }

    public void setNeighbourDiscoverEvent(com.cndatacom.topology.NeighbourDiscover.NeighbourDiscoverEvent neighbourDiscoverEvent) {
        this.mNeighbourDiscoverEvent = neighbourDiscoverEvent;
    }

    public void start(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        this.mClientid = configInfo.getClientId();
        this.mSchoolid = configInfo.getSchoolId("");
        this.mBrasip = configInfo.getWlanacip();
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(this.mTWorker, 30000L);
    }
}
