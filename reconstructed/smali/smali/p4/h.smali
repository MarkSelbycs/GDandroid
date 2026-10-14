.class public Lp4/h;
.super Lp4/a;
.source "AuthSHA.java"


# static fields
.field public static final h:Lr4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/j;

    sget-object v1, Lo4/m;->c:Lr4/j;

    invoke-direct {v0, v1}, Lr4/j;-><init>(Lr4/j;)V

    sput-object v0, Lp4/h;->h:Lr4/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "SHA-1"

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lp4/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Lr4/j;
    .locals 1

    sget-object v0, Lp4/h;->h:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method
