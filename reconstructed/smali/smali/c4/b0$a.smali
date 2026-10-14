.class public final Lc4/b0$a;
.super Lc4/b0;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/b0;->j(Lc4/t;JLokio/BufferedSource;)Lc4/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc4/t;

.field public final synthetic b:J

.field public final synthetic c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lc4/t;JLokio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lc4/b0$a;->a:Lc4/t;

    iput-wide p2, p0, Lc4/b0$a;->b:J

    iput-object p4, p0, Lc4/b0$a;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lc4/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public h()J
    .locals 2

    iget-wide v0, p0, Lc4/b0$a;->b:J

    return-wide v0
.end method

.method public i()Lc4/t;
    .locals 1

    iget-object v0, p0, Lc4/b0$a;->a:Lc4/t;

    return-object v0
.end method

.method public n()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lc4/b0$a;->c:Lokio/BufferedSource;

    return-object v0
.end method
