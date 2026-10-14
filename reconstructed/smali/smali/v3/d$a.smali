.class public final Lv3/d$a;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lv3/d$a;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv3/d$a;

    invoke-direct {v0}, Lv3/d$a;-><init>()V

    sput-object v0, Lv3/d$a;->a:Lv3/d$a;

    const-string v0, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v1, 0x40

    const/4 v2, 0x1

    const v3, 0x7ffffffe

    invoke-static {v0, v1, v2, v3}, Ly3/i0;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lv3/d$a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lv3/d$a;->b:I

    return v0
.end method
