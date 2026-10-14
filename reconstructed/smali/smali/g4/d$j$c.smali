.class public Lg4/d$j$c;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d$j;->e(Lg4/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/n;

.field public final synthetic c:Lg4/d$j;


# direct methods
.method public varargs constructor <init>(Lg4/d$j;Ljava/lang/String;[Ljava/lang/Object;Lg4/n;)V
    .locals 0

    iput-object p1, p0, Lg4/d$j$c;->c:Lg4/d$j;

    iput-object p4, p0, Lg4/d$j$c;->b:Lg4/n;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg4/d$j$c;->c:Lg4/d$j;

    iget-object v0, v0, Lg4/d$j;->c:Lg4/d;

    iget-object v0, v0, Lg4/d;->y:Lg4/c;

    iget-object v1, p0, Lg4/d$j$c;->b:Lg4/n;

    invoke-interface {v0, v1}, Lg4/c;->L(Lg4/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
