.class public interface abstract Lf0/g;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract B()Z
.end method

.method public abstract D(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract J()V
.end method

.method public abstract O(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract S(Ljava/lang/String;)Lf0/k;
.end method

.method public abstract T()V
.end method

.method public abstract U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract k()V
.end method

.method public abstract m()V
.end method

.method public abstract o0(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract q0()Ljava/lang/String;
.end method

.method public abstract s0()Z
.end method

.method public abstract t(Lf0/j;)Landroid/database/Cursor;
.end method

.method public abstract v()Z
.end method

.method public abstract w()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
