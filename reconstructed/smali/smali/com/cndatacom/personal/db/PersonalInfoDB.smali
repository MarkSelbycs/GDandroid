.class public Lcom/cndatacom/personal/db/PersonalInfoDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersonalInfoDB.java"


# static fields
.field public static final CREATE_TBL:Ljava/lang/String; = "create table personalInfoTbl(type int,text text,cryptoText text,createTime text)"

.field public static final TBL_NAME:Ljava/lang/String; = "personalInfoTbl"

.field private static _PersonalInfoDB:Lcom/cndatacom/personal/db/PersonalInfoDB;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cdc_persional.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->decrypt([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "encrypString exception: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private encrypString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->encryp([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "encrypString exception: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getContentValues(Lcom/cndatacom/personal/entity/PersonalInfo;)Landroid/content/ContentValues;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "text"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->encrypString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cryptoText"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCreateTime()Ljava/lang/String;

    move-result-object p1

    const-string v1, "createTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;
    .locals 1

    .line 1
    sget-object v0, Lcom/cndatacom/personal/db/PersonalInfoDB;->_PersonalInfoDB:Lcom/cndatacom/personal/db/PersonalInfoDB;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/personal/db/PersonalInfoDB;

    invoke-direct {v0, p0}, Lcom/cndatacom/personal/db/PersonalInfoDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cndatacom/personal/db/PersonalInfoDB;->_PersonalInfoDB:Lcom/cndatacom/personal/db/PersonalInfoDB;

    .line 3
    :cond_0
    sget-object p0, Lcom/cndatacom/personal/db/PersonalInfoDB;->_PersonalInfoDB:Lcom/cndatacom/personal/db/PersonalInfoDB;

    return-object p0
.end method

.method private getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Landroid/util/SparseArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/cndatacom/personal/entity/PersonalInfo;",
            ">;)Z"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v2, v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/personal/entity/PersonalInfo;

    .line 14
    invoke-virtual {v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->getType()I

    move-result v4

    invoke-virtual {v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/cndatacom/personal/db/PersonalInfoDB;->isExists(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "personalInfoTbl"

    const/4 v5, 0x0

    .line 15
    invoke-direct {p0, v3}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getContentValues(Lcom/cndatacom/personal/entity/PersonalInfo;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 20
    throw p1
.end method

.method public add(Lcom/cndatacom/personal/entity/PersonalInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cndatacom/personal/db/PersonalInfoDB;->isExists(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "personalInfoTbl"

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getContentValues(Lcom/cndatacom/personal/entity/PersonalInfo;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    throw p1
.end method

.method public getPersonalInfo(Landroid/database/Cursor;Z)Lcom/cndatacom/personal/entity/PersonalInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v0}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    const-string v1, "type"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    const-string v2, "createTime"

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const-string v2, "text"

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "<unknown ssid>"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "\u672a\u77e5SSID"

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p2, "cryptoText"

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCryptoText(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public isExists(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/cndatacom/personal/db/PersonalInfoDB;->encrypString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v8

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const-string v1, "personalInfoTbl"

    const-string v3, " type=? and cryptoText=? and createTime=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8

    .line 6
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/cndatacom/personal/entity/PersonalInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/4 p1, 0x2

    aput-object p3, v5, p1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "and createTime>=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "and createTime<=?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "type"

    const-string p2, "text"

    const-string p3, "createTime"

    const-string v2, "MAX(cryptoText) as cryptoText"

    .line 6
    filled-new-array {p1, p2, p3, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "personalInfoTbl"

    const-string v6, "cryptoText"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfo(Landroid/database/Cursor;Z)Lcom/cndatacom/personal/entity/PersonalInfo;

    move-result-object p2

    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table personalInfoTbl(type int,text text,cryptoText text,createTime text)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "error"

    const-string v0, "create table failed"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    :try_start_0
    const-string p2, "drop table if exists personalInfoTbl"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "error"

    const-string p3, "drop table failed"

    .line 2
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
