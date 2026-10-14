.class public Lp0/c$a;
.super Ljava/lang/Object;
.source "WebViewGlueCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lp0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lp0/c;->a()Lp0/d;

    move-result-object v0

    sput-object v0, Lp0/c$a;->a:Lp0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
