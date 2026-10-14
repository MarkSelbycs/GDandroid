.class public interface abstract Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;
.super Ljava/lang/Object;
.source "PermissionCheckerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionEvent"
.end annotation


# virtual methods
.method public abstract checkPermission(I[Ljava/lang/String;)Z
.end method

.method public abstract finish(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract needRemind(I[Ljava/lang/String;)Z
.end method

.method public abstract requestPermissions(I[Ljava/lang/String;)V
.end method
