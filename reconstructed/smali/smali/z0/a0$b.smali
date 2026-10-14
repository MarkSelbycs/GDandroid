.class public Lz0/a0$b;
.super Landroidx/room/o0;
.source "WorkTagDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/a0;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lz0/a0;


# direct methods
.method public constructor <init>(Lz0/a0;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/a0$b;->d:Lz0/a0;

    invoke-direct {p0, p2}, Landroidx/room/o0;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object v0
.end method
