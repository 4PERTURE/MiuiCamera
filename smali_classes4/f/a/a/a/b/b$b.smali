.class public abstract Lf/a/a/a/b/b$b;
.super Landroid/os/HwBinder;
.source "IMiSys.java"

# interfaces
.implements Lf/a/a/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()La/b/a/a/a;
    .locals 2

    .line 1
    new-instance p0, La/b/a/a/a;

    invoke-direct {p0}, La/b/a/a/a;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, La/b/a/a/a;->pid:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, La/b/a/a/a;->ptr:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/b/a/a/a;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x24t
        0x47t
        0x3ft
        0x33t
        0x7t
        -0x4dt
        -0x3bt
        -0x1bt
        0x6dt
        0xet
        0x5at
        0x4bt
        0x67t
        0x19t
        0x6dt
        -0x45t
        -0x55t
        0x64t
        0x75t
        -0x36t
        0x4at
        -0x59t
        -0x4bt
        -0x7et
        0x6bt
        -0x1dt
        0x6dt
        -0xbt
        -0x4ct
        -0x20t
        -0x25t
        -0x29t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_17

    const/4 v4, 0x4

    if-eq p1, v4, :cond_14

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_20

    .line 1
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    .line 3
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 5
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->notifySyspropsChanged()V

    goto/16 :goto_b

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 9
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->getDebugInfo()La/b/a/a/a;

    move-result-object p0

    .line 11
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12
    invoke-virtual {p0, p3}, La/b/a/a/a;->writeToParcel(Landroid/os/HwParcel;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 15
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 16
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->ping()V

    .line 18
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 19
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_20

    .line 20
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 21
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-eq v2, v3, :cond_9

    .line 22
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 23
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 24
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->setHALInstrumentation()V

    goto/16 :goto_b

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    .line 26
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 27
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 28
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 30
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 31
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 35
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v2, p2, :cond_d

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 36
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_c

    .line 37
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    .line 38
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-wide/16 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 41
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    .line 43
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 44
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 45
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 52
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lf/a/a/a/b/b$b;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 57
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    if-eqz v3, :cond_13

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 60
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 63
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :cond_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_7

    :cond_15
    move v3, v2

    :goto_7
    if-eqz v3, :cond_16

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 67
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-interface {p0, p1, p2}, Lf/a/a/a/b/b;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 72
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 73
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    :cond_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18

    goto :goto_8

    :cond_18
    move v3, v2

    :goto_8
    if-eqz v3, :cond_19

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b

    .line 76
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-interface {p0, p1, p2}, Lf/a/a/a/b/b;->g(Ljava/lang/String;Ljava/lang/String;)Lf/a/a/a/b/a;

    move-result-object p0

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 81
    invoke-virtual {p0, p3}, Lf/a/a/a/b/a;->writeToParcel(Landroid/os/HwParcel;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_b

    :cond_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    goto :goto_9

    :cond_1b
    move v3, v2

    :goto_9
    if-eqz v3, :cond_1c

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_b

    .line 85
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v7

    .line 89
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v8

    move-object v4, p0

    .line 90
    invoke-interface/range {v4 .. v9}, Lf/a/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)I

    move-result p0

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 92
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_b

    :cond_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e

    goto :goto_a

    :cond_1e
    move v3, v2

    :goto_a
    if-eqz v3, :cond_1f

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_b

    .line 96
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-interface {p0, p1, p2}, Lf/a/a/a/b/b;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 101
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_20
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/a/a/a/b/b$b;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
