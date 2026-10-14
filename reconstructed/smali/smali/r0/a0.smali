.class public final Lr0/a0;
.super Ljava/lang/Object;
.source "StartStopToken.kt"


# instance fields
.field public final a:Lz0/m;


# direct methods
.method public constructor <init>(Lz0/m;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a0;->a:Lz0/m;

    return-void
.end method


# virtual methods
.method public final a()Lz0/m;
    .locals 1

    iget-object v0, p0, Lr0/a0;->a:Lz0/m;

    return-object v0
.end method
