.class public Lu2/c$g;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lu2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/c;->a(Lx2/a;)Lu2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu2/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls2/f;

.field public final synthetic b:Ljava/lang/reflect/Type;

.field public final synthetic c:Lu2/c;


# direct methods
.method public constructor <init>(Lu2/c;Ls2/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lu2/c$g;->c:Lu2/c;

    iput-object p2, p0, Lu2/c$g;->a:Ls2/f;

    iput-object p3, p0, Lu2/c$g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lu2/c$g;->a:Ls2/f;

    iget-object v1, p0, Lu2/c$g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ls2/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
