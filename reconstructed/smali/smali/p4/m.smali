.class public Lp4/m;
.super Lp4/p;
.source "PrivAES128.java"


# static fields
.field public static final i:Lr4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/j;

    const-string v1, "1.3.6.1.6.3.10.1.2.4"

    invoke-direct {v0, v1}, Lr4/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp4/m;->i:Lr4/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lp4/p;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lr4/j;
    .locals 1

    sget-object v0, Lp4/m;->i:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method
