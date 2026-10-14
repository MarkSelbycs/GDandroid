package com.cndatacom.personal;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PersonalManager {
    private static com.cndatacom.personal.PersonalManager _PersonalManager;

    private PersonalManager() {
    }

    private java.util.Date getDateAfter(java.util.Date date, int i5) {
        java.util.Calendar calendar = java.util.Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.get(5) + i5);
        return calendar.getTime();
    }

    private java.util.Date getDateBefore(java.util.Date date, int i5) {
        java.util.Calendar calendar = java.util.Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.get(5) - i5);
        return calendar.getTime();
    }

    public static com.cndatacom.personal.PersonalManager getInstance() {
        if (_PersonalManager == null) {
            _PersonalManager = new com.cndatacom.personal.PersonalManager();
        }
        return _PersonalManager;
    }

    public void collectionAccountInfo(android.content.Context context, java.lang.String str) {
        com.cndatacom.personal.entity.PersonalInfo personalInfo = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo.setType(0);
        personalInfo.setText(str);
        com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).add(personalInfo);
    }

    public void collectionDeviceInfo(android.content.Context context) {
        android.util.SparseArray<com.cndatacom.personal.entity.PersonalInfo> sparseArray = new android.util.SparseArray<>();
        com.cndatacom.personal.entity.PersonalInfo personalInfo = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo.setType(4);
        personalInfo.setText(android.os.Build.MODEL);
        sparseArray.append(0, personalInfo);
        com.cndatacom.personal.entity.PersonalInfo personalInfo2 = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo2.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo2.setType(5);
        personalInfo2.setText(android.os.Build.VERSION.RELEASE);
        sparseArray.append(1, personalInfo2);
        com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).add(sparseArray);
    }

    public void collectionNetworkInfo(android.content.Context context, com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
        android.util.SparseArray<com.cndatacom.personal.entity.PersonalInfo> sparseArray = new android.util.SparseArray<>();
        com.cndatacom.personal.entity.PersonalInfo personalInfo = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo.setType(1);
        java.lang.String ssid = netInfo.getSsid();
        if (android.text.TextUtils.isEmpty(ssid)) {
            ssid = "<unknown ssid>";
        }
        personalInfo.setText(ssid);
        sparseArray.append(0, personalInfo);
        com.cndatacom.personal.entity.PersonalInfo personalInfo2 = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo2.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo2.setType(2);
        java.lang.String mac = netInfo.getMac();
        if (!android.text.TextUtils.isEmpty(mac)) {
            personalInfo2.setText(mac);
            sparseArray.append(1, personalInfo2);
        }
        com.cndatacom.personal.entity.PersonalInfo personalInfo3 = new com.cndatacom.personal.entity.PersonalInfo();
        personalInfo3.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(new java.util.Date()));
        personalInfo3.setType(3);
        java.lang.String ipv4 = netInfo.getIpv4();
        if (android.text.TextUtils.isEmpty(ipv4)) {
            ipv4 = netInfo.getIpv6();
        }
        personalInfo3.setText(ipv4);
        sparseArray.append(2, personalInfo3);
        com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).add(sparseArray);
    }

    public java.lang.String getPersonalInfoText(android.content.Context context) {
        java.util.Date date = new java.util.Date();
        java.lang.String str = "";
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(0, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        java.lang.String str2 = "";
        for (int i5 = 0; i5 < listListAll.size(); i5++) {
            str2 = str2 + listListAll.get(i5).getCryptoText() + ";";
        }
        java.lang.String strReplace = "宽带账号：{listAccountResultText}\n网络设备硬件地址(MAC)：{listMacResultText}\n设备型号：{listDevResultText}\n设备系统版本：{listSysResultText}\n连接过的WiFi：{listWifiResultText}\n".replace("{listAccountResultText}", str2);
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll2 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(5, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        java.lang.String str3 = "";
        for (int i6 = 0; i6 < listListAll2.size(); i6++) {
            str3 = str3 + listListAll2.get(i6).getCryptoText() + ";";
        }
        java.lang.String strReplace2 = strReplace.replace("{listSysResultText}", str3);
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll3 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(4, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        java.lang.String str4 = "";
        for (int i7 = 0; i7 < listListAll3.size(); i7++) {
            str4 = str4 + listListAll3.get(i7).getCryptoText() + ";";
        }
        java.lang.String strReplace3 = strReplace2.replace("{listDevResultText}", str4);
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll4 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(2, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        java.lang.String str5 = "";
        for (int i8 = 0; i8 < listListAll4.size(); i8++) {
            str5 = str5 + listListAll4.get(i8).getCryptoText() + ";";
        }
        java.lang.String strReplace4 = strReplace3.replace("{listMacResultText}", str5);
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll5 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(1, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        java.lang.String str6 = "";
        for (int i9 = 0; i9 < listListAll5.size(); i9++) {
            str6 = str6 + listListAll5.get(i9).getCryptoText() + ";";
        }
        java.lang.String strReplace5 = strReplace4.replace("{listWifiResultText}", str6);
        java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll6 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(6, "", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), true);
        for (int i10 = 0; i10 < listListAll6.size(); i10++) {
            str = str + listListAll6.get(i10).getCryptoText() + ";";
        }
        return strReplace5.replace("{listAppResultText}", str);
    }

    public java.lang.String queryPersonalInfo(android.content.Context context, java.lang.String str, java.lang.String str2) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            java.util.Date date = new java.util.Date();
            java.util.Date dateBefore = null;
            byte b5 = -1;
            int iHashCode = str2.hashCode();
            if (iHashCode != 49) {
                if (iHashCode == 50 && str2.equals("2")) {
                    b5 = 1;
                }
            } else if (str2.equals("1")) {
                b5 = 0;
            }
            if (b5 == 0) {
                dateBefore = getDateBefore(date, 7);
            } else if (b5 == 1) {
                dateBefore = getDateBefore(date, 30);
            }
            java.lang.String dateToYYMMDDString = "";
            if ("all".equals(str)) {
                jSONObject.put("account", new s2.e().k(com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(0, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false)));
            }
            if ("device".equals(str) || "all".equals(str)) {
                java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(5, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false);
                java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll2 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(4, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false);
                java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll3 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(2, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false);
                java.util.List<com.cndatacom.personal.entity.PersonalInfo> listListAll4 = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(3, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false);
                jSONObject.put("sys", new s2.e().k(listListAll));
                jSONObject.put("dev", new s2.e().k(listListAll2));
                jSONObject.put("mac", new s2.e().k(listListAll3));
                jSONObject.put("ip", new s2.e().k(listListAll4));
            }
            if ("wifi".equals(str) || "all".equals(str)) {
                jSONObject.put("wifi", new s2.e().k(com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context).listAll(1, dateBefore == null ? "" : com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore), com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false)));
            }
            com.cndatacom.personal.db.PersonalInfoDB personalInfoDB = com.cndatacom.personal.db.PersonalInfoDB.getPersonalInfoDB(context);
            if (dateBefore != null) {
                dateToYYMMDDString = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(dateBefore);
            }
            jSONObject.put("app", new s2.e().k(personalInfoDB.listAll(6, dateToYYMMDDString, com.cndatacom.sdk.portal.util.DateUtil.parseDateToYYMMDDString(date), false)));
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return jSONObject.toString();
    }
}
