.class public Lg4/d$j$b;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d$j;->k(ZLg4/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/d$j;


# direct methods
.method public varargs constructor <init>(Lg4/d$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg4/d$j$b;->b:Lg4/d$j;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lg4/d$j$b;->b:Lg4/d$j;

    iget-object v0, v0, Lg4/d$j;->c:Lg4/d;

    invoke-static {v0}, Lg4/d;->s(Lg4/d;)Lg4/d$i;

    move-result-object v0

    iget-object v1, p0, Lg4/d$j$b;->b:Lg4/d$j;

    iget-object v1, v1, Lg4/d$j;->c:Lg4/d;

    invoke-virtual {v0, v1}, Lg4/d$i;->b(Lg4/d;)V

    return-void
.end method
