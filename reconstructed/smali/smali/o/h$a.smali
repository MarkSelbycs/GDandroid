.class public Lo/h$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lo/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/h;->f([Lt/g$b;I)Lt/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h$b<",
        "Lt/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lo/h;


# direct methods
.method public constructor <init>(Lo/h;)V
    .locals 0

    iput-object p1, p0, Lo/h$a;->a:Lo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt/g$b;

    invoke-virtual {p0, p1}, Lo/h$a;->c(Lt/g$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lt/g$b;

    invoke-virtual {p0, p1}, Lo/h$a;->d(Lt/g$b;)Z

    move-result p1

    return p1
.end method

.method public c(Lt/g$b;)I
    .locals 0

    invoke-virtual {p1}, Lt/g$b;->e()I

    move-result p1

    return p1
.end method

.method public d(Lt/g$b;)Z
    .locals 0

    invoke-virtual {p1}, Lt/g$b;->f()Z

    move-result p1

    return p1
.end method
