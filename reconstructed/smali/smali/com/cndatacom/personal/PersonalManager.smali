.class public Lcom/cndatacom/personal/PersonalManager;
.super Ljava/lang/Object;
.source "PersonalManager.java"


# static fields
.field private static _PersonalManager:Lcom/cndatacom/personal/PersonalManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDateAfter(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private getDateBefore(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/cndatacom/personal/PersonalManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/cndatacom/personal/PersonalManager;->_PersonalManager:Lcom/cndatacom/personal/PersonalManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/personal/PersonalManager;

    invoke-direct {v0}, Lcom/cndatacom/personal/PersonalManager;-><init>()V

    sput-object v0, Lcom/cndatacom/personal/PersonalManager;->_PersonalManager:Lcom/cndatacom/personal/PersonalManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/personal/PersonalManager;->_PersonalManager:Lcom/cndatacom/personal/PersonalManager;

    return-object v0
.end method


# virtual methods
.method public collectionAccountInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v0}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cndatacom/personal/db/PersonalInfoDB;->add(Lcom/cndatacom/personal/entity/PersonalInfo;)Z

    return-void
.end method

.method public collectionDeviceInfo(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance v1, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v1}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 5
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v1}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 8
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 9
    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 10
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 12
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cndatacom/personal/db/PersonalInfoDB;->add(Landroid/util/SparseArray;)Z

    return-void
.end method

.method public collectionNetworkInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance v1, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v1}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 5
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "<unknown ssid>"

    .line 7
    :cond_0
    invoke-virtual {v1, v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v1}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 10
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v1, v3}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 12
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v1, v4}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16
    :cond_1
    new-instance v1, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-direct {v1}, Lcom/cndatacom/personal/entity/PersonalInfo;-><init>()V

    .line 17
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setCreateTime(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setType(I)V

    .line 19
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v2

    .line 22
    :cond_2
    invoke-virtual {v1, v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->setText(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cndatacom/personal/db/PersonalInfoDB;->add(Landroid/util/SparseArray;)Z

    return-void
.end method

.method public getPersonalInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    move v2, v3

    move-object v6, v4

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ";"

    if-ge v2, v7, :cond_0

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v6}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\u5bbd\u5e26\u8d26\u53f7\uff1a{listAccountResultText}\n\u7f51\u7edc\u8bbe\u5907\u786c\u4ef6\u5730\u5740(MAC)\uff1a{listMacResultText}\n\u8bbe\u5907\u578b\u53f7\uff1a{listDevResultText}\n\u8bbe\u5907\u7cfb\u7edf\u7248\u672c\uff1a{listSysResultText}\n\u8fde\u63a5\u8fc7\u7684WiFi\uff1a{listWifiResultText}\n"

    const-string v2, "{listAccountResultText}"

    .line 5
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v4, v7, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    move v6, v3

    move-object v7, v4

    .line 7
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v7}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "{listSysResultText}"

    .line 9
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    const/4 v6, 0x4

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v4, v7, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    move v6, v3

    move-object v7, v4

    .line 11
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v7}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "{listDevResultText}"

    .line 13
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v4, v7, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    move v6, v3

    move-object v7, v4

    .line 15
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v7}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const-string v2, "{listMacResultText}"

    .line 17
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    move v6, v3

    move-object v7, v4

    .line 19
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v7}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    const-string v2, "{listWifiResultText}"

    .line 21
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object p1

    const/4 v2, 0x6

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v4, v0, v5}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 23
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/personal/entity/PersonalInfo;

    invoke-virtual {v2}, Lcom/cndatacom/personal/entity/PersonalInfo;->getCryptoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const-string p1, "{listAppResultText}"

    .line 25
    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryPersonalInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "wifi"

    const-string v4, "all"

    .line 1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x31

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_1

    const/16 v10, 0x32

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v9, "2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v8, v11

    goto :goto_0

    :cond_1
    const-string v9, "1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v8, v12

    :cond_2
    :goto_0
    if-eqz v8, :cond_4

    if-eq v8, v11, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x1e

    .line 4
    invoke-direct {v1, v6, v2}, Lcom/cndatacom/personal/PersonalManager;->getDateBefore(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/4 v2, 0x7

    .line 5
    invoke-direct {v1, v6, v2}, Lcom/cndatacom/personal/PersonalManager;->getDateBefore(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v7

    .line 6
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v2, :cond_6

    .line 7
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    if-nez v7, :cond_5

    move-object v9, v8

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v12, v9, v10, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    const-string v9, "account"

    .line 8
    new-instance v10, Ls2/e;

    invoke-direct {v10}, Ls2/e;-><init>()V

    invoke-virtual {v10, v2}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v2, "device"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 10
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v2

    const/4 v9, 0x5

    if-nez v7, :cond_8

    move-object v10, v8

    goto :goto_3

    :cond_8
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v10, v13, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v9

    const/4 v10, 0x4

    if-nez v7, :cond_9

    move-object v13, v8

    goto :goto_4

    :cond_9
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v10, v13, v14, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v10

    const/4 v13, 0x2

    if-nez v7, :cond_a

    move-object v14, v8

    goto :goto_5

    :cond_a
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    :goto_5
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v13

    const/4 v14, 0x3

    if-nez v7, :cond_b

    move-object v15, v8

    goto :goto_6

    :cond_b
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    :goto_6
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v14, v15, v11, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    const-string v13, "sys"

    .line 14
    new-instance v14, Ls2/e;

    invoke-direct {v14}, Ls2/e;-><init>()V

    invoke-virtual {v14, v2}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dev"

    .line 15
    new-instance v13, Ls2/e;

    invoke-direct {v13}, Ls2/e;-><init>()V

    invoke-virtual {v13, v9}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac"

    .line 16
    new-instance v9, Ls2/e;

    invoke-direct {v9}, Ls2/e;-><init>()V

    invoke-virtual {v9, v10}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ip"

    .line 17
    new-instance v9, Ls2/e;

    invoke-direct {v9}, Ls2/e;-><init>()V

    invoke-virtual {v9, v11}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 19
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v0

    if-nez v7, :cond_e

    move-object v2, v8

    goto :goto_7

    :cond_e
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v2, v4, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 20
    new-instance v2, Ls2/e;

    invoke-direct {v2}, Ls2/e;-><init>()V

    invoke-virtual {v2, v0}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/personal/db/PersonalInfoDB;->getPersonalInfoDB(Landroid/content/Context;)Lcom/cndatacom/personal/db/PersonalInfoDB;

    move-result-object v0

    const/4 v2, 0x6

    if-nez v7, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYYMMDDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v8, v3, v12}, Lcom/cndatacom/personal/db/PersonalInfoDB;->listAll(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    const-string v2, "app"

    .line 22
    new-instance v3, Ls2/e;

    invoke-direct {v3}, Ls2/e;-><init>()V

    invoke-virtual {v3, v0}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
