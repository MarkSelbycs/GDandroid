package com.cndatacom.download.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadTask implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.download.entity.DownloadTask> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.download.entity.DownloadTask>() { // from class: com.cndatacom.download.entity.DownloadTask.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.download.entity.DownloadTask createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.download.entity.DownloadTask(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.download.entity.DownloadTask[] newArray(int i5) {
            return new com.cndatacom.download.entity.DownloadTask[i5];
        }
    };
    public static final int ERROR_FILE_ZERO = 1;
    public static final int ERROR_NET = 0;
    public static final int ERROR_NO_WIFI = 3;
    public static final int ERROR_NULL_URL = 2;
    public static final int STATUS_DOWNLOADING = 2;
    public static final int STATUS_ERROR = 4;
    public static final int STATUS_FINISH = 5;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_PAUSE_OR_CANCEL = 3;
    public static final int STATUS_WAIT = 1;
    private java.lang.String createTime;
    private com.cndatacom.download.thread.DownloadTaskThread downloadTaskThread;
    private long downloadedSize;
    private int status;
    private java.lang.String taskExt;
    private long taskFileSize;
    private java.lang.String taskId;
    private java.lang.String taskInfo;
    private java.lang.String taskName;
    private java.lang.String taskPath;
    private java.lang.String taskTempPath;
    private java.lang.String taskUrl;
    private int threadNum;

    public DownloadTask(android.os.Parcel parcel) {
        this.status = 0;
        this.taskInfo = "";
        this.taskId = parcel.readString();
        this.taskName = parcel.readString();
        this.taskExt = parcel.readString();
        this.taskPath = parcel.readString();
        this.taskTempPath = parcel.readString();
        this.taskUrl = parcel.readString();
        this.status = parcel.readInt();
        this.threadNum = parcel.readInt();
        this.taskFileSize = parcel.readLong();
        this.downloadedSize = parcel.readLong();
        this.taskInfo = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getCreateTime() {
        return this.createTime;
    }

    public com.cndatacom.download.thread.DownloadTaskThread getDownloadTaskThread() {
        return this.downloadTaskThread;
    }

    public long getDownloadedSize() {
        return this.downloadedSize;
    }

    public int getStatus() {
        return this.status;
    }

    public java.lang.String getTaskExt() {
        return this.taskExt;
    }

    public long getTaskFileSize() {
        return this.taskFileSize;
    }

    public java.lang.String getTaskId() {
        return this.taskId;
    }

    public java.lang.String getTaskInfo() {
        return this.taskInfo;
    }

    public java.lang.String getTaskName() {
        return this.taskName;
    }

    public java.lang.String getTaskPath() {
        return this.taskPath;
    }

    public java.lang.String getTaskTempPath() {
        return this.taskTempPath;
    }

    public java.lang.String getTaskUrl() {
        return this.taskUrl;
    }

    public int getThreadNum() {
        return this.threadNum;
    }

    public void setCreateTime(java.lang.String str) {
        this.createTime = str;
    }

    public void setDownloadTaskThread(com.cndatacom.download.thread.DownloadTaskThread downloadTaskThread) {
        this.downloadTaskThread = downloadTaskThread;
    }

    public void setDownloadedSize(long j5) {
        this.downloadedSize = j5;
    }

    public void setStatus(int i5) {
        this.status = i5;
    }

    public void setTaskExt(java.lang.String str) {
        this.taskExt = str;
    }

    public void setTaskFileSize(long j5) {
        this.taskFileSize = j5;
    }

    public void setTaskId(java.lang.String str) {
        this.taskId = str;
    }

    public void setTaskInfo(java.lang.String str) {
        this.taskInfo = str;
    }

    public void setTaskName(java.lang.String str) {
        this.taskName = str;
    }

    public void setTaskPath(java.lang.String str) {
        this.taskPath = str;
    }

    public void setTaskTempPath(java.lang.String str) {
        this.taskTempPath = str;
    }

    public void setTaskUrl(java.lang.String str) {
        this.taskUrl = str;
    }

    public void setThreadNum(int i5) {
        this.threadNum = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.taskId);
        parcel.writeString(this.taskName);
        parcel.writeString(this.taskExt);
        parcel.writeString(this.taskPath);
        parcel.writeString(this.taskTempPath);
        parcel.writeString(this.taskUrl);
        parcel.writeInt(this.status);
        parcel.writeInt(this.threadNum);
        parcel.writeLong(this.taskFileSize);
        parcel.writeLong(this.downloadedSize);
        parcel.writeString(this.taskInfo);
    }

    public DownloadTask(int i5) {
        this.status = 0;
        this.taskInfo = "";
        this.threadNum = i5;
    }
}
