.class public final synthetic Lv3/c$a;
.super Lm3/j;
.source "BufferedChannel.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/c;->y()Lq3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/j;",
        "Ll3/p<",
        "Ljava/lang/Long;",
        "Lv3/i<",
        "TE;>;",
        "Lv3/i<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field public static final o:Lv3/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/c$a;

    invoke-direct {v0}, Lv3/c$a;-><init>()V

    sput-object v0, Lv3/c$a;->o:Lv3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lv3/c;

    const/4 v1, 0x2

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lm3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final I(JLv3/i;)Lv3/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lv3/c;->c(JLv3/i;)Lv3/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lv3/i;

    invoke-virtual {p0, v0, v1, p2}, Lv3/c$a;->I(JLv3/i;)Lv3/i;

    move-result-object p1

    return-object p1
.end method
