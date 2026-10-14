.class public final Lb4/c$a;
.super Lm3/l;
.source "Select.kt"

# interfaces
.implements Ll3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final b:Lb4/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb4/c$a;

    invoke-direct {v0}, Lb4/c$a;-><init>()V

    sput-object v0, Lb4/c$a;->b:Lb4/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lb4/c$a;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
