.class public Lg4/d$b;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d;->D0(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lg4/d;


# direct methods
.method public varargs constructor <init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, Lg4/d$b;->d:Lg4/d;

    iput p4, p0, Lg4/d$b;->b:I

    iput-wide p5, p0, Lg4/d$b;->c:J

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg4/d$b;->d:Lg4/d;

    iget-object v0, v0, Lg4/d;->y:Lg4/c;

    iget v1, p0, Lg4/d$b;->b:I

    iget-wide v2, p0, Lg4/d$b;->c:J

    invoke-interface {v0, v1, v2, v3}, Lg4/c;->b(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
