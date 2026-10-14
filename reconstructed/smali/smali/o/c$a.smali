.class public Lo/c$a;
.super Lt/g$c;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ln/d$a;


# direct methods
.method public constructor <init>(Ln/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt/g$c;-><init>()V

    .line 2
    iput-object p1, p0, Lo/c$a;->a:Ln/d$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/c$a;->a:Ln/d$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln/d$a;->h(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/c$a;->a:Ln/d$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln/d$a;->i(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
