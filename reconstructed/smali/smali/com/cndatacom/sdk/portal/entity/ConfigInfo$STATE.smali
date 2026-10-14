.class public final Lcom/cndatacom/sdk/portal/entity/ConfigInfo$STATE;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STATE"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final ONLINE:I = 0x2

.field public static final ONTERMED:I = 0x4

.field public static final ONTERMING:I = 0x3

.field public static final TICKET:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
