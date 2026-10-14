.class public Lcom/cndatacom/sdk/portal/util/ContextUtil;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/cndatacom/sdk/portal/util/ContextUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/cndatacom/sdk/portal/util/ContextUtil;->mContext:Landroid/content/Context;

    return-void
.end method
