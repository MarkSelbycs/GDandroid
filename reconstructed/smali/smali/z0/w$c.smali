.class public Lz0/w$c;
.super Landroidx/room/o0;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/w;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lz0/w;


# direct methods
.method public constructor <init>(Lz0/w;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/w$c;->d:Lz0/w;

    invoke-direct {p0, p2}, Landroidx/room/o0;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    return-object v0
.end method
