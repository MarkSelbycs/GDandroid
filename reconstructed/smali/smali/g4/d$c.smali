.class public Lg4/d$c;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d;->A0(ZIILg4/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lg4/l;

.field public final synthetic f:Lg4/d;


# direct methods
.method public varargs constructor <init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ZIILg4/l;)V
    .locals 0

    iput-object p1, p0, Lg4/d$c;->f:Lg4/d;

    iput-boolean p4, p0, Lg4/d$c;->b:Z

    iput p5, p0, Lg4/d$c;->c:I

    iput p6, p0, Lg4/d$c;->d:I

    iput-object p7, p0, Lg4/d$c;->e:Lg4/l;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lg4/d$c;->f:Lg4/d;

    iget-boolean v1, p0, Lg4/d$c;->b:Z

    iget v2, p0, Lg4/d$c;->c:I

    iget v3, p0, Lg4/d$c;->d:I

    iget-object v4, p0, Lg4/d$c;->e:Lg4/l;

    invoke-static {v0, v1, v2, v3, v4}, Lg4/d;->P(Lg4/d;ZIILg4/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
