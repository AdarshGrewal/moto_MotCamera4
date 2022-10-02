.class public abstract Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;
.super Landroid/os/Binder;
.source "IExtensionEngine.java"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const-string v4, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_22

    const-wide/16 v5, -0x1

    const-string v7, "Extension "

    const-string v8, "clientDeathListener"

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v7, "results"

    .line 7
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->processStream(Ljava/lang/String;I)Z

    move-result v10

    .line 10
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 12
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v7, "inputResult"

    .line 17
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->buildRequest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 20
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    .line 22
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 26
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 27
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string/jumbo v7, "surface"

    .line 28
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->configureStream(Landroid/view/Surface;I)Landroid/view/Surface;

    move-result-object v9

    .line 30
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_4

    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {v9, v2, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 33
    :cond_4
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v3

    .line 34
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 38
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    .line 39
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 41
    :pswitch_4
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 44
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 45
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 46
    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->initialize(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move v10, v3

    goto :goto_7

    .line 47
    :cond_7
    :goto_6
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " failed to initialize"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 50
    :pswitch_5
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 52
    move-object/from16 v4, p0

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 53
    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v9, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->getExtensionConfig()Ljava/lang/String;

    move-result-object v9

    .line 54
    :goto_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    .line 56
    :pswitch_6
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 58
    move-object/from16 v4, p0

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    cmp-long v5, v0, v5

    if-nez v5, :cond_9

    goto :goto_9

    .line 59
    :cond_9
    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_9

    .line 60
    :cond_a
    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->isSupported()Z

    move-result v10

    .line 61
    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 63
    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    move-object/from16 v4, p0

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v8, "name"

    .line 67
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "cameraId"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    const/4 v11, 0x4

    new-array v11, v11, [B

    .line 70
    invoke-virtual {v8, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    aget-byte v8, v11, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    .line 72
    aget-byte v12, v11, v3

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    or-int/2addr v8, v12

    const/4 v12, 0x2

    .line 73
    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    const/4 v12, 0x3

    .line 74
    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v8, v11

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 76
    sget-object v12, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->EXTENSION_MAP:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_b

    .line 77
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 78
    :cond_b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v5, v8

    const/16 v8, 0x20

    shl-long/2addr v5, v8

    shl-long v13, v14, v13

    or-long/2addr v5, v13

    int-to-long v12, v12

    or-long/2addr v5, v12

    .line 79
    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v8

    if-nez v8, :cond_1f

    .line 80
    iget-object v8, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    if-nez v8, :cond_c

    .line 81
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize json config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 82
    :cond_c
    :try_start_1
    iget-object v8, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    const-string v12, "camera"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraManager;

    if-nez v8, :cond_d

    goto :goto_a

    .line 83
    :cond_d
    invoke-virtual {v8, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    .line 84
    :catch_0
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v8, "No access to camera characteristics"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_e

    .line 85
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cannot retrieve camera characteristics"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 86
    :cond_e
    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v12, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    const-string v13, "imagers"

    const/4 v14, -0x1

    .line 87
    invoke-virtual {v8, v13, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    .line 88
    check-cast v8, Lorg/json/JSONArray;

    .line 89
    sget-object v12, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v8, :cond_11

    if-eqz v12, :cond_11

    .line 90
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_11

    move v15, v10

    :goto_c
    add-int/lit8 v9, v15, 0x1

    .line 91
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_e

    :cond_f
    if-lt v9, v13, :cond_10

    goto :goto_d

    :cond_10
    move v15, v9

    const/4 v10, 0x0

    goto :goto_c

    :cond_11
    :goto_d
    move v15, v14

    .line 92
    :goto_e
    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v9, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    const-string v10, "alternate-imager-name"

    .line 93
    invoke-virtual {v8, v10, v9, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    .line 94
    check-cast v8, Lorg/json/JSONArray;

    if-ne v15, v14, :cond_16

    if-eqz v8, :cond_16

    .line 95
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_16

    const/4 v10, 0x0

    :goto_f
    add-int/lit8 v13, v10, 0x1

    .line 96
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_14

    if-ne v15, v14, :cond_14

    .line 98
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_14

    move-object/from16 p1, v8

    const/4 v8, 0x0

    :goto_10
    move/from16 p2, v10

    add-int/lit8 v10, v8, 0x1

    .line 99
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move/from16 v15, p2

    goto :goto_11

    :cond_12
    if-lt v10, v14, :cond_13

    goto :goto_11

    :cond_13
    move v8, v10

    move/from16 v10, p2

    goto :goto_10

    :cond_14
    move-object/from16 p1, v8

    :goto_11
    if-lt v13, v9, :cond_15

    goto :goto_12

    :cond_15
    move-object/from16 v8, p1

    move v10, v13

    const/4 v3, 0x1

    const/4 v14, -0x1

    goto :goto_f

    :cond_16
    :goto_12
    const/4 v3, -0x1

    if-ne v15, v3, :cond_17

    .line 100
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cannot map sensor name to json index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 101
    :cond_17
    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-nez v3, :cond_18

    const/4 v9, 0x0

    goto :goto_13

    .line 102
    :cond_18
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 103
    move-object v9, v3

    check-cast v9, Landroid/util/LongSparseArray;

    :goto_13
    if-nez v9, :cond_19

    .line 104
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "No client reference found, unable to initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 105
    :cond_19
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_15

    :sswitch_0
    const-string v3, "bokeh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_15

    .line 107
    :cond_1a
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_14

    :sswitch_1
    const-string v3, "hdr"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_15

    .line 109
    :cond_1b
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 110
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 111
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 112
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 113
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_14

    :sswitch_2
    const-string v3, "beauty"

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_15

    .line 115
    :cond_1c
    new-instance v0, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    .line 116
    iget-object v4, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v0

    move/from16 v17, v15

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    .line 117
    invoke-direct/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :sswitch_3
    const-string/jumbo v3, "supernight"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_15

    .line 119
    :cond_1d
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 120
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 121
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    iget-object v3, v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 122
    :cond_1e
    :goto_14
    invoke-virtual {v9, v5, v6, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_17

    .line 123
    :goto_15
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not implemented"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 124
    :catch_1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get an number from the cameraId: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const-wide/16 v5, -0x1

    .line 125
    :cond_1f
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    return v0

    .line 127
    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 129
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 130
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 132
    iget-object v3, v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 133
    invoke-virtual {v1, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->removeApp(I)V

    goto :goto_18

    .line 134
    :cond_20
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "App already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    .line 136
    :pswitch_9
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 140
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 142
    iget-object v4, v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    .line 143
    new-instance v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;

    invoke-direct {v4, v1, v3}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;-><init>(ILcom/motorola/camera/camerax_extensions/ExtensionEngine;)V

    const/4 v5, 0x0

    .line 144
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 145
    iget-object v0, v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    new-instance v3, Lkotlin/Pair;

    .line 146
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 147
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 148
    :cond_21
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "App registration already exists "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :cond_22
    move v0, v3

    .line 150
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        -0x659a9683 -> :sswitch_3
        -0x5307ef84 -> :sswitch_2
        0x192f6 -> :sswitch_1
        0x59912e1 -> :sswitch_0
    .end sparse-switch
.end method
