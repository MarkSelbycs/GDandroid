.class public Lz0/k$c;
.super Landroidx/room/o0;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/k;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lz0/k;


# direct methods
.method public constructor <init>(Lz0/k;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/k$c;->d:Lz0/k;

    invoke-direct {p0, p2}, Landroidx/room/o0;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0
.end method
