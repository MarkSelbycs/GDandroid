.class public Lg4/d$a;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d;->C0(ILg4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lg4/a;

.field public final synthetic d:Lg4/d;


# direct methods
.method public varargs constructor <init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILg4/a;)V
    .locals 0

    iput-object p1, p0, Lg4/d$a;->d:Lg4/d;

    iput p4, p0, Lg4/d$a;->b:I

    iput-object p5, p0, Lg4/d$a;->c:Lg4/a;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg4/d$a;->d:Lg4/d;

    iget v1, p0, Lg4/d$a;->b:I

    iget-object v2, p0, Lg4/d$a;->c:Lg4/a;

    invoke-virtual {v0, v1, v2}, Lg4/d;->B0(ILg4/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
