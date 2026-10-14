.class public Lcom/cndatacom/sdk/portal/util/ExLogUtil;
.super Ljava/lang/Object;
.source "ExLogUtil.java"


# static fields
.field private static FILE_MAX_SIZE:I = 0x0

.field private static final LOCK:[B

.field private static LOGFILEFORMAT:Ljava/text/SimpleDateFormat; = null

.field private static LOG_FILE_SAVE_DAYS:I = 0x3

.field private static MOUDLE_LOG_FILE_SAVE_DAYS:I = 0x2

.field private static final NAME_EXT:Ljava/lang/String; = ".log"

.field private static final TYPE_DEBUG:Ljava/lang/String; = "[DEBUG]\n"

.field private static final TYPE_ERROR:Ljava/lang/String; = "[ERROR]\n"

.field private static final TYPE_INFO:Ljava/lang/String; = "[INFO]\n"

.field private static isDebug:Z

.field private static mLogFilePath:Ljava/lang/String;

.field private static mLogTag:Ljava/lang/String;

.field private static mModuleLogFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOCK:[B

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOGFILEFORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->isDebug:Z

    const/high16 v0, 0x500000

    .line 4
    sput v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->FILE_MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanOldLogFile(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOGFILEFORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 10
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs d([Ljava/lang/String;)V
    .locals 1

    const-string v0, "[DEBUG]\n"

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->writeLog(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs e([Ljava/lang/String;)V
    .locals 1

    const-string v0, "[ERROR]\n"

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->writeLog(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static getCleanDate(I)Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x5

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getNowDateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static varargs i([Ljava/lang/String;)V
    .locals 1

    const-string v0, "[INFO]\n"

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->writeLog(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogFilePath:Ljava/lang/String;

    .line 2
    sput-object p2, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mModuleLogFilePath:Ljava/lang/String;

    .line 3
    sput-object p3, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    const/4 p0, 0x0

    .line 4
    sput-boolean p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->isDebug:Z

    .line 5
    sget p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOG_FILE_SAVE_DAYS:I

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->getCleanDate(I)Ljava/util/Date;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->cleanOldLogFile(Ljava/lang/String;Ljava/util/Date;)V

    .line 6
    sget p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->MOUDLE_LOG_FILE_SAVE_DAYS:I

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->getCleanDate(I)Ljava/util/Date;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->cleanOldLogFile(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static logBuildInfo(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\n==========Build=========="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\r\nBuild.CPU_ABI:"

    aput-object v2, v0, v1

    .line 1
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "\r\nBuild.CPU_ABI2:"

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "\r\nBuild.MODEL:"

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const-string v2, "\r\nBuild.SDK_INT:"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    const-string v2, "\r\nBuild.RELEASE:"

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    const-string v2, "\r\nAPP.VERSION:"

    aput-object v2, v0, v1

    .line 2
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs m(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->isDebug:Z

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mModuleLogFilePath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->saveLogFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static saveLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOCK:[B

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->LOGFILEFORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :goto_0
    move p1, v4

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    sget v2, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->FILE_MAX_SIZE:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->encryptByPublicKey([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p0

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 15
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 16
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_2

    .line 17
    :cond_3
    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :goto_5
    if-eqz v1, :cond_4

    .line 18
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catch_4
    move-exception p1

    .line 19
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_4
    :goto_6
    throw p0

    :catchall_2
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method private static varargs writeLog(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 4
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->getNowDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "[INFO]\n"

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "[ERROR]\n"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "[DEBUG]\n"

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 14
    sget-boolean p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->isDebug:Z

    if-eqz p0, :cond_4

    .line 15
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void

    .line 16
    :cond_5
    sget-object p0, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->mLogFilePath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->saveLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
