package com.cndatacom.personal.db;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PersonalInfoDB extends android.database.sqlite.SQLiteOpenHelper {
    public static final java.lang.String CREATE_TBL = "create table personalInfoTbl(type int,text text,cryptoText text,createTime text)";
    public static final java.lang.String TBL_NAME = "personalInfoTbl";
    private static com.cndatacom.personal.db.PersonalInfoDB _PersonalInfoDB;

    public PersonalInfoDB(android.content.Context context) {
        super(context, "cdc_persional.db", (android.database.sqlite.SQLiteDatabase.CursorFactory) null, 1);
    }

    private java.lang.String decryptString(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new java.lang.String(com.cndatacom.sdk.portal.util.CryptoUtil.decrypt(android.util.Base64.decode(str, 2)));
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("encrypString exception: ", e5.getMessage());
            return "";
        }
    }

    private java.lang.String encrypString(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return android.util.Base64.encodeToString(com.cndatacom.sdk.portal.util.CryptoUtil.encryp(str.getBytes("UTF-8")), 2);
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("encrypString exception: ", e5.getMessage());
            return "";
        }
    }

    private android.content.ContentValues getContentValues(com.cndatacom.personal.entity.PersonalInfo personalInfo) {
        android.content.ContentValues contentValues = new android.content.ContentValues();
        java.lang.String text = getText(personalInfo.getType(), personalInfo.getText());
        contentValues.put("type", java.lang.Integer.valueOf(personalInfo.getType()));
        contentValues.put("text", text);
        contentValues.put("cryptoText", encrypString(personalInfo.getText()));
        contentValues.put("createTime", personalInfo.getCreateTime());
        return contentValues;
    }

    public static com.cndatacom.personal.db.PersonalInfoDB getPersonalInfoDB(android.content.Context context) {
        if (_PersonalInfoDB == null) {
            _PersonalInfoDB = new com.cndatacom.personal.db.PersonalInfoDB(context);
        }
        return _PersonalInfoDB;
    }

    private java.lang.String getText(int i5, java.lang.String str) {
        int iFloor = (int) java.lang.Math.floor((str.length() * 2) / 3);
        java.lang.String str2 = "";
        for (int i6 = 0; i6 < iFloor; i6++) {
            str2 = str2 + '*';
        }
        return str2 + str.substring(iFloor);
    }

    public boolean add(com.cndatacom.personal.entity.PersonalInfo personalInfo) {
        if (isExists(personalInfo.getType(), personalInfo.getText(), personalInfo.getCreateTime())) {
            return false;
        }
        android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.beginTransaction();
            writableDatabase.insert(TBL_NAME, null, getContentValues(personalInfo));
            writableDatabase.setTransactionSuccessful();
            return true;
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
            return false;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public com.cndatacom.personal.entity.PersonalInfo getPersonalInfo(android.database.Cursor cursor, boolean z4) {
        com.cndatacom.personal.entity.PersonalInfo personalInfo = new com.cndatacom.personal.entity.PersonalInfo();
        int i5 = cursor.getInt(cursor.getColumnIndex("type"));
        personalInfo.setType(i5);
        personalInfo.setCreateTime(cursor.getString(cursor.getColumnIndex("createTime")));
        java.lang.String string = cursor.getString(cursor.getColumnIndex("text"));
        if (i5 == 1 && "<unknown ssid>".equals(string)) {
            string = "未知SSID";
        }
        personalInfo.setText(string);
        if (z4) {
            personalInfo.setCryptoText(decryptString(cursor.getString(cursor.getColumnIndex("cryptoText"))));
        }
        return personalInfo;
    }

    public boolean isExists(int i5, java.lang.String str, java.lang.String str2) {
        android.database.Cursor cursorQuery = getReadableDatabase().query(TBL_NAME, new java.lang.String[0], " type=? and cryptoText=? and createTime=?", new java.lang.String[]{i5 + "", encrypString(str), str2}, null, null, null);
        if (cursorQuery.moveToNext()) {
            cursorQuery.close();
            return false;
        }
        cursorQuery.close();
        return false;
    }

    public java.util.List<com.cndatacom.personal.entity.PersonalInfo> listAll(int i5, java.lang.String str, java.lang.String str2, boolean z4) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.database.Cursor cursorQuery = getReadableDatabase().query(TBL_NAME, new java.lang.String[]{"type", "text", "createTime", "MAX(cryptoText) as cryptoText"}, ("type=?and createTime>=?") + "and createTime<=?", new java.lang.String[]{i5 + "", str, str2}, "cryptoText", null, null, null);
        while (cursorQuery.moveToNext()) {
            arrayList.add(getPersonalInfo(cursorQuery, z4));
        }
        cursorQuery.close();
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(CREATE_TBL);
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "create table failed");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i5, int i6) {
        try {
            sQLiteDatabase.execSQL("drop table if exists personalInfoTbl");
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "drop table failed");
        }
        onCreate(sQLiteDatabase);
    }

    public boolean add(android.util.SparseArray<com.cndatacom.personal.entity.PersonalInfo> sparseArray) {
        android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.beginTransaction();
            for (int i5 = 0; i5 < sparseArray.size(); i5++) {
                com.cndatacom.personal.entity.PersonalInfo personalInfoValueAt = sparseArray.valueAt(i5);
                if (!isExists(personalInfoValueAt.getType(), personalInfoValueAt.getText(), personalInfoValueAt.getCreateTime())) {
                    writableDatabase.insert(TBL_NAME, null, getContentValues(personalInfoValueAt));
                }
            }
            writableDatabase.setTransactionSuccessful();
            return true;
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
            return false;
        } finally {
            writableDatabase.endTransaction();
        }
    }
}
