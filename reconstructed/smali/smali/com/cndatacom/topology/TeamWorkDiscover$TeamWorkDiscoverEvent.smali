.class public interface abstract Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;
.super Ljava/lang/Object;
.source "TeamWorkDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/topology/TeamWorkDiscover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TeamWorkDiscoverEvent"
.end annotation


# virtual methods
.method public abstract doNeighbourTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract doRouterTask(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract giveup(I)V
.end method

.method public abstract isDiscovered(ILjava/lang/String;)Z
.end method

.method public abstract sendTeamWorkMsgFinished(ILjava/lang/String;)V
.end method
