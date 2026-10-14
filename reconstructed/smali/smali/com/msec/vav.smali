.class public final Lcom/msec/vav;
.super Ljava/lang/Object;
.source "com/msec/vav.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
