.class public final enum Lb1/b;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/b;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lb1/b;

.field public static final synthetic b:[Lb1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb1/b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb1/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb1/b;->a:Lb1/b;

    .line 2
    invoke-static {}, Lb1/b;->b()[Lb1/b;

    move-result-object v0

    sput-object v0, Lb1/b;->b:[Lb1/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lb1/b;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lb1/b;

    sget-object v1, Lb1/b;->a:Lb1/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/b;
    .locals 1

    const-class v0, Lb1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/b;

    return-object p0
.end method

.method public static values()[Lb1/b;
    .locals 2

    sget-object v0, Lb1/b;->b:[Lb1/b;

    invoke-virtual {v0}, [Lb1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/b;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectExecutor"

    return-object v0
.end method
