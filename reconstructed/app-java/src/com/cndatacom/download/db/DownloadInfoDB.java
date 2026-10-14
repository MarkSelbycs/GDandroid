package com.cndatacom.download.db;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadInfoDB extends android.database.sqlite.SQLiteOpenHelper {
    public static final java.lang.String CREATE_TBL = "create table downloadInfoTbl(taskId text,taskName text,taskExt text,taskPath text,taskTempPath text,taskUrl text,createTime text,status int,threadNum int,taskFileSize long,downloadedSize long,taskInfo text)";
    public static final java.lang.String TBL_NAME = "downloadInfoTbl";

    public DownloadInfoDB(android.content.Context context, java.lang.String str) {
        super(context, str + "_downloadInfo.db", (android.database.sqlite.SQLiteDatabase.CursorFactory) null, 1);
    }

    private android.content.ContentValues getContentValues(com.cndatacom.download.entity.DownloadTask downloadTask) {
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("taskId", downloadTask.getTaskId());
        contentValues.put("taskName", downloadTask.getTaskName());
        contentValues.put("taskExt", downloadTask.getTaskExt());
        contentValues.put("taskPath", downloadTask.getTaskPath());
        contentValues.put("taskTempPath", downloadTask.getTaskTempPath());
        contentValues.put("taskUrl", downloadTask.getTaskUrl());
        contentValues.put("createTime", downloadTask.getCreateTime());
        contentValues.put("status", (java.lang.Integer) 3);
        contentValues.put("threadNum", java.lang.Integer.valueOf(downloadTask.getThreadNum()));
        contentValues.put("taskFileSize", java.lang.Long.valueOf(downloadTask.getTaskFileSize()));
        contentValues.put("downloadedSize", java.lang.Long.valueOf(downloadTask.getDownloadedSize()));
        contentValues.put("taskInfo", downloadTask.getTaskInfo());
        return contentValues;
    }

    private boolean insert(android.content.ContentValues contentValues) {
        try {
            getWritableDatabase().insert(TBL_NAME, null, contentValues);
            return true;
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
            return false;
        }
    }

    public void add(com.cndatacom.download.entity.DownloadTask downloadTask) {
        insert(getContentValues(downloadTask));
    }

    public void delete(java.lang.String str) {
        try {
            getWritableDatabase().delete(TBL_NAME, "taskId=?", new java.lang.String[]{str});
        } catch (android.database.SQLException e5) {
            e5.printStackTrace();
        }
    }

    @android.annotation.SuppressLint({"Range"})
    public void getDownloadInfoFrom(android.database.Cursor cursor, com.cndatacom.download.entity.DownloadTask downloadTask) {
        downloadTask.setTaskId(cursor.getString(cursor.getColumnIndex("taskId")));
        downloadTask.setTaskName(cursor.getString(cursor.getColumnIndex("taskName")));
        downloadTask.setTaskExt(cursor.getString(cursor.getColumnIndex("taskExt")));
        downloadTask.setTaskPath(cursor.getString(cursor.getColumnIndex("taskPath")));
        downloadTask.setTaskTempPath(cursor.getString(cursor.getColumnIndex("taskTempPath")));
        downloadTask.setTaskUrl(cursor.getString(cursor.getColumnIndex("taskUrl")));
        downloadTask.setCreateTime(cursor.getString(cursor.getColumnIndex("createTime")));
        downloadTask.setStatus(cursor.getInt(cursor.getColumnIndex("status")));
        downloadTask.setThreadNum(cursor.getInt(cursor.getColumnIndex("threadNum")));
        downloadTask.setTaskFileSize(cursor.getLong(cursor.getColumnIndex("taskFileSize")));
        downloadTask.setDownloadedSize(cursor.getLong(cursor.getColumnIndex("downloadedSize")));
        downloadTask.setTaskInfo(cursor.getString(cursor.getColumnIndex("taskInfo")));
    }

    public void getDownloadTaskByTaskId(com.cndatacom.download.entity.DownloadTask downloadTask, java.lang.String str) {
        android.database.Cursor cursorRawQuery = getReadableDatabase().rawQuery("select * from downloadInfoTbl where taskId=?", new java.lang.String[]{str});
        if (cursorRawQuery.moveToNext()) {
            getDownloadInfoFrom(cursorRawQuery, downloadTask);
            cursorRawQuery.close();
        }
    }

    public boolean isExists(java.lang.String str) {
        android.database.Cursor cursorQuery = getReadableDatabase().query(TBL_NAME, new java.lang.String[0], " taskId=?", new java.lang.String[]{str}, null, null, null);
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
            sQLiteDatabase.execSQL("drop table if exists downloadInfoTbl");
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "drop table failed");
        }
        onCreate(sQLiteDatabase);
    }

    public void update(java.lang.String str, long j5) {
        android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("taskFileSize", java.lang.Long.valueOf(j5));
        try {
            writableDatabase.update(TBL_NAME, contentValues, "taskId=? ", new java.lang.String[]{str});
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "update failed");
        }
    }

    public void update(java.lang.String str, int i5, int i6) {
        android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("status", java.lang.Integer.valueOf(i6));
        contentValues.put("downloadedSize", java.lang.Integer.valueOf(i5));
        if (i6 == 5) {
            contentValues.put("createTime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
        }
        try {
            writableDatabase.update(TBL_NAME, contentValues, "taskId=? ", new java.lang.String[]{str});
        } catch (android.database.SQLException unused) {
            android.util.Log.i("error", "update failed");
        }
    }
}
