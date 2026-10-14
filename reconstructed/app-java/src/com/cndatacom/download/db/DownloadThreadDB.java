package com.cndatacom.download.db;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadThreadDB extends android.database.sqlite.SQLiteOpenHelper {
    public static final java.lang.String CREATE_TBL = "create table downloadThreadTbl(tid text,threadNum int,threadID int,downloadedSize long)";
    public static final java.lang.String TBL_NAME = "downloadThreadTbl";

    public DownloadThreadDB(android.content.Context context, java.lang.String str) {
        super(context, str + "_downloadThread.db", (android.database.sqlite.SQLiteDatabase.CursorFactory) null, 1);
    }

    private void insert(android.content.ContentValues contentValues) {
        try {
            getWritableDatabase().insert(TBL_NAME, null, contentValues);
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
        }
    }

    public void add(com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo) {
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("tid", downloadThreadInfo.getTaskId());
        contentValues.put("threadNum", java.lang.Integer.valueOf(downloadThreadInfo.getThreadNum()));
        contentValues.put("threadID", java.lang.Integer.valueOf(downloadThreadInfo.getThreadId()));
        contentValues.put("downloadedSize", java.lang.Long.valueOf(downloadThreadInfo.getDownloadedSize()));
        insert(contentValues);
    }

    public void delete(java.lang.String str, int i5) {
        try {
            getWritableDatabase().delete(TBL_NAME, "tid=? and threadNum=?", new java.lang.String[]{str, i5 + ""});
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
        }
    }

    public com.cndatacom.download.entity.DownloadThreadInfo getDownloadThreadInfo(java.lang.String str, int i5, int i6) {
        android.database.Cursor cursorRawQuery = getReadableDatabase().rawQuery("select * from downloadThreadTbl where tid=? and threadNum=? and threadID=? ", new java.lang.String[]{str + "", i5 + "", i6 + ""});
        if (!cursorRawQuery.moveToNext()) {
            return null;
        }
        com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo = getDownloadThreadInfo(cursorRawQuery);
        cursorRawQuery.close();
        return downloadThreadInfo;
    }

    @android.annotation.SuppressLint({"Range"})
    public long getDownloadedSize(java.lang.String str, int i5) {
        android.database.Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT sum(downloadedSize) as downloadedSize from downloadThreadTbl WHERE tid=? and threadNum=?", new java.lang.String[]{str, i5 + ""});
        if (cursorRawQuery.moveToNext()) {
            return cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("downloadedSize"));
        }
        return 0L;
    }

    public boolean isExists(java.lang.String str, int i5, int i6) {
        android.database.Cursor cursorQuery = getReadableDatabase().query(TBL_NAME, null, " tid=? and threadNum=? and threadID=? ", new java.lang.String[]{str, i5 + "", i6 + ""}, null, null, null);
        if (cursorQuery.moveToNext()) {
            cursorQuery.close();
            return true;
        }
        cursorQuery.close();
        return false;
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
            sQLiteDatabase.execSQL("drop table if exists downloadThreadTbl");
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "drop table failed");
        }
        onCreate(sQLiteDatabase);
    }

    public void update(java.lang.String str, int i5, int i6, long j5) {
        android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("downloadedSize", java.lang.Long.valueOf(j5));
        try {
            writableDatabase.update(TBL_NAME, contentValues, "tid=? and threadNum=? and threadID=? ", new java.lang.String[]{str, i5 + "", i6 + ""});
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "update failed");
        }
    }

    @android.annotation.SuppressLint({"Range"})
    private com.cndatacom.download.entity.DownloadThreadInfo getDownloadThreadInfo(android.database.Cursor cursor) {
        com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo = new com.cndatacom.download.entity.DownloadThreadInfo();
        downloadThreadInfo.setTaskId(cursor.getString(cursor.getColumnIndex("tid")));
        downloadThreadInfo.setThreadNum(cursor.getInt(cursor.getColumnIndex("threadNum")));
        downloadThreadInfo.setThreadId(cursor.getInt(cursor.getColumnIndex("threadID")));
        downloadThreadInfo.setDownloadedSize(cursor.getLong(cursor.getColumnIndex("downloadedSize")));
        return downloadThreadInfo;
    }
}
