.class public Landroidx/work/multiprocess/parcelable/ParcelableData;
.super Ljava/lang/Object;
.source "ParcelableData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:B = 0x1t

.field private static final TYPE_BOOLEAN_ARRAY:B = 0x8t

.field private static final TYPE_BYTE:B = 0x2t

.field private static final TYPE_BYTE_ARRAY:B = 0x9t

.field private static final TYPE_DOUBLE:B = 0x6t

.field private static final TYPE_DOUBLE_ARRAY:B = 0xdt

.field private static final TYPE_FLOAT:B = 0x5t

.field private static final TYPE_FLOAT_ARRAY:B = 0xct

.field private static final TYPE_INTEGER:B = 0x3t

.field private static final TYPE_INTEGER_ARRAY:B = 0xat

.field private static final TYPE_LONG:B = 0x4t

.field private static final TYPE_LONG_ARRAY:B = 0xbt

.field private static final TYPE_NULL:B = 0x0t

.field private static final TYPE_STRING:B = 0x7t

.field private static final TYPE_STRING_ARRAY:B = 0xet


# instance fields
.field private final mData:Landroidx/work/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableData$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableData;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroidx/work/b;

    invoke-direct {p1, v0}, Landroidx/work/b;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->c([D)[Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->d([F)[Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->f([J)[Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->e([I)[Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->b([B)[Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->a([Z)[Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 14
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 15
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 17
    :pswitch_d
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/b;

    return-object v0
.end method

.method public final c(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 6
    invoke-static {p1, p3}, Le1/b;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 7
    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    .line 10
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 11
    :cond_2
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 14
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    check-cast p3, Ljava/lang/Long;

    .line 18
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 19
    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 22
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 23
    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 27
    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    check-cast p3, Ljava/lang/String;

    .line 30
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :cond_7
    const-class v1, [Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    check-cast p3, [Ljava/lang/Boolean;

    .line 34
    invoke-static {p3}, Landroidx/work/b;->l([Ljava/lang/Boolean;)[Z

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 35
    :cond_8
    const-class v1, [Ljava/lang/Byte;

    if-ne v0, v1, :cond_9

    const/16 v0, 0x9

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    check-cast p3, [Ljava/lang/Byte;

    .line 38
    invoke-static {p3}, Landroidx/work/b;->g([Ljava/lang/Byte;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 39
    :cond_9
    const-class v1, [Ljava/lang/Integer;

    if-ne v0, v1, :cond_a

    const/16 v0, 0xa

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    check-cast p3, [Ljava/lang/Integer;

    .line 42
    invoke-static {p3}, Landroidx/work/b;->j([Ljava/lang/Integer;)[I

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 43
    :cond_a
    const-class v1, [Ljava/lang/Long;

    if-ne v0, v1, :cond_b

    const/16 v0, 0xb

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    check-cast p3, [Ljava/lang/Long;

    .line 46
    invoke-static {p3}, Landroidx/work/b;->k([Ljava/lang/Long;)[J

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_0

    .line 47
    :cond_b
    const-class v1, [Ljava/lang/Float;

    if-ne v0, v1, :cond_c

    const/16 v0, 0xc

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    check-cast p3, [Ljava/lang/Float;

    .line 50
    invoke-static {p3}, Landroidx/work/b;->i([Ljava/lang/Float;)[F

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_0

    .line 51
    :cond_c
    const-class v1, [Ljava/lang/Double;

    if-ne v0, v1, :cond_d

    const/16 v0, 0xd

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    check-cast p3, [Ljava/lang/Double;

    .line 54
    invoke-static {p3}, Landroidx/work/b;->h([Ljava/lang/Double;)[D

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_0

    .line 55
    :cond_d
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_e

    const/16 v0, 0xe

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    check-cast p3, [Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported value type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/b;

    invoke-virtual {p2}, Landroidx/work/b;->n()Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableData;->c(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
