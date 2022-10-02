.class public Lcom/motorola/camera/analytics/CameraSwitchEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "CameraSwitchEvent.java"


# static fields
.field public static sSwitchTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "TOUCH"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "GSTR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "AOV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method

.method public static getModeIdForAnalytics(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x19

    return p0

    :pswitch_8
    const/16 p0, 0x14

    return p0

    :pswitch_9
    const/16 p0, 0x13

    return p0

    :pswitch_a
    const/16 p0, 0x12

    return p0

    :pswitch_b
    const/16 p0, 0x11

    return p0

    :pswitch_c
    const/16 p0, 0x10

    return p0

    :pswitch_d
    const/16 p0, 0x17

    return p0

    :pswitch_e
    const/16 p0, 0xc

    return p0

    :pswitch_f
    const/16 p0, 0xa

    return p0

    :pswitch_10
    const/16 p0, 0x9

    return p0

    :pswitch_11
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x7

    return p0

    :pswitch_13
    const/4 p0, 0x6

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    :pswitch_18
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_18
        :pswitch_18
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p3, Landroid/os/Bundle;

    const-string p0, "SRC_CAM"

    .line 2
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "SRCCAM"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "SRC_MODE"

    .line 4
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/analytics/CameraSwitchEvent;->getModeIdForAnalytics(I)I

    move-result p0

    const-string v0, "SRCMODE"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p0, "DEST_CAM"

    .line 6
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "DESTCAM"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string p0, "DEST_MODE"

    .line 8
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/analytics/CameraSwitchEvent;->getModeIdForAnalytics(I)I

    move-result p0

    const-string v0, "DESTMODE"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p0, "SWITCHTIME"

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 11
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    const-string v1, "SWITCH_TYPE"

    .line 12
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 13
    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "SWITCHTRIGGER"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->remove(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.7"

    return-object p0
.end method
