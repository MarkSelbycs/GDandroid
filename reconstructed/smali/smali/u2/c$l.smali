.class public Lu2/c$l;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lu2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lu2/h;
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
.field public final synthetic a:Lu2/c;


# direct methods
.method public constructor <init>(Lu2/c;)V
    .locals 0

    iput-object p1, p0, Lu2/c$l;->a:Lu2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
