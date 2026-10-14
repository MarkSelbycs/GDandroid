.class public final Lq0/p;
.super Lq0/k;
.source "InputMergerFactory.kt"


# static fields
.field public static final a:Lq0/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq0/p;

    invoke-direct {v0}, Lq0/p;-><init>()V

    sput-object v0, Lq0/p;->a:Lq0/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Lq0/j;
    .locals 0

    invoke-virtual {p0, p1}, Lq0/p;->c(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Lq0/j;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
