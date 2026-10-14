package com.cndatacom.download.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadThreadInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.download.entity.DownloadThreadInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.download.entity.DownloadThreadInfo>() { // from class: com.cndatacom.download.entity.DownloadThreadInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.download.entity.DownloadThreadInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.download.entity.DownloadThreadInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.download.entity.DownloadThreadInfo[] newArray(int i5) {
            return new com.cndatacom.download.entity.DownloadThreadInfo[i5];
        }
    };
    private com.cndatacom.download.thread.DownloadTaskRunnable downloadTaskRunnable;
    private long downloadedSize;
    private java.lang.String taskId;
    private int threadId;
    private int threadNum;

    public DownloadThreadInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public com.cndatacom.download.thread.DownloadTaskRunnable getDownloadTaskRunnable() {
        return this.downloadTaskRunnable;
    }

    public long getDownloadedSize() {
        return this.downloadedSize;
    }

    public java.lang.String getTaskId() {
        return this.taskId;
    }

    public int getThreadId() {
        return this.threadId;
    }

    public int getThreadNum() {
        return this.threadNum;
    }

    public void setDownloadTaskRunnable(com.cndatacom.download.thread.DownloadTaskRunnable downloadTaskRunnable) {
        this.downloadTaskRunnable = downloadTaskRunnable;
    }

    public void setDownloadedSize(long j5) {
        this.downloadedSize = j5;
    }

    public void setTaskId(java.lang.String str) {
        this.taskId = str;
    }

    public void setThreadId(int i5) {
        this.threadId = i5;
    }

    public void setThreadNum(int i5) {
        this.threadNum = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.taskId);
        parcel.writeInt(this.threadNum);
        parcel.writeInt(this.threadId);
        parcel.writeLong(this.downloadedSize);
    }

    public DownloadThreadInfo(android.os.Parcel parcel) {
        this.taskId = parcel.readString();
        this.threadNum = parcel.readInt();
        this.threadId = parcel.readInt();
        this.downloadedSize = parcel.readLong();
    }
}
